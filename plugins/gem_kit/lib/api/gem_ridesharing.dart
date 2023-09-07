// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "dart:core";
import "dart:typed_data";

import "package:gem_kit/api/gem_progresslistener.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_navigationservice.dart";
import "gem_vrp.dart" as Vrp;
import "gem_types.dart";
import "gem_routingpreferences.dart";
import "gem_landmark.dart";
import "dart:convert";
import "gem_routingservice.dart";

enum EDriverStatus {
  DS_Logout,
  DS_Registering,
  DS_Idle,
  DS_WaitingInternetConnection,
  DS_Configuring,
  DS_Picking,
  DS_ValidateRider,
  DS_Delivering,
  DS_Error,
}

extension EDriverStatusExtension on EDriverStatus {
  int get id {
    switch (this) {
      case EDriverStatus.DS_Logout:
        return 0;
      case EDriverStatus.DS_Registering:
        return 1;
      case EDriverStatus.DS_Idle:
        return 2;
      case EDriverStatus.DS_WaitingInternetConnection:
        return 3;
      case EDriverStatus.DS_Configuring:
        return 4;
      case EDriverStatus.DS_Picking:
        return 5;
      case EDriverStatus.DS_ValidateRider:
        return 6;
      case EDriverStatus.DS_Delivering:
        return 7;
      case EDriverStatus.DS_Error:
        return 8;
      default:
        return -1;
    }
  }

  static EDriverStatus fromId(int id) {
    switch (id) {
      case 0:
        return EDriverStatus.DS_Logout;
      case 1:
        return EDriverStatus.DS_Registering;
      case 2:
        return EDriverStatus.DS_Idle;
      case 3:
        return EDriverStatus.DS_WaitingInternetConnection;
      case 4:
        return EDriverStatus.DS_Configuring;
      case 5:
        return EDriverStatus.DS_Picking;
      case 6:
        return EDriverStatus.DS_ValidateRider;
      case 7:
        return EDriverStatus.DS_Delivering;
      case 8:
        return EDriverStatus.DS_Error;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERiderStatus {
  RS_Logout,
  RS_Idle,
  RS_WaitingInternetConnection,
  RS_WaitAccept,
  RS_WaitPickup,
  RS_Running,
  RS_Error,
}

class RideList {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  RideList()
      : _id = -1,
        _mapId = -1;
  RideList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  static Future<RideList> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "RideList"}));
    final decodedVal = jsonDecode(resultString!);
    return RideList.init(decodedVal['result'], mapId);
  }

  Future<int> size() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RideList",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Ride> at(int position) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RideList",
                'method': "at",
                'args': position
              }));
      final decodedVal = jsonDecode(resultString!);
      return Ride.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> push_back(Ride landmmark) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RideList",
                'method': "push_back",
                'args': landmmark.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  void dispose() {
    GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "RideList", 'id': _id}));
  }
}

extension ERiderStatusExtension on ERiderStatus {
  int get id {
    switch (this) {
      case ERiderStatus.RS_Logout:
        return 0;
      case ERiderStatus.RS_Idle:
        return 1;
      case ERiderStatus.RS_WaitingInternetConnection:
        return 2;
      case ERiderStatus.RS_WaitAccept:
        return 3;
      case ERiderStatus.RS_WaitPickup:
        return 4;
      case ERiderStatus.RS_Running:
        return 5;
      case ERiderStatus.RS_Error:
        return 6;
      default:
        return -1;
    }
  }

  static ERiderStatus fromId(int id) {
    switch (id) {
      case 0:
        return ERiderStatus.RS_Logout;
      case 1:
        return ERiderStatus.RS_Idle;
      case 2:
        return ERiderStatus.RS_WaitingInternetConnection;
      case 3:
        return ERiderStatus.RS_WaitAccept;
      case 4:
        return ERiderStatus.RS_WaitPickup;
      case 5:
        return ERiderStatus.RS_Running;
      case 6:
        return ERiderStatus.RS_Error;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class DriverPreferences {
  String? fleetEngineUrl;
  Vrp.Vehicle? vehicle;
  RoutePreferences? routePrefs;
  DriverPreferences({
    this.fleetEngineUrl,
    this.vehicle,
    this.routePrefs,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (fleetEngineUrl != null) {
      json['fleetEngineUrl'] = fleetEngineUrl;
    }
    if (vehicle != null) {
      json['vehicle'] = vehicle;
    }
    if (routePrefs != null) {
      json['routePrefs'] = routePrefs;
    }
    return json;
  }

  factory DriverPreferences.fromJson(Map<String, dynamic> json) {
    return DriverPreferences(
      fleetEngineUrl: json['fleetEngineUrl'],
      vehicle: json['vehicle'],
      routePrefs: json['routePrefs'],
    );
  }
}

class Ride extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  Ride()
      : _id = -1,
        _mapId = -1;
  Ride.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  int getId() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
          {'id': _id, 'class': "Ride", 'method': "getId", 'args': {}}));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  LandmarkList getStops() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
          {'id': _id, 'class': "Ride", 'method': "getStops", 'args': {}}));
      final decodedVal = jsonDecode(resultString!);
      return LandmarkList.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  Landmark getPickup() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
          {'id': _id, 'class': "Ride", 'method': "getPickup", 'args': {}}));
      final decodedVal = jsonDecode(resultString!);
      return Landmark.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  static Ride create(int mapId) {
    final resultString =
        GemKitPlatform.instance.callCreateObject(jsonEncode({'class': "Ride"}));
    final decodedVal = jsonDecode(resultString!);
    return Ride.init(decodedVal['result'], mapId);
  }

  void dispose() {
    final resultString = GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "Ride", 'id': _id}));
  }
}

class Driver {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  Driver()
      : _id = -1,
        _mapId = -1;
  Driver.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;

  Future<ProgressListener> accept(
      Ride ride, void Function(int) onCompleteCallback) async {
    try {
      final resultString =
          await GemKitPlatform.instance.getChannel().invokeMethod(jsonEncode({
                'id': _id,
                'class': "Driver",
                'method': "accept",
                'args': {'ride': ride.id}
              }));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], 0);
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {
        if (err == 0) {
          onCompleteCallback(0);
        } else {
          onCompleteCallback(err);
        }
      });
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      throw (e.toString());
    }
  }

  int validateRider(Uint8List riderInfo) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Driver",
        'method': "validateRider",
        'args': riderInfo
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  DriverPreferences getPreferences() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Driver",
        'method': "getPreferences",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return DriverPreferences.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  void setLocationTracking(bool enable, int intervalMsec) {
    try {
      GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Driver",
        'method': "setLocationTracking",
        'args': {'enable': enable, 'intervalMsec': intervalMsec}
      }));
    } catch (e) {
      throw (e.toString());
    }
  }

  dynamic getLocationTracking() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Driver",
        'method': "getLocationTracking",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  RideList getRides() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
          {'id': _id, 'class': "Driver", 'method': "getRides", 'args': {}}));
      final decodedVal = jsonDecode(resultString!);
      return RideList.init(decodedVal['result'], mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  Ride getCurrentRide() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Driver",
        'method': "getCurrentRide",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Ride.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  Route getNavigationRoute() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Driver",
        'method': "getNavigationRoute",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Route.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  EDriverStatus getState() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
          {'id': _id, 'class': "Driver", 'method': "getState", 'args': {}}));
      final decodedVal = jsonDecode(resultString!);
      return EDriverStatusExtension.fromId(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  static Driver create(int mapId) {
    final resultString = GemKitPlatform.instance
        .callCreateObject(jsonEncode({'class': "Driver"}));
    final decodedVal = jsonDecode(resultString!);
    return Driver.init(decodedVal['result'], mapId);
  }

  void dispose() {
    GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "Driver", 'id': _id}));
  }
}

class Rider extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  Rider()
      : _id = -1,
        _mapId = -1;
  Rider.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<ProgressListener> request(
      Route route, void Function(int) onCompleteCallback) async {
    try {
      final resultString =
          await GemKitPlatform.instance.getChannel().invokeMethod(jsonEncode({
                'id': _id,
                'class': "Rider",
                'method': "request",
                'args': {'route': route.id}
              }));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], 0);
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {
        if (err == 0) {
          onCompleteCallback(0);
        } else {
          onCompleteCallback(err);
        }
      });
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      throw (e.toString());
    }
  }

  Route getNavigationRoute() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Rider",
        'method': "getNavigationRoute",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Route.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  ERiderStatus getState() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
          {'id': _id, 'class': "Rider", 'method': "getState", 'args': {}}));
      final decodedVal = jsonDecode(resultString!);
      return ERiderStatusExtension.fromId(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  static Rider create(int mapId) {
    final resultString = GemKitPlatform.instance
        .callCreateObject(jsonEncode({'class': "Rider"}));
    final decodedVal = jsonDecode(resultString!);
    return Rider.init(decodedVal['result'], mapId);
  }

  void dispose() {
    final resultString = GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "Rider", 'id': _id}));
  }
}
