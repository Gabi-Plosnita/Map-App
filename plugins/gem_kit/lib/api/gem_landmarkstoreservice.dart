// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_sdk.dart";
import "gem_landmarkstorelistener.dart";
import "gem_landmarkstore.dart";
import "dart:async";
import "dart:convert";

enum ELandmarkStoreType {
  None,
  Default,
  MapAddress,
  MapPoi,
  MapCity,
  MapHighwayExit,
  MapCountry,
  Last,
}

extension ELandmarkStoreTypeExtension on ELandmarkStoreType {
  int get id {
    switch (this) {
      case ELandmarkStoreType.None:
        return 0;
      case ELandmarkStoreType.Default:
        return 1;
      case ELandmarkStoreType.MapAddress:
        return 2;
      case ELandmarkStoreType.MapPoi:
        return 3;
      case ELandmarkStoreType.MapCity:
        return 4;
      case ELandmarkStoreType.MapHighwayExit:
        return 5;
      case ELandmarkStoreType.MapCountry:
        return 6;
      case ELandmarkStoreType.Last:
        return 7;
      default:
        return -1;
    }
  }

  static ELandmarkStoreType fromId(int id) {
    switch (id) {
      case 0:
        return ELandmarkStoreType.None;
      case 1:
        return ELandmarkStoreType.Default;
      case 2:
        return ELandmarkStoreType.MapAddress;
      case 3:
        return ELandmarkStoreType.MapPoi;
      case 4:
        return ELandmarkStoreType.MapCity;
      case 5:
        return ELandmarkStoreType.MapHighwayExit;
      case 6:
        return ELandmarkStoreType.MapCountry;
      case 7:
        return ELandmarkStoreType.Last;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class LandmarkStoreService extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  LandmarkStoreService()
      : _id = -1,
        _mapId = -1;
  LandmarkStoreService.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<LandmarkStore> createLandmarkStore(
    String name, {
    int? zoom,
    String? folder,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreService",
                'method': "createLandmarkStore",
                'args': {
                  'name': name,
                  if (zoom != null) 'zoom': zoom,
                  if (folder != null) 'folder': folder
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      return LandmarkStore.init(decodedVal['result'], mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<LandmarkStore> getLandmarkStoreById(int landmarkStoreId) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreService",
                'method': "getLandmarkStoreById",
                'args': landmarkStoreId
              }));
      final decodedVal = jsonDecode(resultString!);
      return LandmarkStore.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<LandmarkStore?> getLandmarkStoreByName(String name) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreService",
                'method': "getLandmarkStoreByName",
                'args': name
              }));
      final decodedVal = jsonDecode(resultString!);
      final res = decodedVal['result'];
      if (res == 0) {
        return null;
      }
      return LandmarkStore.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<LandmarkStoreService> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectConstructor',
            jsonEncode({'class': "LandmarkStoreService"}));
    final decodedVal = jsonDecode(resultString!);
    return LandmarkStoreService.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "LandmarkStoreService", 'id': _id}));
  }
}
