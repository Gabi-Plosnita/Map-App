import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';
import 'package:gem_kit/api/gem_mapviewrendersettings.dart';
import 'package:gem_kit/api/gem_routingservice.dart';
import 'package:gem_kit/api/gem_searchservice.dart';
import 'package:gem_kit/api/gem_types.dart';
import 'package:gem_kit/gem_kit_basic.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';
import 'package:map_app/SearchPage/search_page.dart';

class LandmarkRepositoryImpl implements LandmarkRepository {
  final GemMapController _mapController;

  late SearchService _searchService;

  LandmarkRepositoryImpl({required GemMapController mapController})
      : _mapController = mapController {
    SearchService.create(_mapController.mapId)
        .then((service) => _searchService = service);
  }

  @override
  Future<List<Landmark>> searchByText(
    String text,
    Coordinates coordinates,
  ) async {
    var completer = Completer<List<Landmark>>();

    _searchService.search(text, coordinates, (err, results) async {
      if (err != GemError.success || results == null) {
        completer.complete([]);
        return;
      }
      final size = await results.size();
      List<Landmark> searchResults = [];

      for (int i = 0; i < size; i++) {
        final gemLmk = await results.at(i);

        searchResults.add(gemLmk);
      }

      if (!completer.isCompleted) completer.complete(searchResults);
    });

    final result = await completer.future;

    return result;
  }

  @override
  Future<void> centerOnCoordinates(Coordinates coordinates) async {
    await _mapController.centerOnCoordinates(coordinates,
        viewAngle: 0,
        xy: XyType(
            x: _mapController.viewport.width ~/ 2,
            y: _mapController.viewport.height ~/ 2));
  }

  @override
  Future<Landmark?> selectLandmarkByScreenCoordinates(
      Point<num> position) async {
    // Select the object at the tap position.
    await _mapController.selectMapObjects(position);

    // Get the selected landmarks.
    final landmarks = await _mapController.cursorSelectionLandmarks();

    final landmarksSize = await landmarks.size();

    // Check if there is a selected Landmark.
    if (landmarksSize == 0) return null;

    // Highlight the landmark on the map.
    _mapController.activateHighlight(landmarks);

    final lmk = await landmarks.at(0);

    return lmk;
  }

  @override
  void unhighlightLandmark() {
    _mapController.deactivateAllHighlights();
  }

  // Search Functions //

  // Future<void> onSearchBarPressed(BuildContext context) async {
  //   // Taking the coordinates at the center of the screen as reference coordinates for search.
  //   final x = MediaQuery.of(context).size.width / 2;
  //   final y = MediaQuery.of(context).size.height / 2;
  //   final mapCoords =
  //       _mapController.transformScreenToWgs(XyType(x: x.toInt(), y: y.toInt()));

  //   // Navigating to search screen. The result will be the selected search result(Landmark)
  //   final result = await Navigator.of(context).push(MaterialPageRoute(
  //     builder: (context) => SearchPage(),
  //   ));

  //   // Creating a list of landmarks to highlight.
  //   LandmarkList landmarkList = await LandmarkList.create(_mapController.mapId);

  //   if (result is! Landmark) {
  //     return;
  //   }

  //   // Adding the result to the landmark list.
  //   await landmarkList.push_back(result);
  //   final coords = result.getCoordinates();

  //   // Activating the highlight
  //   await _mapController.activateHighlight(landmarkList,
  //       renderSettings: RenderSettings());

  //   // Centering the map on the desired coordinates
  //   await _mapController.centerOnCoordinates(coords);
  // }
}
