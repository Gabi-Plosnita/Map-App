import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';
import 'package:gem_kit/api/gem_mapviewpreferences.dart';
import 'package:gem_kit/api/gem_searchservice.dart';
import 'package:gem_kit/api/gem_types.dart';
import 'package:gem_kit/gem_kit_basic.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:gem_kit/gem_kit_position.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';
import 'package:map_app/InjectionContainer/repositories_impl/landmark_info.dart';
import 'package:map_app/InjectionContainer/repositories_impl/utility_functions.dart';
import 'package:map_app/Routes/routes_name.dart';
import 'package:permission_handler/permission_handler.dart';

class LandmarkRepositoryImpl implements LandmarkRepository {
  final GemMapController _mapController;

  late SearchService _searchService;

  late PositionService _positionService;
  late PermissionStatus _locationPermissionStatus = PermissionStatus.denied;
  late bool _hasLiveDataSource = false;

  Coordinates? _currentCoordinates;

  LandmarkRepositoryImpl({required GemMapController mapController})
      : _mapController = mapController;

  @override
  Future<void> initServices() async {
    await SearchService.create(_mapController.mapId)
        .then((service) => _searchService = service);
    await PositionService.create(_mapController.mapId)
        .then((service) => _positionService = service);
    await _positionService.addPositionListener((pos) {
      _currentCoordinates = pos.coordinates;
    });
  }

  @override
  Future<void> centerOnCoordinates(Coordinates coordinates) async {
    final animation = GemAnimation(type: EAnimation.AnimationLinear);
    await _mapController.centerOnCoordinates(coordinates,
        viewAngle: 0,
        xy: XyType(
            x: _mapController.viewport.width ~/ 2,
            y: _mapController.viewport.height ~/ 2),
        animation: animation);
  }

  @override
  Future<LandmarkInfo?> selectLandmarkByScreenCoordinates(
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

    return _getLandmarkInfo(lmk);
  }

  @override
  void unhighlightLandmark() {
    _mapController.deactivateAllHighlights();
  }

  Future<LandmarkInfo> _getLandmarkInfo(Landmark landmark) async {
    final data = landmark.getImage(100, 100);
    final image = await decodeImageData(data);
    double distance = (_currentCoordinates == null)
        ? 0
        : ((landmark.getCoordinates().distance(_currentCoordinates!)) ~/ 100) /
            10;
    return LandmarkInfo(
        name: landmark.getName(),
        coordinates: landmark.getCoordinates(),
        image: image,
        distanceToLandmark: distance);
  }

  // Search functions //

  @override
  Future<List<LandmarkInfo>> searchByText(String text) async {
    var completer = Completer<List<LandmarkInfo>>();

    // Current screen coordinates //
    final coordinates = _mapController.transformScreenToWgs(XyType(
      x: _mapController.viewport.width ~/ 2,
      y: _mapController.viewport.height ~/ 2,
    ));

    _searchService.search(text, coordinates!, (err, results) async {
      if (err != GemError.success || results == null) {
        completer.complete([]);
        return;
      }
      final size = await results.size();
      List<LandmarkInfo> searchResults = [];

      for (int i = 0; i < size; i++) {
        final gemLmk = await results.at(i);

        final lamdmarkInfo = await _getLandmarkInfo(gemLmk);

        searchResults.add(lamdmarkInfo);
      }

      if (!completer.isCompleted) completer.complete(searchResults);
    });

    final result = await completer.future;

    return result;
  }

  @override
  Future<LandmarkInfo?> onSearchBarPressed(BuildContext context) async {
    final result = await Navigator.pushNamed(context, searchPage);

    if (result is! LandmarkInfo) {
      return null;
    }
    Coordinates coordinates = result.coordinates!;
    final animation = GemAnimation(type: EAnimation.AnimationLinear);
    await _mapController.centerOnCoordinates(coordinates, animation: animation);
    return result;
  }

  // Follow Position //
  @override
  Future<void> followPosition() async {
    if (kIsWeb) {
      _locationPermissionStatus = PermissionStatus.granted;
    } else {
      _locationPermissionStatus = await Permission.locationWhenInUse.request();
    }

    if (_locationPermissionStatus != PermissionStatus.granted) {
      return;
    }

    if (!_hasLiveDataSource) {
      _positionService.removeDataSource();
      _positionService.setLiveDataSource();
      _hasLiveDataSource = true;
    }

    if (_locationPermissionStatus == PermissionStatus.granted) {
      final animation = GemAnimation(type: EAnimation.AnimationLinear);
      _mapController.startFollowingPosition(animation: animation);
    }
  }
}
