// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "dart:convert";
import "gem_coordinates.dart";
import "gem_routingservice.dart";
import "gem_landmark.dart";

class LandmarkCategoryList {}

enum ELandmarkOrder {
  LO_Name,
  LO_Date,
  LO_Distance,
}

extension ELandmarkOrderExtension on ELandmarkOrder {
  int get id {
    switch (this) {
      case ELandmarkOrder.LO_Name:
        return 0;
      case ELandmarkOrder.LO_Date:
        return 1;
      case ELandmarkOrder.LO_Distance:
        return 2;
      default:
        return -1;
    }
  }

  static ELandmarkOrder fromId(int id) {
    switch (id) {
      case 0:
        return ELandmarkOrder.LO_Name;
      case 1:
        return ELandmarkOrder.LO_Date;
      case 2:
        return ELandmarkOrder.LO_Distance;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ELandmarkFileFormat {
  LFF_Unknown,
  LFF_Kml,
  LFF_GeoJson,
}

extension ELandmarkFileFormatExtension on ELandmarkFileFormat {
  int get id {
    switch (this) {
      case ELandmarkFileFormat.LFF_Unknown:
        return 0;
      case ELandmarkFileFormat.LFF_Kml:
        return 1;
      case ELandmarkFileFormat.LFF_GeoJson:
        return 2;
      default:
        return -1;
    }
  }

  static ELandmarkFileFormat fromId(int id) {
    switch (id) {
      case 0:
        return ELandmarkFileFormat.LFF_Unknown;
      case 1:
        return ELandmarkFileFormat.LFF_Kml;
      case 2:
        return ELandmarkFileFormat.LFF_GeoJson;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class LandmarkBrowseSession {
  int? id;
  int? landmarkstoreid;
  int? landmarkcount;
  LandmarkBrowseSessionSettings? settings;
  LandmarkBrowseSession({
    this.id,
    this.landmarkstoreid,
    this.landmarkcount,
    this.settings,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (landmarkstoreid != null) {
      json['landmarkstoreid'] = landmarkstoreid;
    }
    if (landmarkcount != null) {
      json['landmarkcount'] = landmarkcount;
    }
    if (settings != null) {
      json['settings'] = settings;
    }
    return json;
  }

  factory LandmarkBrowseSession.fromJson(Map<String, dynamic> json) {
    return LandmarkBrowseSession(
      id: json['id'],
      landmarkstoreid: json['landmarkstoreid'],
      landmarkcount: json['landmarkcount'],
      settings: json['settings'],
    );
  }
}

class LandmarkStore extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  LandmarkStore()
      : _id = -1,
        _mapId = -1;
  LandmarkStore.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<int> getId() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStore",
                'method': "getId",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getType() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStore",
                'method': "getType",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getName() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStore",
                'method': "getName",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<LandmarkList> getLandmarks({int? categoryId}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStore",
                'method': "getLandmarks",
                'args': (categoryId != null) ? categoryId : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return LandmarkList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> addLandmark(
    Landmark landmark, {
    int? categoryId,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStore",
                'method': "addLandmark",
                'args': {
                  'landmark': landmark.id,
                  if (categoryId != null) 'categoryId': categoryId
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> containsLandmark(int landmarkId) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStore",
                'method': "containsLandmark",
                'args': landmarkId
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> removeLandmark(Landmark landmark) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStore",
                'method': "removeLandmark",
                'args': landmark.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "LandmarkStore", 'id': _id}));
  }
}

class LandmarkStoreCollection extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  LandmarkStoreCollection()
      : _id = -1,
        _mapId = -1;
  LandmarkStoreCollection.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<int> size() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getStoreIdAt(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "getStoreIdAt",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> contains(int storeId) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "contains",
                'args': storeId
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getCategoryCount(int storeId) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "getCategoryCount",
                'args': storeId
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getStoreCategoryId(int storeId, int indexCategory) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "getStoreCategoryId",
                'args': {'storeId': storeId, 'indexCategory': indexCategory}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> addStoreCategoryId(int storeId, int categoryId) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "addStoreCategoryId",
                'args': {'storeId': storeId, 'categoryId': categoryId}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> addStoreCategoryList(
      int storeId, LandmarkCategoryList categories) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "addStoreCategoryList",
                'args': {'storeId': storeId, 'categories': categories}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> addAllStoreCategories(int storeId) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "addAllStoreCategories",
                'args': storeId
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> add(LandmarkStore lms) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "add",
                'args': lms
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> removeStoreCategoryId(int storeId, int categoryId) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "removeStoreCategoryId",
                'args': {'storeId': storeId, 'categoryId': categoryId}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> removeAllStoreCategories(int storeId) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "removeAllStoreCategories",
                'args': storeId
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> remove(LandmarkStore lms) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkStoreCollection",
                'method': "remove",
                'args': lms
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}

class LandmarkBrowseSessionSettings {
  String? nameFilter;
  Coordinates? coordinates;
  LandmarkBrowseSessionSettings({
    this.nameFilter,
    this.coordinates,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (nameFilter != null) {
      json['nameFilter'] = nameFilter;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    return json;
  }

  factory LandmarkBrowseSessionSettings.fromJson(Map<String, dynamic> json) {
    return LandmarkBrowseSessionSettings(
      nameFilter: json['nameFilter'],
      coordinates: json['coordinates'],
    );
  }
}
