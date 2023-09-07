// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "dart:typed_data";

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "dart:convert";
import "gem_apilists.dart";
import "gem_coordinates.dart";
import "gem_geographicarea.dart";
import "gem_databuffer.dart";
import "gem_imageids.dart";
import "gem_images.dart";
import "gem_types.dart";

class MarkerCollectionRenderSettings {}

enum EMarkerType {
  MT_Point,
  MT_Polyline,
  MT_Polygon,
}

extension EMarkerTypeExtension on EMarkerType {
  int get id {
    switch (this) {
      case EMarkerType.MT_Point:
        return 0;
      case EMarkerType.MT_Polyline:
        return 1;
      case EMarkerType.MT_Polygon:
        return 2;
      default:
        return -1;
    }
  }

  static EMarkerType fromId(int id) {
    switch (id) {
      case 0:
        return EMarkerType.MT_Point;
      case 1:
        return EMarkerType.MT_Polyline;
      case 2:
        return EMarkerType.MT_Polygon;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMarkerMatchType {
  MMT_None,
  MMT_Coordinate,
  MMT_CoordinateGroup,
  MMT_Contour,
  MMT_Inside,
}

extension EMarkerMatchTypeExtension on EMarkerMatchType {
  int get id {
    switch (this) {
      case EMarkerMatchType.MMT_None:
        return 0;
      case EMarkerMatchType.MMT_Coordinate:
        return 1;
      case EMarkerMatchType.MMT_CoordinateGroup:
        return 2;
      case EMarkerMatchType.MMT_Contour:
        return 3;
      case EMarkerMatchType.MMT_Inside:
        return 4;
      default:
        return -1;
    }
  }

  static EMarkerMatchType fromId(int id) {
    switch (id) {
      case 0:
        return EMarkerMatchType.MMT_None;
      case 1:
        return EMarkerMatchType.MMT_Coordinate;
      case 2:
        return EMarkerMatchType.MMT_CoordinateGroup;
      case 3:
        return EMarkerMatchType.MMT_Contour;
      case 4:
        return EMarkerMatchType.MMT_Inside;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMarkerLabelingMode {
  MLM_None,
  MLM_Item,
  MLM_Group,
  MLM_ItemCenter,
  MLM_GroupCenter,
  MLM_FitImage,
}

extension EMarkerLabelingModeExtension on EMarkerLabelingMode {
  int get id {
    switch (this) {
      case EMarkerLabelingMode.MLM_None:
        return 0;
      case EMarkerLabelingMode.MLM_Item:
        return 1;
      case EMarkerLabelingMode.MLM_Group:
        return 2;
      case EMarkerLabelingMode.MLM_ItemCenter:
        return 4;
      case EMarkerLabelingMode.MLM_GroupCenter:
        return 8;
      case EMarkerLabelingMode.MLM_FitImage:
        return 16;
      default:
        return -1;
    }
  }

  static EMarkerLabelingMode fromId(int id) {
    switch (id) {
      case 0:
        return EMarkerLabelingMode.MLM_None;
      case 1:
        return EMarkerLabelingMode.MLM_Item;
      case 2:
        return EMarkerLabelingMode.MLM_Group;
      case 4:
        return EMarkerLabelingMode.MLM_ItemCenter;
      case 8:
        return EMarkerLabelingMode.MLM_GroupCenter;
      case 16:
        return EMarkerLabelingMode.MLM_FitImage;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Marker extends IGemEventHandler {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  Marker()
      : _id = -1,
        _mapId = -1;
  Marker.init(int id, int mapId)
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
                'class': "Marker",
                'method': "getId",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getPartCount() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "getPartCount",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> delPart(int part) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "delPart",
                'args': part
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<List<Coordinates>> getCoordinates({int? part}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "getCoordinates",
                'args': (part != null) ? part : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      final listJson = decodedVal['result'] as List<dynamic>;
      List<Coordinates> retList = listJson
          .map((categoryJson) => Coordinates.fromJson(categoryJson))
          .toList();
      return retList;
//return CoordinatesList.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RectangleGeographicArea> getArea() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "getArea",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RectangleGeographicArea.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RectangleGeographicArea> getPartArea(int part) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "getPartArea",
                'args': part
              }));
      final decodedVal = jsonDecode(resultString!);
      return RectangleGeographicArea.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setCoordinates(
    CoordinatesList coords, {
    int? part,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "setCoordinates",
                'args': {'coords': coords, if (part != null) 'part': part}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }
// Future<void> add(Coordinates coord,{int? index,int? part,}) async {
// try {

// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Marker",
// 'method':"add",
// 'args':{'coord':coord,if(index != null) 'index':index,if(part != null) 'part':part}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  void add(
    Coordinates coord, {
    int? index,
    int? part,
  }) {
    try {
      GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Marker",
        'method': "add",
        'args': {
          'coord': coord,
          if (index != null) 'index': index,
          if (part != null) 'part': part
        }
      }));
    } catch (e) {
      throw (e.toString());
    }
  }

  Future<void> del(
    int index, {
    int? part,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "del",
                'args': {'index': index, if (part != null) 'part': part}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> update(
    Coordinates coord,
    int index, {
    int? part,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "update",
                'args': {
                  'coord': coord,
                  'index': index,
                  if (part != null) 'part': part
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setName(String name) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Marker",
                'method': "setName",
                'args': name
              }));
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
                'class': "Marker",
                'method': "getName",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Marker create(int mapId) {
    final resultString = GemKitPlatform.instance
        .callCreateObject(jsonEncode({'class': "Marker"}));
    final decodedVal = jsonDecode(resultString!);
    return Marker.init(decodedVal['result'], mapId);
  }

  void dispose() {
    GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "Marker", 'id': _id}));
  }
}

class MarkerCollection extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MarkerCollection()
      : _id = -1,
        _mapId = -1;
  MarkerCollection.init(int id, int mapId)
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
                'class': "MarkerCollection",
                'method': "getId",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<EMarkerType> getType() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MarkerCollection",
                'method': "getType",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return EMarkerTypeExtension.fromId(decodedVal['result']);
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
                'class': "MarkerCollection",
                'method': "getName",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setName(String name) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MarkerCollection",
                'method': "setName",
                'args': name
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> size() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MarkerCollection",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Marker> getMarkerAt(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MarkerCollection",
                'method': "getMarkerAt",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return Marker.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Marker> getMarkerById(int id) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MarkerCollection",
                'method': "getMarkerById",
                'args': id
              }));
      final decodedVal = jsonDecode(resultString!);
      return Marker.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> add(Marker marker, {int index = -1}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MarkerCollection",
                'method': "add",
                'args': marker.id
              }));
      marker.dispose();
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// void add(Marker marker,{int index = -1}) {
// try {
// GemKitPlatform.instance.callObjectMethod(
// jsonEncode({
// 'id':_id,
// 'class':"MarkerCollection",
// 'method':"add",
// 'args':marker.id
//  }));
// } catch (e) {
// throw (e.toString());
// }
// }

  static Future<MarkerCollection> create(
      int mapId, EMarkerType markerType, String name) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor',
            jsonEncode({
              'class': "MarkerCollection",
              'type': markerType.id,
              'name': name
            }));
    final decodedVal = jsonDecode(resultString!);
    return MarkerCollection.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "MarkerCollection", 'id': _id}));
  }
}

class MarkerSketches extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MarkerSketches()
      : _id = -1,
        _mapId = -1;
  MarkerSketches.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<void> add(
    Marker marker,
    MarkerRenderSettings settings, {
    int? index,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MarkerSketches",
                'method': "add",
                'args': {
                  'marker': marker.id,
                  'settings': settings,
                  if (index != null) 'index': index
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setRenderSettings(
      int index, MarkerRenderSettings settings) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MarkerSketches",
                'method': "setRenderSettings",
                'args': {'index': index, 'settings': settings}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<MarkerSketches> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "MarkerSketches"}));
    final decodedVal = jsonDecode(resultString!);
    return MarkerSketches.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "MarkerSketches", 'id': _id}));
  }
}

class MarkerMatch {
  Marker? marker;
  MarkerCollection? markercollection;
  int? markerindex;
  int? partindex;
  int? segment;
  EMarkerMatchType? type;
  int? distance;
  Coordinates? coordinates;
  MarkerMatch({
    this.marker,
    this.markercollection,
    this.markerindex,
    this.partindex,
    this.segment,
    this.type,
    this.distance,
    this.coordinates,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (marker != null) {
      json['marker'] = marker;
    }
    if (markercollection != null) {
      json['markercollection'] = markercollection;
    }
    if (markercollection != null) {
      json['markercollection'] = markercollection;
    }
    if (marker != null) {
      json['marker'] = marker;
    }
    if (markerindex != null) {
      json['markerindex'] = markerindex;
    }
    if (partindex != null) {
      json['partindex'] = partindex;
    }
    if (segment != null) {
      json['segment'] = segment;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    return json;
  }

  factory MarkerMatch.fromJson(Map<String, dynamic> json) {
    return MarkerMatch(
      marker: json['marker'],
      markercollection: json['markercollection'],
      markerindex: json['markerindex'],
      partindex: json['partindex'],
      segment: json['segment'],
      type: json['type'],
      distance: json['distance'],
      coordinates: json['coordinates'],
    );
  }
}

class MapViewMarkerCollections extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MapViewMarkerCollections()
      : _id = -1,
        _mapId = -1;
  MapViewMarkerCollections.init(int id, int mapId)
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
                'class': "MapViewMarkerCollections",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<MarkerCollection> getCollectionAt(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "getCollectionAt",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return MarkerCollection.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> indexOf(MarkerCollection col) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "indexOf",
                'args': col
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> contains(MarkerCollection col) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "contains",
                'args': col
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> add(
    MarkerCollection col, {
    MarkerCollectionRenderSettings? settings,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "add",
                'args': {
                  'col': col.id,
                  if (settings != null) 'settings': settings
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> remove(int index) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "remove",
                'args': index
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> setRenderSettings(
      int index, MarkerCollectionRenderSettings settings) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "setRenderSettings",
                'args': {'index': index, 'settings': settings}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> setDisplaySettings(
      int index, MarkerCollectionRenderSettings settings) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "setDisplaySettings",
                'args': {'index': index, 'settings': settings}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> clear() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "clear",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<MarkerMatchList> hitTest(RectangleGeographicArea area) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "hitTest",
                'args': {'area': area}
              }));
      final decodedVal = jsonDecode(resultString!);
      return MarkerMatchList.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<bool> iterateCollections(TCollector collector) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewMarkerCollections",
// 'method':"iterateCollections",
// 'args':collector
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  Future<int> save(DataBuffer buffer) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "save",
                'args': buffer
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> load(DataBuffer buffer) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "load",
                'args': buffer
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<MarkerSketches> sketches(EMarkerType type) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "sketches",
                'args': type
              }));
      final decodedVal = jsonDecode(resultString!);
      return MarkerSketches.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isSketches(MarkerCollection coll) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewMarkerCollections",
                'method': "isSketches",
                'args': coll
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "MapViewMarkerCollections", 'id': _id}));
  }
}

class MarkerRenderSettings {
  Uint8List? image;
  Rgba? polylineInnerColor;
  Rgba? polylineOuterColor;
  Rgba? polygonFillColor;
  Rgba? labelTextColor;
  double? polylineInnerSize;
  double? polylineOuterSize;
  double? labelTextSize;
  double? imageSize;
  int? labelingMode;
  MarkerRenderSettings({
    this.image,
    this.polylineInnerColor,
    this.polylineOuterColor,
    this.polygonFillColor,
    this.labelTextColor,
    this.polylineInnerSize,
    this.polylineOuterSize,
    this.labelTextSize,
    this.imageSize,
    this.labelingMode,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (image != null) {
      json['image'] = image;
    }
    if (polylineInnerColor != null) {
      json['polylineInnerColor'] = polylineInnerColor;
    }
    if (polylineOuterColor != null) {
      json['polylineOuterColor'] = polylineOuterColor;
    }
    if (polygonFillColor != null) {
      json['polygonFillColor'] = polygonFillColor;
    }
    if (labelTextColor != null) {
      json['labelTextColor'] = labelTextColor;
    }
    if (polylineInnerSize != null) {
      json['polylineInnerSize'] = polylineInnerSize;
    }
    if (polylineOuterSize != null) {
      json['polylineOuterSize'] = polylineOuterSize;
    }
    if (labelTextSize != null) {
      json['labelTextSize'] = labelTextSize;
    }
    if (imageSize != null) {
      json['imageSize'] = imageSize;
    }
    if (labelingMode != null) {
      json['labelingMode'] = labelingMode;
    }
    return json;
  }

  factory MarkerRenderSettings.fromJson(Map<String, dynamic> json) {
    return MarkerRenderSettings(
      image: json['image'],
      polylineInnerColor: json['polylineInnerColor'],
      polylineOuterColor: json['polylineOuterColor'],
      polygonFillColor: json['polygonFillColor'],
      labelTextColor: json['labelTextColor'],
      polylineInnerSize: json['polylineInnerSize'],
      polylineOuterSize: json['polylineOuterSize'],
      labelTextSize: json['labelTextSize'],
      imageSize: json['imageSize'],
      labelingMode: json['labelingMode'],
    );
  }
}

class MarkerCustomRenderData {
  int? pointsGroupCount;
  MarkerCustomRenderData({
    this.pointsGroupCount,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (pointsGroupCount != null) {
      json['pointsGroupCount'] = pointsGroupCount;
    }
    return json;
  }

  factory MarkerCustomRenderData.fromJson(Map<String, dynamic> json) {
    return MarkerCustomRenderData(
      pointsGroupCount: json['pointsGroupCount'],
    );
  }
}

class MarkerMatchList {
  MarkerMatchList();
  factory MarkerMatchList.fromJson(Map<String, dynamic> json) {
    return MarkerMatchList();
  }
}
