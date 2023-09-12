import 'dart:async';
import 'dart:math';

import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';
import 'package:gem_kit/api/gem_searchservice.dart';
import 'package:gem_kit/api/gem_types.dart';
import 'package:gem_kit/gem_kit_basic.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';

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
}
