import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';
import 'package:gem_kit/api/gem_mapviewpreferences.dart';
import 'package:gem_kit/api/gem_searchservice.dart';
import 'package:gem_kit/gem_kit_basic.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:gem_kit/gem_kit_position.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';
import 'package:permission_handler/permission_handler.dart';

class LandmarkRepositoryImpl implements LandmarkRepository {
  final GemMapController _mapController;

  late SearchService _searchService;
  late PositionService _positionService;

  late PermissionStatus _locationPermissionStatus = PermissionStatus.denied;
  late bool _hasLiveDataSource = false;

  LandmarkRepositoryImpl({required GemMapController mapController}) : _mapController = mapController{
    SearchService.create(_mapController.mapId).then((service) => _searchService = service);
    PositionService.create(_mapController.mapId).then((service) => _positionService = service);
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
  Future<void> centerOnCoordinates(Coordinates coordinates) async{
    await _mapController.centerOnCoordinates(coordinates);
  }

  @override
  Future<Landmark?> selectLandmarkByScreenCoordinates(Point<num> position) async {

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
  Future<void> followPosition() async {

     if (kIsWeb) {
      // On web platform permission are handled differently than other platforms.
      // The SDK handles the request of permission for location
      _locationPermissionStatus = PermissionStatus.granted;
    } else {
      // For Android & iOS platforms, permission_handler package is used to ask for permissions
      _locationPermissionStatus = await Permission.locationWhenInUse.request();
    }

    if (_locationPermissionStatus != PermissionStatus.granted) {
      return;
    }

    // After the permission was granted, we can set the live data source (in most cases the GPS)
    // The data source should be set only once, otherwise we'll get -5 error
    if (!_hasLiveDataSource) {
      _positionService.removeDataSource();
      _positionService.setLiveDataSource();
      _hasLiveDataSource = true;
    }

    // After data source is set, startFollowingPosition can be safely called
    if (_locationPermissionStatus == PermissionStatus.granted) {
      // Optionally, we can set an animation
      final animation = GemAnimation(type: EAnimation.AnimationLinear);

      _mapController.startFollowingPosition(animation: animation);
    }
  }
}
