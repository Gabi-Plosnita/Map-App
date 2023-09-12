import 'package:flutter/foundation.dart';
import 'package:gem_kit/api/gem_mapviewpreferences.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:gem_kit/gem_kit_position.dart';
import 'package:map_app/InjectionContainer/repositories/position_repository.dart';
import 'package:permission_handler/permission_handler.dart';

class PositionRepositoryImpl implements PositionRepository{
  final GemMapController _mapController;
  late PositionService _positionService;

  late PermissionStatus _locationPermissionStatus = PermissionStatus.denied;
  late bool _hasLiveDataSource = false;

   PositionRepositoryImpl({required GemMapController mapController})
      : _mapController = mapController {
    PositionService.create(_mapController.mapId)
        .then((service) => _positionService = service);
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