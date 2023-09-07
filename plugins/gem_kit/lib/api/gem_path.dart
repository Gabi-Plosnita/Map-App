// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/api/gem_routingservice.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_geographicarea.dart";
import "gem_databuffer.dart";
import "gem_coordinates.dart";
import "dart:convert";
import "gem_types.dart";

class MapViewPathCollection extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MapViewPathCollection()
      : _id = -1,
        _mapId = -1;
  MapViewPathCollection.init(int id, int mapId)
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
                'class': "MapViewPathCollection",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Path> getPathAt(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "getPathAt",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return Path.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Path> getPathByName(String name) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "getPathByName",
                'args': name
              }));
      final decodedVal = jsonDecode(resultString!);
      return Path.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Rgba> getBorderColorAt(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "getBorderColorAt",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return Rgba.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Rgba> getFillColorAt(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "getFillColorAt",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return Rgba.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getBorderSizeAt(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "getBorderSizeAt",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getInnerSizeAt(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "getInnerSizeAt",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> add(
    Path path, {
    Rgba? colorBorder,
    Rgba? colorInner,
    double? szBorder,
    double? szInner,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "add",
                'args': {
                  'path': path.id,
                  if (colorBorder != null) 'colorBorder': colorBorder,
                  if (colorInner != null) 'colorInner': colorInner,
                  if (szBorder != null) 'szBorder': szBorder,
                  if (szInner != null) 'szInner': szInner
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> remove(Path path) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "remove",
                'args': path.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> removeAt(int index) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPathCollection",
                'method': "removeAt",
                'args': index
              }));
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
                'class': "MapViewPathCollection",
                'method': "clear",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<MapViewPathCollection> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectConstructor',
            jsonEncode({'class': "MapViewPathCollection"}));
    final decodedVal = jsonDecode(resultString!);
    return MapViewPathCollection.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "MapViewPathCollection", 'id': _id}));
  }
}

enum EPathFileFormat {
  PFF_Gpx,
  PFF_Kml,
  PFF_Nmea,
  PFF_GeoJson,
  PFF_LatLonTxt,
  PFF_LonLatTxt,
}

extension EPathFileFormatExtension on EPathFileFormat {
  int get id {
    switch (this) {
      case EPathFileFormat.PFF_Gpx:
        return 0;
      case EPathFileFormat.PFF_Kml:
        return 1;
      case EPathFileFormat.PFF_Nmea:
        return 2;
      case EPathFileFormat.PFF_GeoJson:
        return 3;
      case EPathFileFormat.PFF_LatLonTxt:
        return 4;
      case EPathFileFormat.PFF_LonLatTxt:
        return 5;
      default:
        return -1;
    }
  }

  static EPathFileFormat fromId(int id) {
    switch (id) {
      case 0:
        return EPathFileFormat.PFF_Gpx;
      case 1:
        return EPathFileFormat.PFF_Kml;
      case 2:
        return EPathFileFormat.PFF_Nmea;
      case 3:
        return EPathFileFormat.PFF_GeoJson;
      case 4:
        return EPathFileFormat.PFF_LatLonTxt;
      case 5:
        return EPathFileFormat.PFF_LonLatTxt;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Path extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  Path()
      : _id = -1,
        _mapId = -1;
  Path.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  List<Coordinates> getCoordinates() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Path",
        'method': "getCoordinates",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      final listJson = decodedVal['result'] as List<dynamic>;
      List<Coordinates> retList = listJson
          .map((categoryJson) => Coordinates.fromJson(categoryJson))
          .toList();
      return retList;
    } catch (e) {
      throw (e.toString());
    }
  }

  Future<List<int>> getWayPoints() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Path",
                'method': "getWayPoints",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      final listJson = decodedVal['result'] as List<int>;
      return listJson;
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
                'class': "Path",
                'method': "getArea",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RectangleGeographicArea.fromJson(decodedVal['result']);
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
                'class': "Path",
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
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Path",
                'method': "setName",
                'args': name
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> cloneStartEnd(Coordinates start, Coordinates end) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Path",
                'method': "cloneStartEnd",
                'args': {'start': start, 'end': end}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> cloneReverse() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Path",
                'method': "cloneReverse",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<DataBuffer> exportAs(int format) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Path",
                'method': "exportAs",
                'args': format
              }));
      final decodedVal = jsonDecode(resultString!);
      return DataBuffer.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Coordinates> getCoordinatesAtPercent(
      List<Coordinates> coords, double percent) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Path",
                'method': "getCoordinatesAtPercent",
                'args': {'coords': coords, 'percent': percent}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Coordinates.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Path create({List<int>? data, int? format}) {
    final resultString = GemKitPlatform.instance.callCreateObject(jsonEncode({
      'class': "Path",
      'args': {
        if (data != null) 'data': data,
        if (format != null) 'format': format
      }
    }));
    final decodedVal = jsonDecode(resultString!);
    return Path.init(decodedVal['result'], 0);
  }

  LandmarkList toLandmarkList() {
    final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
        {'id': _id, 'class': "Path", 'method': "toLandmarkList", 'args': {}}));
    final decodedVal = jsonDecode(resultString!);
    return LandmarkList.init(decodedVal['result'], 0);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectDestructor', jsonEncode({'class': "Path", 'id': _id}));
  }
}

class PathMatch {
  int? path;
  Coordinates? coords;
  int? distance;
  int? segment;
  PathMatch({
    this.path,
    this.coords,
    this.distance,
    this.segment,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (path != null) {
      json['path'] = path;
    }
    if (coords != null) {
      json['coords'] = coords;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (segment != null) {
      json['segment'] = segment;
    }
    return json;
  }

  factory PathMatch.fromJson(Map<String, dynamic> json) {
    return PathMatch(
      path: json['path'],
      coords: json['coords'],
      distance: json['distance'],
      segment: json['segment'],
    );
  }
}
