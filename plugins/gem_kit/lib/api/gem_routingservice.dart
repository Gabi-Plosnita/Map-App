// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "dart:typed_data";

import "package:gem_kit/api/gem_mapviewpreferences.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "dart:convert";
import "gem_routingpreferences.dart";
//import "gem_progresslistener.dart";
import "gem_navigationinstruction.dart";
//import "gem_routelistener.dart";
//import "gem_images.dart";
import "gem_geographicarea.dart";
//import "gem_transferstatistics.dart";
import "gem_path.dart";
//import "gem_databuffer.dart";
//import "gem_traffic.dart";
//import "gem_mapviewrendersettings.dart";
import 'gem_types.dart';
import 'gem_coordinates.dart';
import 'gem_time.dart';
import 'gem_progresslistener.dart';
import 'gem_landmark.dart';

class TilesCollectionGeographicArea {}

class AbstractGeometryImage {}

class ImageList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  ImageList()
      : _id = -1,
        _mapId = -1;
  ImageList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

class ClimbSectionList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  ClimbSectionList()
      : _id = -1,
        _mapId = -1;
  ClimbSectionList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

class SurfaceSectionList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  SurfaceSectionList()
      : _id = -1,
        _mapId = -1;
  SurfaceSectionList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

class LandmarkList {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  LandmarkList()
      : _id = -1,
        _mapId = -1;
  LandmarkList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  static Future<LandmarkList> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "LandmarkList"}));
    final decodedVal = jsonDecode(resultString!);
    return LandmarkList.init(decodedVal['result'], mapId);
  }

  Future<int> size() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkList",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Landmark> at(int position) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkList",
                'method': "at",
                'args': position
              }));
      final decodedVal = jsonDecode(resultString!);
      return Landmark.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> push_back(Landmark landmmark) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "LandmarkList",
                'method': "push_back",
                'args': landmmark.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  void dispose() {
    GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "LandmarkList", 'id': _id}));
  }
}

class RouteList {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  RouteList()
      : _id = -1,
        _mapId = -1;
  RouteList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  static Future<RouteList> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "RouteList"}));
    final decodedVal = jsonDecode(resultString!);
    return RouteList.init(decodedVal['result'], mapId);
  }

  Future<int> size() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteList",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Route> at(int position) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteList",
                'method': "at",
                'args': position
              }));
      final decodedVal = jsonDecode(resultString!);
      return Route.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "RouteList", 'id': _id}));
  }
}

class RouteInstructionList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RouteInstructionList()
      : _id = -1,
        _mapId = -1;
  RouteInstructionList.init(int id, int mapId)
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
                'class': "RouteInstructionList",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RouteInstruction> at(int position) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstructionList",
                'method': "at",
                'args': position
              }));
      final decodedVal = jsonDecode(resultString!);
      return RouteInstruction.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "RouteInstruction", 'id': _id}));
  }
}

class RouteTrafficEventList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RouteTrafficEventList()
      : _id = -1,
        _mapId = -1;
  RouteTrafficEventList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

class RoadTypeSectionList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RoadTypeSectionList()
      : _id = -1,
        _mapId = -1;
  RoadTypeSectionList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

class RouteSegmentList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RouteSegmentList()
      : _id = -1,
        _mapId = -1;
  RouteSegmentList.init(int id, int mapId)
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
                'class': "RouteSegmentList",
                'method': "size",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RouteSegment> at(int position) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegmentList",
                'method': "at",
                'args': position
              }));
      final decodedVal = jsonDecode(resultString!);
      return RouteSegment.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "RouteSegmentList", 'id': _id}));
  }
}

enum ERouteBookmarksSortOrder {
  RBSO_SortByDate,
  RBSO_SortByName,
}

extension ERouteBookmarksSortOrderExtension on ERouteBookmarksSortOrder {
  int get id {
    switch (this) {
      case ERouteBookmarksSortOrder.RBSO_SortByDate:
        return 0;
      case ERouteBookmarksSortOrder.RBSO_SortByName:
        return 1;
      default:
        return -1;
    }
  }

  static ERouteBookmarksSortOrder fromId(int id) {
    switch (id) {
      case 0:
        return ERouteBookmarksSortOrder.RBSO_SortByDate;
      case 1:
        return ERouteBookmarksSortOrder.RBSO_SortByName;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERouteRenderOptions {
  RRS_Main,
  RRS_ShowTraffic,
  RRS_ShowTurnArrows,
  RRS_ShowWaypoints,
  RRS_ShowHighlights,
}

extension ERouteRenderOptionsExtension on ERouteRenderOptions {
  int get id {
    switch (this) {
      case ERouteRenderOptions.RRS_Main:
        return 1;
      case ERouteRenderOptions.RRS_ShowTraffic:
        return 2;
      case ERouteRenderOptions.RRS_ShowTurnArrows:
        return 4;
      case ERouteRenderOptions.RRS_ShowWaypoints:
        return 8;
      case ERouteRenderOptions.RRS_ShowHighlights:
        return 16;
      default:
        return -1;
    }
  }

  static ERouteRenderOptions fromId(int id) {
    switch (id) {
      case 1:
        return ERouteRenderOptions.RRS_Main;
      case 2:
        return ERouteRenderOptions.RRS_ShowTraffic;
      case 4:
        return ERouteRenderOptions.RRS_ShowTurnArrows;
      case 8:
        return ERouteRenderOptions.RRS_ShowWaypoints;
      case 16:
        return ERouteRenderOptions.RRS_ShowHighlights;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EGrade {
  GradeHC,
  Grade1,
  Grade2,
  Grade3,
  Grade4,
}

extension EGradeExtension on EGrade {
  int get id {
    switch (this) {
      case EGrade.GradeHC:
        return 0;
      case EGrade.Grade1:
        return 1;
      case EGrade.Grade2:
        return 2;
      case EGrade.Grade3:
        return 3;
      case EGrade.Grade4:
        return 4;
      default:
        return -1;
    }
  }

  static EGrade fromId(int id) {
    switch (id) {
      case 0:
        return EGrade.GradeHC;
      case 1:
        return EGrade.Grade1;
      case 2:
        return EGrade.Grade2;
      case 3:
        return EGrade.Grade3;
      case 4:
        return EGrade.Grade4;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESurfaceType {
  Asphalt,
  Paved,
  Unpaved,
  Unknown,
}

extension ESurfaceTypeExtension on ESurfaceType {
  int get id {
    switch (this) {
      case ESurfaceType.Asphalt:
        return 0;
      case ESurfaceType.Paved:
        return 1;
      case ESurfaceType.Unpaved:
        return 2;
      case ESurfaceType.Unknown:
        return 3;
      default:
        return -1;
    }
  }

  static ESurfaceType fromId(int id) {
    switch (id) {
      case 0:
        return ESurfaceType.Asphalt;
      case 1:
        return ESurfaceType.Paved;
      case 2:
        return ESurfaceType.Unpaved;
      case 3:
        return ESurfaceType.Unknown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERoadType {
  R_Motorways,
  R_StateRoad,
  R_Road,
  R_Street,
  R_Cycleway,
  R_Path,
  R_SingleTrack,
}

extension ERoadTypeExtension on ERoadType {
  int get id {
    switch (this) {
      case ERoadType.R_Motorways:
        return 0;
      case ERoadType.R_StateRoad:
        return 1;
      case ERoadType.R_Road:
        return 2;
      case ERoadType.R_Street:
        return 3;
      case ERoadType.R_Cycleway:
        return 4;
      case ERoadType.R_Path:
        return 5;
      case ERoadType.R_SingleTrack:
        return 6;
      default:
        return -1;
    }
  }

  static ERoadType fromId(int id) {
    switch (id) {
      case 0:
        return ERoadType.R_Motorways;
      case 1:
        return ERoadType.R_StateRoad;
      case 2:
        return ERoadType.R_Road;
      case 3:
        return ERoadType.R_Street;
      case 4:
        return ERoadType.R_Cycleway;
      case 5:
        return ERoadType.R_Path;
      case 6:
        return ERoadType.R_SingleTrack;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERouteStatus {
  RS_Uninitialized,
  RS_Calculating,
  RS_WaitingInternetConnection,
  RS_Ready,
  RS_Error,
}

extension ERouteStatusExtension on ERouteStatus {
  int get id {
    switch (this) {
      case ERouteStatus.RS_Uninitialized:
        return 0;
      case ERouteStatus.RS_Calculating:
        return 1;
      case ERouteStatus.RS_WaitingInternetConnection:
        return 2;
      case ERouteStatus.RS_Ready:
        return 3;
      case ERouteStatus.RS_Error:
        return 4;
      default:
        return -1;
    }
  }

  static ERouteStatus fromId(int id) {
    switch (id) {
      case 0:
        return ERouteStatus.RS_Uninitialized;
      case 1:
        return ERouteStatus.RS_Calculating;
      case 2:
        return ERouteStatus.RS_WaitingInternetConnection;
      case 3:
        return ERouteStatus.RS_Ready;
      case 4:
        return ERouteStatus.RS_Error;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETransitType {
  TT_Walk,
  TT_Bus,
  TT_Underground,
  TT_Railway,
  TT_Tram,
  TT_WaterTransport,
  TT_Other,
  TT_SharedBike,
  TT_SharedScooter,
  TT_SharedCar,
  TT_Unknown,
}

extension ETransitTypeExtension on ETransitType {
  int get id {
    switch (this) {
      case ETransitType.TT_Walk:
        return 0;
      case ETransitType.TT_Bus:
        return 1;
      case ETransitType.TT_Underground:
        return 2;
      case ETransitType.TT_Railway:
        return 3;
      case ETransitType.TT_Tram:
        return 4;
      case ETransitType.TT_WaterTransport:
        return 5;
      case ETransitType.TT_Other:
        return 6;
      case ETransitType.TT_SharedBike:
        return 7;
      case ETransitType.TT_SharedScooter:
        return 8;
      case ETransitType.TT_SharedCar:
        return 9;
      case ETransitType.TT_Unknown:
        return 10;
      default:
        return -1;
    }
  }

  static ETransitType fromId(int id) {
    switch (id) {
      case 0:
        return ETransitType.TT_Walk;
      case 1:
        return ETransitType.TT_Bus;
      case 2:
        return ETransitType.TT_Underground;
      case 3:
        return ETransitType.TT_Railway;
      case 4:
        return ETransitType.TT_Tram;
      case 5:
        return ETransitType.TT_WaterTransport;
      case 6:
        return ETransitType.TT_Other;
      case 7:
        return ETransitType.TT_SharedBike;
      case 8:
        return ETransitType.TT_SharedScooter;
      case 9:
        return ETransitType.TT_SharedCar;
      case 10:
        return ETransitType.TT_Unknown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERealtimeStatus {
  RS_Delay,
  RS_OnTime,
  RS_NotAvailable,
}

extension ERealtimeStatusExtension on ERealtimeStatus {
  int get id {
    switch (this) {
      case ERealtimeStatus.RS_Delay:
        return 0;
      case ERealtimeStatus.RS_OnTime:
        return 1;
      case ERealtimeStatus.RS_NotAvailable:
        return 2;
      default:
        return -1;
    }
  }

  static ERealtimeStatus fromId(int id) {
    switch (id) {
      case 0:
        return ERealtimeStatus.RS_Delay;
      case 1:
        return ERealtimeStatus.RS_OnTime;
      case 2:
        return ERealtimeStatus.RS_NotAvailable;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class PTTranslation {
  String? text;
  String? language;
  PTTranslation({
    this.text,
    this.language,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (text != null) {
      json['text'] = text;
    }
    if (language != null) {
      json['language'] = language;
    }
    return json;
  }

  factory PTTranslation.fromJson(Map<String, dynamic> json) {
    return PTTranslation(
      text: json['text'],
      language: json['language'],
    );
  }
}

class PTAlert {
  int? counturltranslations;
  int? countheadertexttranslations;
  int? countdescriptiontexttranslations;
  PTAlert({
    this.counturltranslations,
    this.countheadertexttranslations,
    this.countdescriptiontexttranslations,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (counturltranslations != null) {
      json['counturltranslations'] = counturltranslations;
    }
    if (countheadertexttranslations != null) {
      json['countheadertexttranslations'] = countheadertexttranslations;
    }
    if (countdescriptiontexttranslations != null) {
      json['countdescriptiontexttranslations'] =
          countdescriptiontexttranslations;
    }
    return json;
  }

  factory PTAlert.fromJson(Map<String, dynamic> json) {
    return PTAlert(
      counturltranslations: json['counturltranslations'],
      countheadertexttranslations: json['countheadertexttranslations'],
      countdescriptiontexttranslations:
          json['countdescriptiontexttranslations'],
    );
  }
}

class RouteTerrainProfile extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RouteTerrainProfile()
      : _id = -1,
        _mapId = -1;
  RouteTerrainProfile.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<double> getMinElevation() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getMinElevation",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getMaxElevation() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getMaxElevation",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getMinElevationDistance() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getMinElevationDistance",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getMaxElevationDistance() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getMaxElevationDistance",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getTotalUp() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getTotalUp",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getTotalDown() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getTotalDown",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }
// Future<double> getTotalUp(int distBegin,int distEnd) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTerrainProfile",
// 'method':"getTotalUp",
// 'args':{'distBegin':distBegin,'distEnd':distEnd}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<double> getTotalDown(int distBegin,int distEnd) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTerrainProfile",
// 'method':"getTotalDown",
// 'args':{'distBegin':distBegin,'distEnd':distEnd}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }

  Future<Pair<List<dynamic>, double>> getElevationSamples(
      int countSamples, int distBegin, int distEnd) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getElevationSamples",
                'args': {
                  'countSamples': countSamples,
                  'distBegin': distBegin,
                  'distEnd': distEnd
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      final listFloat = decodedVal['result']['floatlist'];
      final sample = decodedVal['result']['sample'];

      return Pair(listFloat, sample);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getElevation(int distance) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getElevation",
                'args': distance
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<List<ClimbSection>> getClimbSections() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getClimbSections",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      final listJson = decodedVal['result'] as List<dynamic>;
      List<ClimbSection> retList = listJson
          .map((categoryJson) => ClimbSection.fromJson(categoryJson))
          .toList();
      return retList;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<List<SurfaceSection>> getSurfaceSections() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getSurfaceSections",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      final listJson = decodedVal['result'] as List<dynamic>;
      List<SurfaceSection> retList = listJson
          .map((categoryJson) => SurfaceSection.fromJson(categoryJson))
          .toList();
      return retList;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<List<RoadTypeSection>> getRoadTypeSections() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getRoadTypeSections",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      final listJson = decodedVal['result'] as List<dynamic>;
      List<RoadTypeSection> retList = listJson
          .map((categoryJson) => RoadTypeSection.fromJson(categoryJson))
          .toList();
      return retList;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<List<SteepSection>> getSteepSections(List<double> categs) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteTerrainProfile",
                'method': "getSteepSections",
                'args': categs
              }));
      final decodedVal = jsonDecode(resultString!);
      final listJson = decodedVal['result'] as List<dynamic>;
      List<SteepSection> retList = listJson
          .map((categoryJson) => SteepSection.fromJson(categoryJson))
          .toList();
      return retList;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<RouteTerrainProfile> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectConstructor',
            jsonEncode({'class': "RouteTerrainProfile"}));
    final decodedVal = jsonDecode(resultString!);
    return RouteTerrainProfile.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "RouteTerrainProfile", 'id': _id}));
  }
}

class RouteInstructionBase {
  SignpostDetails? signpostdetails;
  String? signpostinstruction;
  AbstractGeometryImage? realisticnextturnimage;
  TimeDistance? timedistancetonextturn;
  TimeDistance? remainingtraveltimedistance;
  TimeDistance? remainingtraveltimedistancetonextwaypoint;
  TimeDistance? traveledtimedistance;
  String? countrycodeiso;
  Uint8List? turnimage;
  TurnDetails? turndetails;
  String? turninstruction;
  String? followroadinstruction;
  Coordinates? coordinates;
  RouteInstructionBase({
    this.signpostdetails,
    this.signpostinstruction,
    this.realisticnextturnimage,
    this.timedistancetonextturn,
    this.remainingtraveltimedistance,
    this.remainingtraveltimedistancetonextwaypoint,
    this.traveledtimedistance,
    this.countrycodeiso,
    this.turnimage,
    this.turndetails,
    this.turninstruction,
    this.followroadinstruction,
    this.coordinates,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (signpostdetails != null) {
      json['signpostdetails'] = signpostdetails;
    }
    if (signpostinstruction != null) {
      json['signpostinstruction'] = signpostinstruction;
    }
    if (realisticnextturnimage != null) {
      json['realisticnextturnimage'] = realisticnextturnimage;
    }
    if (timedistancetonextturn != null) {
      json['timedistancetonextturn'] = timedistancetonextturn;
    }
    if (remainingtraveltimedistance != null) {
      json['remainingtraveltimedistance'] = remainingtraveltimedistance;
    }
    if (remainingtraveltimedistancetonextwaypoint != null) {
      json['remainingtraveltimedistancetonextwaypoint'] =
          remainingtraveltimedistancetonextwaypoint;
    }
    if (traveledtimedistance != null) {
      json['traveledtimedistance'] = traveledtimedistance;
    }
    if (countrycodeiso != null) {
      json['countrycodeiso'] = countrycodeiso;
    }
    if (turnimage != null) {
      json['turnimage'] = turnimage;
    }
    if (turndetails != null) {
      json['turndetails'] = turndetails;
    }
    if (turninstruction != null) {
      json['turninstruction'] = turninstruction;
    }
    if (followroadinstruction != null) {
      json['followroadinstruction'] = followroadinstruction;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    return json;
  }

  factory RouteInstructionBase.fromJson(Map<String, dynamic> json) {
    return RouteInstructionBase(
      signpostdetails: json['signpostdetails'],
      signpostinstruction: json['signpostinstruction'],
      realisticnextturnimage: json['realisticnextturnimage'],
      timedistancetonextturn: json['timedistancetonextturn'],
      remainingtraveltimedistance: json['remainingtraveltimedistance'],
      remainingtraveltimedistancetonextwaypoint:
          json['remainingtraveltimedistancetonextwaypoint'],
      traveledtimedistance: json['traveledtimedistance'],
      countrycodeiso: json['countrycodeiso'],
      turnimage: json['turnimage'],
      turndetails: json['turndetails'],
      turninstruction: json['turninstruction'],
      followroadinstruction: json['followroadinstruction'],
      coordinates: json['coordinates'],
    );
  }
}

class PTRouteInstruction {
  String? name;
  String? platformcode;
  Time? arrivaltime;
  Time? departuretime;
  bool? haswheelchairsupport;
  PTRouteInstruction({
    this.name,
    this.platformcode,
    this.arrivaltime,
    this.departuretime,
    this.haswheelchairsupport,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (name != null) {
      json['name'] = name;
    }
    if (platformcode != null) {
      json['platformcode'] = platformcode;
    }
    if (arrivaltime != null) {
      json['arrivaltime'] = arrivaltime;
    }
    if (departuretime != null) {
      json['departuretime'] = departuretime;
    }
    if (haswheelchairsupport != null) {
      json['haswheelchairsupport'] = haswheelchairsupport;
    }
    return json;
  }

  factory PTRouteInstruction.fromJson(Map<String, dynamic> json) {
    return PTRouteInstruction(
      name: json['name'],
      platformcode: json['platformcode'],
      arrivaltime: json['arrivaltime'],
      departuretime: json['departuretime'],
      haswheelchairsupport: json['haswheelchairsupport'],
    );
  }
}

class RouteInstruction extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RouteInstruction()
      : _id = -1,
        _mapId = -1;
  RouteInstruction.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<PTRouteInstruction> toPTRouteInstruction() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "toPTRouteInstruction",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return PTRouteInstruction.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> hasSignpostInfo() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "hasSignpostInfo",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<SignpostDetails> getSignpostDetails() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getSignpostDetails",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return SignpostDetails.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getSignpostInstruction() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getSignpostInstruction",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Uint8List> getRealisticNextTurnImage(int width, int height) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getRealisticNextTurnImage",
                'args': XyType<int>(x: width, y: height)
              }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TimeDistance> getTimeDistanceToNextTurn() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getTimeDistanceToNextTurn",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TimeDistance> getRemainingTravelTimeDistance() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getRemainingTravelTimeDistance",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TimeDistance> getRemainingTravelTimeDistanceToNextWaypoint() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getRemainingTravelTimeDistanceToNextWaypoint",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TimeDistance> getTraveledTimeDistance() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getTraveledTimeDistance",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getCountryCodeISO() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getCountryCodeISO",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> hasTurnInfo() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "hasTurnInfo",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Uint8List> getTurnImage(int width, int height) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getTurnImage",
                'args': XyType<int>(x: width, y: height)
              }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TurnDetails> getTurnDetails() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getTurnDetails",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TurnDetails.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getTurnInstruction() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getTurnInstruction",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> hasFollowRoadInfo() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "hasFollowRoadInfo",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getFollowRoadInstruction() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getFollowRoadInstruction",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Coordinates> getCoordinates() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "getCoordinates",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Coordinates.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isFerry() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "isFerry",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isTollRoad() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "isTollRoad",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isCommon() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteInstruction",
                'method': "isCommon",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<RouteInstruction> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "RouteInstruction"}));
    final decodedVal = jsonDecode(resultString!);
    return RouteInstruction.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "RouteInstructionBase", 'id': _id}));
  }
}

class RouteSegment extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RouteSegment()
      : _id = -1,
        _mapId = -1;
  RouteSegment.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<PTRouteSegment> toPTRouteSegment() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegment",
                'method': "toPTRouteSegment",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return PTRouteSegment.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<LandmarkList> getWaypoints() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegment",
                'method': "getWaypoints",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return LandmarkList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TimeDistance> getTimeDistance() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegment",
                'method': "getTimeDistance",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RectangleGeographicArea> getGeographicArea() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegment",
                'method': "getGeographicArea",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RectangleGeographicArea.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> getIncursCosts() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegment",
                'method': "getIncursCosts",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getSummary() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegment",
                'method': "getSummary",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RouteInstructionList> getInstructions() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegment",
                'method': "getInstructions",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RouteInstructionList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isCommon() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RouteSegment",
                'method': "isCommon",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<RouteSegment> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "RouteSegment"}));
    final decodedVal = jsonDecode(resultString!);
    return RouteSegment.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "RouteSegment", 'id': _id}));
  }
}

class RouteSegmentBase {
  LandmarkList? waypoints;
  TimeDistance? timedistance;
  RectangleGeographicArea? geographicarea;
  bool? incurscosts;
  String? summary;
  RouteInstructionList? instructions;
  RouteSegmentBase({
    this.waypoints,
    this.timedistance,
    this.geographicarea,
    this.incurscosts,
    this.summary,
    this.instructions,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (waypoints != null) {
      json['waypoints'] = waypoints;
    }
    if (timedistance != null) {
      json['timedistance'] = timedistance;
    }
    if (geographicarea != null) {
      json['geographicarea'] = geographicarea;
    }
    if (incurscosts != null) {
      json['incurscosts'] = incurscosts;
    }
    if (summary != null) {
      json['summary'] = summary;
    }
    if (instructions != null) {
      json['instructions'] = instructions;
    }
    return json;
  }

  factory RouteSegmentBase.fromJson(Map<String, dynamic> json) {
    return RouteSegmentBase(
      waypoints: json['waypoints'],
      timedistance: json['timedistance'],
      geographicarea: json['geographicarea'],
      incurscosts: json['incurscosts'],
      summary: json['summary'],
      instructions: json['instructions'],
    );
  }
}

class PTRouteSegment {
  String? name;
  String? platformcode;
  Time? arrivaltime;
  Time? departuretime;
  bool? haswheelchairsupport;
  String? shortname;
  String? routeurl;
  String? agencyname;
  String? agencyphone;
  String? agencyurl;
  String? agencyfareurl;
  String? linefrom;
  String? linetowards;
  int? arrivaldelayinseconds;
  int? departuredelayinseconds;
  bool? hasbicyclesupport;
  bool? stayonsametransit;
  ETransitType? transittype;
  ERealtimeStatus? realtimestatus;
  int? lineblockid;
  Rgba? linecolor;
  Rgba? linetextcolor;
  int? countalerts;
  PTRouteSegment({
    this.name,
    this.platformcode,
    this.arrivaltime,
    this.departuretime,
    this.haswheelchairsupport,
    this.shortname,
    this.routeurl,
    this.agencyname,
    this.agencyphone,
    this.agencyurl,
    this.agencyfareurl,
    this.linefrom,
    this.linetowards,
    this.arrivaldelayinseconds,
    this.departuredelayinseconds,
    this.hasbicyclesupport,
    this.stayonsametransit,
    this.transittype,
    this.realtimestatus,
    this.lineblockid,
    this.linecolor,
    this.linetextcolor,
    this.countalerts,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (name != null) {
      json['name'] = name;
    }
    if (platformcode != null) {
      json['platformcode'] = platformcode;
    }
    if (arrivaltime != null) {
      json['arrivaltime'] = arrivaltime;
    }
    if (departuretime != null) {
      json['departuretime'] = departuretime;
    }
    if (haswheelchairsupport != null) {
      json['haswheelchairsupport'] = haswheelchairsupport;
    }
    if (shortname != null) {
      json['shortname'] = shortname;
    }
    if (routeurl != null) {
      json['routeurl'] = routeurl;
    }
    if (agencyname != null) {
      json['agencyname'] = agencyname;
    }
    if (agencyphone != null) {
      json['agencyphone'] = agencyphone;
    }
    if (agencyurl != null) {
      json['agencyurl'] = agencyurl;
    }
    if (agencyfareurl != null) {
      json['agencyfareurl'] = agencyfareurl;
    }
    if (linefrom != null) {
      json['linefrom'] = linefrom;
    }
    if (linetowards != null) {
      json['linetowards'] = linetowards;
    }
    if (arrivaldelayinseconds != null) {
      json['arrivaldelayinseconds'] = arrivaldelayinseconds;
    }
    if (departuredelayinseconds != null) {
      json['departuredelayinseconds'] = departuredelayinseconds;
    }
    if (hasbicyclesupport != null) {
      json['hasbicyclesupport'] = hasbicyclesupport;
    }
    if (stayonsametransit != null) {
      json['stayonsametransit'] = stayonsametransit;
    }
    if (transittype != null) {
      json['transittype'] = transittype!.id;
    }
    if (realtimestatus != null) {
      json['realtimestatus'] = realtimestatus!.id;
    }
    if (lineblockid != null) {
      json['lineblockid'] = lineblockid;
    }
    if (linecolor != null) {
      json['linecolor'] = linecolor;
    }
    if (linetextcolor != null) {
      json['linetextcolor'] = linetextcolor;
    }
    if (countalerts != null) {
      json['countalerts'] = countalerts;
    }
    return json;
  }

  factory PTRouteSegment.fromJson(Map<String, dynamic> json) {
    return PTRouteSegment(
      name: json['name'],
      platformcode: json['platformcode'],
      arrivaltime: json['arrivaltime'],
      departuretime: json['departuretime'],
      haswheelchairsupport: json['haswheelchairsupport'],
      shortname: json['shortname'],
      routeurl: json['routeurl'],
      agencyname: json['agencyname'],
      agencyphone: json['agencyphone'],
      agencyurl: json['agencyurl'],
      agencyfareurl: json['agencyfareurl'],
      linefrom: json['linefrom'],
      linetowards: json['linetowards'],
      arrivaldelayinseconds: json['arrivaldelayinseconds'],
      departuredelayinseconds: json['departuredelayinseconds'],
      hasbicyclesupport: json['hasbicyclesupport'],
      stayonsametransit: json['stayonsametransit'],
      transittype: json['transittype'],
      realtimestatus: json['realtimestatus'],
      lineblockid: json['lineblockid'],
      linecolor: json['linecolor'],
      linetextcolor: json['linetextcolor'],
      countalerts: json['countalerts'],
    );
  }
}

class PTBuyTicketInformation {
  String? buyticketurl;
  dynamic? solutionpartindexes;
  PTBuyTicketInformation({
    this.buyticketurl,
    this.solutionpartindexes,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (buyticketurl != null) {
      json['buyticketurl'] = buyticketurl;
    }
    if (solutionpartindexes != null) {
      json['solutionpartindexes'] = solutionpartindexes;
    }
    return json;
  }

  factory PTBuyTicketInformation.fromJson(Map<String, dynamic> json) {
    return PTBuyTicketInformation(
      buyticketurl: json['buyticketurl'],
      solutionpartindexes: json['solutionpartindexes'],
    );
  }
}

class RouteBase {
  LandmarkList? waypoints;
  TimeDistance? timedistance;
  RectangleGeographicArea? geographicarea;
  TilesCollectionGeographicArea? tilesgeographicarea;
  PolygonGeographicArea? polygongeographicarea;
  bool? incurscosts;
  String? summary;
  ProgressListener? routelistener;
  RouteTrafficEventList? trafficevents;
  RouteSegmentList? segments;
  ERouteStatus? status;
  RouteTerrainProfile? terrainprofile;
  dynamic? dominantroads;
  Path? routetrack;
  RouteBase({
    this.waypoints,
    this.timedistance,
    this.geographicarea,
    this.tilesgeographicarea,
    this.polygongeographicarea,
    this.incurscosts,
    this.summary,
    this.routelistener,
    this.trafficevents,
    this.segments,
    this.status,
    this.terrainprofile,
    this.dominantroads,
    this.routetrack,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (waypoints != null) {
      json['waypoints'] = waypoints;
    }
    if (timedistance != null) {
      json['timedistance'] = timedistance;
    }
    if (geographicarea != null) {
      json['geographicarea'] = geographicarea;
    }
    if (tilesgeographicarea != null) {
      json['tilesgeographicarea'] = tilesgeographicarea;
    }
    if (polygongeographicarea != null) {
      json['polygongeographicarea'] = polygongeographicarea;
    }
    if (incurscosts != null) {
      json['incurscosts'] = incurscosts;
    }
    if (summary != null) {
      json['summary'] = summary;
    }
    if (routelistener != null) {
      json['routelistener'] = routelistener;
    }
    if (trafficevents != null) {
      json['trafficevents'] = trafficevents;
    }
    if (segments != null) {
      json['segments'] = segments;
    }
    if (status != null) {
      json['status'] = status!.id;
    }
    if (terrainprofile != null) {
      json['terrainprofile'] = terrainprofile;
    }
    if (dominantroads != null) {
      json['dominantroads'] = dominantroads;
    }
    if (routetrack != null) {
      json['routetrack'] = routetrack;
    }
    return json;
  }

  factory RouteBase.fromJson(Map<String, dynamic> json) {
    return RouteBase(
      waypoints: json['waypoints'],
      timedistance: json['timedistance'],
      geographicarea: json['geographicarea'],
      tilesgeographicarea: json['tilesgeographicarea'],
      polygongeographicarea: json['polygongeographicarea'],
      incurscosts: json['incurscosts'],
      summary: json['summary'],
      routelistener: json['routelistener'],
      trafficevents: json['trafficevents'],
      segments: json['segments'],
      status: json['status'],
      terrainprofile: json['terrainprofile'],
      dominantroads: json['dominantroads'],
      routetrack: json['routetrack'],
    );
  }
}

class PTRoute {
  String? ptfare;
  int? ptfrequency;
  bool? ptrespectsallconditions;
  int? countbuyticketinformation;
  PTRoute({
    this.ptfare,
    this.ptfrequency,
    this.ptrespectsallconditions,
    this.countbuyticketinformation,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (ptfare != null) {
      json['ptfare'] = ptfare;
    }
    if (ptfrequency != null) {
      json['ptfrequency'] = ptfrequency;
    }
    if (ptrespectsallconditions != null) {
      json['ptrespectsallconditions'] = ptrespectsallconditions;
    }
    if (countbuyticketinformation != null) {
      json['countbuyticketinformation'] = countbuyticketinformation;
    }
    return json;
  }

  factory PTRoute.fromJson(Map<String, dynamic> json) {
    return PTRoute(
      ptfare: json['ptfare'],
      ptfrequency: json['ptfrequency'],
      ptrespectsallconditions: json['ptrespectsallconditions'],
      countbuyticketinformation: json['countbuyticketinformation'],
    );
  }
}

class Route extends IGemEventHandler {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  Route()
      : _id = -1,
        _mapId = -1;
  Route.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<bool> isPTRoute() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "isPTRoute",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<LandmarkList> getWaypoints() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getWaypoints",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return LandmarkList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TimeDistance> getTimeDistance() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getTimeDistance",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RectangleGeographicArea> getGeographicArea() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getGeographicArea",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RectangleGeographicArea.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<TilesCollectionGeographicArea> getTilesGeographicArea() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"getTilesGeographicArea",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return TilesCollectionGeographicArea.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
//}
  Future<PolygonGeographicArea> getPolygonGeographicArea() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getPolygonGeographicArea",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return PolygonGeographicArea.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> getIncursCosts() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getIncursCosts",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getSummary() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getSummary",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TimeDistance> getTimeDistanceActivePart(bool activePart) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getTimeDistanceActivePart",
                'args': activePart
              }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<RouteTrafficEventList> getTrafficEvents() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"getTrafficEvents",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RouteTrafficEventList.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  Future<RouteSegmentList> getSegments() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getSegments",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RouteSegmentList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getClosestSegment(Coordinates coord) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getClosestSegment",
                'args': coord
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> hasFerryConnections() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "hasFerryConnections",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> hasTollRoads() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "hasTollRoads",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<ERouteStatus> getStatus() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getStatus",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return ERouteStatusExtension.fromId(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Uint8List> exportAs(int format) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "exportAs",
                'args': format
              }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RouteTerrainProfile?> getTerrainProfile() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getTerrainProfile",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      final mId = decodedVal['result'];
      if (mId == 0) return null;
      return RouteTerrainProfile.init(mId, _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Coordinates> getCoordinateOnRoute(int distance) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getCoordinateOnRoute",
                'args': distance
              }));
      final decodedVal = jsonDecode(resultString!);
      return Coordinates.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getDistanceOnRoute(Coordinates coords, bool activePart) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getDistanceOnRoute",
                'args': {'coords': coords, 'activePart': activePart}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Path> getPath(int start, int end) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getPath",
                'args': {'start': start, 'end': end}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Path.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<List<TimeDistanceCoordinate> > getTimeDistanceCoordinates(int start,int end,int step,bool stepType) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"getTimeDistanceCoordinates",
// 'args':{'start':start,'end':end,'step':step,'stepType':stepType}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return List<TimeDistanceCoordinate> .fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  Future<List<String>> getDominantRoads() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getDominantRoads",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RoutePreferences> preferences() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "preferences",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RoutePreferences.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<DataBuffer> dump() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"dump",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return DataBuffer.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  Future<Path> getRouteTrack() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getRouteTrack",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Path.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<Route> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "Route"}));
    final decodedVal = jsonDecode(resultString!);
    return Route.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectDestructor', jsonEncode({'class': "Route", 'id': _id}));
  }
}

class RoutingService extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RoutingService()
      : _id = -1,
        _mapId = -1;
  RoutingService.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<ProgressListener> calculateRoute(
      LandmarkList waypoints,
      RoutePreferences routePreferences,
      void Function(int, RouteList?) onCompleteCallback) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'calculateRoute',
              jsonEncode({
                'args': {
                  'waypoints': waypoints.id,
                  'routePreferences': routePreferences
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], _mapId);
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {
        if (err == 0) {
          final routeList = RouteList.init(json['searchId'], _mapId);
          onCompleteCallback(err, routeList);
        } else {
          onCompleteCallback(err, null);
        }
      });
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> cancelRoute(ProgressListener progressListener) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RoutingService",
                'method': "cancelRoute",
                'args': progressListener
              }));
      final decodedVal = jsonDecode(resultString!);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> setRouteRoadBlock(RouteInstructionBase instruction) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RoutingService",
                'method': "setRouteRoadBlock",
                'args': instruction
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> resetRouteRoadBlocks() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "RoutingService",
                'method': "resetRouteRoadBlocks",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<RoutingService> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "RoutingService"}));
    final decodedVal = jsonDecode(resultString!);
    return RoutingService.init(decodedVal['result'], mapId);
  }
}

class RouteCollection {
  Route? mainroute;
  RouteCollection({
    this.mainroute,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (mainroute != null) {
      json['mainroute'] = mainroute;
    }
    return json;
  }

  factory RouteCollection.fromJson(Map<String, dynamic> json) {
    return RouteCollection(
      mainroute: json['mainroute'],
    );
  }
}

class MapViewRoutesCollection extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MapViewRoutesCollection()
      : _id = -1,
        _mapId = -1;
  MapViewRoutesCollection.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<void> setRenderSettings(
      Route route, RouteRenderSettings settings) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "setRenderSettings",
                'args': {'route': route, 'settings': settings}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getLabel(Route route) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "getLabel",
                'args': route
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setLabel(Route route, String text) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "setLabel",
                'args': {'route': route, 'text': text}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<ImageList> getImages(Route route) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "getImages",
                'args': route
              }));
      final decodedVal = jsonDecode(resultString!);
      return ImageList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setImages(Route route, ImageList images) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "setImages",
                'args': {'route': route, 'images': images}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<MapViewRoute> getMapViewRoute(int idx) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "getMapViewRoute",
                'args': idx
              }));
      final decodedVal = jsonDecode(resultString!);
      return MapViewRoute.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<RouteCollection&> add(Route route,bool bMainRoute,{String? label,ImageList? images,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"add",
// 'args':{'route':route,'bMainRoute':bMainRoute,if(label != null) 'label':label,if(images != null) 'images':images}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RouteCollection&.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  Future<void> add(
    Route route,
    bool bMainRoute, {
    String? label,
    ImageList? images,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "add",
                'args': {
                  'route': route.id,
                  'bMainRoute': bMainRoute,
                  if (label != null) 'label': label,
                  if (images != null) 'images': images
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> remove(Route route) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "remove",
                'args': route.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> addMapViewRoute(MapViewRoute route) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "add",
                'args': route.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> hideLabel(Route route) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "hideLabel",
                'args': route.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Route> getRoute(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "getRoute",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return Route.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> indexOf(Route route) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "indexOf",
                'args': route.id
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isMainRoute(Route route) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "isMainRoute",
                'args': route.id
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Route> getMainRoute() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "getMainRoute",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Route.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setMainRoute(Route route) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRouteCollection",
                'method': "setMainRoute",
                'args': route.id
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
                'class': "MapViewRouteCollection",
                'method': "clear",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<bool> iterateMapViewRoutes(TCollector collector) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"iterateMapViewRoutes",
// 'args':collector
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }

  Future<void> dispose() async {
    await GemKitPlatform.instance.getChannel(mapId: mapId).invokeMethod<String>(
        'callObjectDestructor',
        jsonEncode({'class': "MapViewRouteCollection", 'id': _id}));
  }
}

class MapViewRoute extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MapViewRoute()
      : _id = -1,
        _mapId = -1;
  MapViewRoute.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<Route> getRoute() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "getRoute",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Route.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setRoute(Route route) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "setRoute",
                'args': route
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getLabelText() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "getLabelText",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setLabelText(String text) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "setLabelText",
                'args': text
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<ImageList> getLabelImages() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "getLabelImages",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return ImageList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setLabelImages(ImageList images) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "setLabelImages",
                'args': images
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> hideLabel() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "hideLabel",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RouteRenderSettings> getRenderSettings() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "getRenderSettings",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RouteRenderSettings.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setRenderSettings(RouteRenderSettings settings) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewRoute",
                'method': "setRenderSettings",
                'args': settings
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}

class RouteRenderSettings {
  Rgba? m_traveledInnerColor;
  Rgba? m_turnArrowInnerColor;
  Rgba? m_turnArrowOuterColor;
  double? m_turnArrowInnerSz;
  double? m_turnArrowOuterSz;
  Rgba? m_fillColor;
  double? m_waypointTextSz;
  Rgba? m_waypointTextInnerColor;
  Rgba? m_waypointTextOuterColor;
  RouteRenderSettings({
    this.m_traveledInnerColor,
    this.m_turnArrowInnerColor,
    this.m_turnArrowOuterColor,
    this.m_turnArrowInnerSz,
    this.m_turnArrowOuterSz,
    this.m_fillColor,
    this.m_waypointTextSz,
    this.m_waypointTextInnerColor,
    this.m_waypointTextOuterColor,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (m_traveledInnerColor != null) {
      json['m_traveledInnerColor'] = m_traveledInnerColor;
    }
    if (m_turnArrowInnerColor != null) {
      json['m_turnArrowInnerColor'] = m_turnArrowInnerColor;
    }
    if (m_turnArrowOuterColor != null) {
      json['m_turnArrowOuterColor'] = m_turnArrowOuterColor;
    }
    if (m_turnArrowInnerSz != null) {
      json['m_turnArrowInnerSz'] = m_turnArrowInnerSz;
    }
    if (m_turnArrowOuterSz != null) {
      json['m_turnArrowOuterSz'] = m_turnArrowOuterSz;
    }
    if (m_fillColor != null) {
      json['m_fillColor'] = m_fillColor;
    }
    if (m_waypointTextSz != null) {
      json['m_waypointTextSz'] = m_waypointTextSz;
    }
    if (m_waypointTextInnerColor != null) {
      json['m_waypointTextInnerColor'] = m_waypointTextInnerColor;
    }
    if (m_waypointTextOuterColor != null) {
      json['m_waypointTextOuterColor'] = m_waypointTextOuterColor;
    }
    return json;
  }

  factory RouteRenderSettings.fromJson(Map<String, dynamic> json) {
    return RouteRenderSettings(
      m_traveledInnerColor: json['m_traveledInnerColor'],
      m_turnArrowInnerColor: json['m_turnArrowInnerColor'],
      m_turnArrowOuterColor: json['m_turnArrowOuterColor'],
      m_turnArrowInnerSz: json['m_turnArrowInnerSz'],
      m_turnArrowOuterSz: json['m_turnArrowOuterSz'],
      m_fillColor: json['m_fillColor'],
      m_waypointTextSz: json['m_waypointTextSz'],
      m_waypointTextInnerColor: json['m_waypointTextInnerColor'],
      m_waypointTextOuterColor: json['m_waypointTextOuterColor'],
    );
  }
}

class ClimbSection {
  int? startDistanceM;
  int? endDistanceM;
  double? slope;
  EGrade? grade;
  ClimbSection({
    this.startDistanceM,
    this.endDistanceM,
    this.slope,
    this.grade,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (startDistanceM != null) {
      json['startDistanceM'] = startDistanceM;
    }
    if (endDistanceM != null) {
      json['endDistanceM'] = endDistanceM;
    }
    if (slope != null) {
      json['slope'] = slope;
    }
    if (grade != null) {
      json['grade'] = grade!.id;
    }
    return json;
  }

  factory ClimbSection.fromJson(Map<String, dynamic> json) {
    return ClimbSection(
      startDistanceM: json['startDistanceM'],
      endDistanceM: json['endDistanceM'],
      slope: json['slope'],
      grade: EGradeExtension.fromId(json['grade']),
    );
  }
}

class SurfaceSection {
  int? startDistanceM;
  ESurfaceType? type;
  SurfaceSection({
    this.startDistanceM,
    this.type,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (startDistanceM != null) {
      json['startDistanceM'] = startDistanceM;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    return json;
  }

  factory SurfaceSection.fromJson(Map<String, dynamic> json) {
    return SurfaceSection(
      startDistanceM: json['startDistanceM'],
      type: ESurfaceTypeExtension.fromId(json['type']),
    );
  }
}

class RoadTypeSection {
  int? startDistanceM;
  ERoadType? type;
  RoadTypeSection({
    this.startDistanceM,
    this.type,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (startDistanceM != null) {
      json['startDistanceM'] = startDistanceM;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    return json;
  }

  factory RoadTypeSection.fromJson(Map<String, dynamic> json) {
    return RoadTypeSection(
      startDistanceM: json['startDistanceM'],
      type: ERoadTypeExtension.fromId(json['type']),
    );
  }
}

class SteepSection {
  int? startDistanceM;
  int? categ;
  SteepSection({
    this.startDistanceM,
    this.categ,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (startDistanceM != null) {
      json['startDistanceM'] = startDistanceM;
    }
    if (categ != null) {
      json['categ'] = categ;
    }
    return json;
  }

  factory SteepSection.fromJson(Map<String, dynamic> json) {
    return SteepSection(
      startDistanceM: json['startDistanceM'],
      categ: json['categ'],
    );
  }
}
