// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_progresslistener.dart";
import "gem_navigationlistener.dart";
import "gem_routingservice.dart";
import "gem_transferstatistics.dart";
import "gem_parameters.dart";
import "gem_routingpreferences.dart";
import "dart:convert";
import "gem_types.dart";
import "gem_navigationinstruction.dart";
import 'gem_progresslistener.dart';

class NavigationListener {}

enum NavigationEventType {
  error,
  destinationReached,
  navigationInstructionUpdate,
  waypointReached
}

class DataSourcePtr {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  DataSourcePtr()
      : _id = -1,
        _mapId = -1;
  DataSourcePtr.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

class ParameterList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  ParameterList()
      : _id = -1,
        _mapId = -1;
  ParameterList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

class NavigationService extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;

  NavigationService()
      : _id = -1,
        _mapId = -1;
  NavigationService.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
// Future<int> startNavigation(LandmarkList waypoints,RoutePreferences routePreferences,NavigationListener navigationListener,ProgressListener progressListener,{DataSourcePtr? positionSource,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"NavigationService",
// 'method':"startNavigation",
// 'args':{'waypoints':waypoints,'routePreferences':routePreferences,'navigationListener':navigationListener,'progressListener':progressListener,if(positionSource != null) 'positionSource':positionSource}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
//}
  Future<ProgressListener> startNavigation(
      Route route,
      void Function(NavigationEventType, NavigationInstruction?)
          onNavigationInstructionUpdate,
      {void Function(String)? onTextToSpeechInstruction}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>('startNavigation',
              jsonEncode({'route': route.id, 'simulation': false}));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], _mapId);
      progListener.registerOnNotifyCustom((json) {
        if (json['eventType'] == 'navInstructionUpdated') {
          getNavigationInstruction().then((value) {
            if (onNavigationInstructionUpdate != null) {
              onNavigationInstructionUpdate(
                  NavigationEventType.navigationInstructionUpdate, value);
            } else {
              value.dispose();
            }
          });
        } else if (json['eventType'] == 'navigationDstEvent') {
          onNavigationInstructionUpdate(
              NavigationEventType.destinationReached, null);
        } else if (json['eventType'] == 'navigationWptEvent') {
          onNavigationInstructionUpdate(
              NavigationEventType.waypointReached, null);
        } else if (json['eventType'] == 'navigationErrorEvent') {
          onNavigationInstructionUpdate(NavigationEventType.error, null);
        } else if (json['eventType'] == 'navSound') {
          if (onTextToSpeechInstruction != null) {
            onTextToSpeechInstruction(json['ttsString']);
          }
        }
      });
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {});
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<int> startSimulation(LandmarkList waypoints,RoutePreferences routePreferences,NavigationListener navigationListener,ProgressListener progressListener,{double? speedMultiplier,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"NavigationService",
// 'method':"startSimulation",
// 'args':{'waypoints':waypoints,'routePreferences':routePreferences,'navigationListener':navigationListener,'progressListener':progressListener,if(speedMultiplier != null) 'speedMultiplier':speedMultiplier}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
//}
  Future<ProgressListener> startSimulation(
    Route route,
    void Function(NavigationEventType, NavigationInstruction?)
        onNavigationInstructionUpdate, {
    void Function(String)? onTextToSpeechInstruction,
    double? speedMultiplier,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'startNavigation',
              jsonEncode({
                'route': route.id,
                'simulation': true,
                if (speedMultiplier != null) 'speedMultiplier': speedMultiplier
              }));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], _mapId);
      progListener.registerOnNotifyCustom((json) {
        if (json['eventType'] == 'navInstructionUpdated') {
          getNavigationInstruction().then((value) {
            if (onNavigationInstructionUpdate != null) {
              onNavigationInstructionUpdate(
                  NavigationEventType.navigationInstructionUpdate, value);
            } else {
              value.dispose();
            }
          });
        } else if (json['eventType'] == 'navigationDstEvent') {
          onNavigationInstructionUpdate(
              NavigationEventType.destinationReached, null);
        } else if (json['eventType'] == 'navigationWptEvent') {
          onNavigationInstructionUpdate(
              NavigationEventType.waypointReached, null);
        } else if (json['eventType'] == 'navigationErrorEvent') {
          onNavigationInstructionUpdate(NavigationEventType.error, null);
        } else if (json['eventType'] == 'navSound') {
          if (onTextToSpeechInstruction != null) {
            onTextToSpeechInstruction(json['ttsString']);
          }
        }
      });
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {});
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isNavigationActive(
      {NavigationListener? navigationListener}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "isNavigationActive",
                'args': (navigationListener != null) ? navigationListener : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isSimulationActive(
      {NavigationListener? navigationListener}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "isSimulationActive",
                'args': (navigationListener != null) ? navigationListener : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isTripActive({NavigationListener? navigationListener}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "isTripActive",
                'args': (navigationListener != null) ? navigationListener : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Route> getNavigationRoute(
      {NavigationListener? navigationListener}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "getNavigationRoute",
                'args': (navigationListener != null) ? navigationListener : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Route.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> cancelNavigation({ProgressListener? navigationListener}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'stopNavigation',
              jsonEncode({
                'args':
                    (navigationListener != null) ? navigationListener.id : {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setNavigationRoadBlock(
    int length, {
    int? startDistance,
    NavigationListener? navigationListener,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "setNavigationRoadBlock",
                'args': {
                  'length': length,
                  if (startDistance != null) 'startDistance': startDistance,
                  if (navigationListener != null)
                    'navigationListener': navigationListener
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> updateNavigationSound(
      {NavigationListener? navigationListener}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "updateNavigationSound",
                'args': (navigationListener != null) ? navigationListener : {}
              }));
      final decodedVal = jsonDecode(resultString!);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TimeDistance> getBetterRouteTimeDistanceToFork(
      {NavigationListener? navigationListener}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "getBetterRouteTimeDistanceToFork",
                'args': (navigationListener != null) ? navigationListener : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<NavigationInstruction> getNavigationInstruction(
      {NavigationListener? navigationListener}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "getNavigationInstruction",
                'args': (navigationListener != null) ? navigationListener : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return NavigationInstruction.init(decodedVal['result'], mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<DataSourcePtr> getDataSource(
      NavigationListener navigationListener) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "getDataSource",
                'args': navigationListener
              }));
      final decodedVal = jsonDecode(resultString!);
      return DataSourcePtr.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getSimulationMinSpeedMultiplier() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "getSimulationMinSpeedMultiplier",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getSimulationMaxSpeedMultiplier() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "getSimulationMaxSpeedMultiplier",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<ParameterList> getIntermediateWaypointDropParameters() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "getIntermediateWaypointDropParameters",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return ParameterList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TransferStatistics> getTransferStatistics() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "NavigationService",
                'method': "getTransferStatistics",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TransferStatistics.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<NavigationService> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectConstructor',
            jsonEncode({'class': "NavigationService"}));
    final decodedVal = jsonDecode(resultString!);
    return NavigationService.init(decodedVal['result'], mapId);
  }
}
