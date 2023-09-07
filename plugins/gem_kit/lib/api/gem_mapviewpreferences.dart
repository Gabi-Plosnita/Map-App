// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import 'dart:convert';
import "gem_sdk.dart";
import "gem_progresslistener.dart";
import "gem_apilists.dart";
import "gem_routingservice.dart";
import "gem_landmarkstore.dart";
import "gem_path.dart";
import "gem_overlays.dart";
import "gem_markers.dart";
import "gem_contentstoreitem.dart";
import "gem_mapscene.dart";
import "gem_types.dart";
import "gem_databuffer.dart";

class ImageList {}

class MapViewRouteCollection extends IGemEventHandler {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  MapViewRouteCollection()
      : _id = -1,
        _mapId = -1;
  MapViewRouteCollection.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
// Future<void> setRenderSettings(Route route,RouteRenderSettings settings) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"setRenderSettings",
// 'args':{'route':route,'settings':settings}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<String> getLabel(Route route) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"getLabel",
// 'args':route
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> setLabel(Route route,String text) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"setLabel",
// 'args':{'route':route,'text':text}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<ImageList> getImages(Route route) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"getImages",
// 'args':route
//  }));
// final decodedVal = jsonDecode(resultString!);
// return ImageList.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> setImages(Route route,ImageList images) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"setImages",
// 'args':{'route':route,'images':images}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<MapViewRoute> getMapViewRoute(int idx) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"getMapViewRoute",
// 'args':idx
//  }));
// final decodedVal = jsonDecode(resultString!);
// return MapViewRoute.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<MapViewRoute> getMapViewRoute(Route route) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"getMapViewRoute",
// 'args':route
//  }));
// final decodedVal = jsonDecode(resultString!);
// return MapViewRoute.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> add(Route route,bool bMainRoute,{String? label,ImageList? images,}) async {
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
// //return RouteCollection&.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  Future<void> add(Route route, RouteRenderSettings settings,
      {String? label, ImageList? images}) async {
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
                  'route': route,
                  'settings': settings,
                  if (label != null) 'label': label,
                  if (images != null) 'images': images
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }
// Future<void> add(MapViewRoute route) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"add",
// 'args':route
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> hideLabel(Route route) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewRouteCollection",
// 'method':"hideLabel",
// 'args':route
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
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
}

class MapViewOverlayCollection {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MapViewOverlayCollection()
      : _id = -1,
        _mapId = -1;
  MapViewOverlayCollection.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

enum EAnimation {
  AnimationNone,
  AnimationLinear,
}

extension EAnimationExtension on EAnimation {
  int get id {
    switch (this) {
      case EAnimation.AnimationNone:
        return 0;
      case EAnimation.AnimationLinear:
        return 1;
      default:
        return -1;
    }
  }

  static EAnimation fromId(int id) {
    switch (id) {
      case 0:
        return EAnimation.AnimationNone;
      case 1:
        return EAnimation.AnimationLinear;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMapViewPerspective {
  MVP_2D,
  MVP_3D,
}

extension EMapViewPerspectiveExtension on EMapViewPerspective {
  int get id {
    switch (this) {
      case EMapViewPerspective.MVP_2D:
        return 0;
      case EMapViewPerspective.MVP_3D:
        return 1;
      default:
        return -1;
    }
  }

  static EMapViewPerspective fromId(int id) {
    switch (id) {
      case 0:
        return EMapViewPerspective.MVP_2D;
      case 1:
        return EMapViewPerspective.MVP_3D;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMapDetailsQualityLevel {
  MDQL_Low,
  MDQL_Medium,
  MDQL_High,
}

extension EMapDetailsQualityLevelExtension on EMapDetailsQualityLevel {
  int get id {
    switch (this) {
      case EMapDetailsQualityLevel.MDQL_Low:
        return 0;
      case EMapDetailsQualityLevel.MDQL_Medium:
        return 1;
      case EMapDetailsQualityLevel.MDQL_High:
        return 2;
      default:
        return -1;
    }
  }

  static EMapDetailsQualityLevel fromId(int id) {
    switch (id) {
      case 0:
        return EMapDetailsQualityLevel.MDQL_Low;
      case 1:
        return EMapDetailsQualityLevel.MDQL_Medium;
      case 2:
        return EMapDetailsQualityLevel.MDQL_High;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EFollowPositionMapRotationMode {
  FPMRM_PositionHeading,
  FPMRM_Compass,
  FPMRM_Fixed,
}

extension EFollowPositionMapRotationModeExtension
    on EFollowPositionMapRotationMode {
  int get id {
    switch (this) {
      case EFollowPositionMapRotationMode.FPMRM_PositionHeading:
        return 0;
      case EFollowPositionMapRotationMode.FPMRM_Compass:
        return 1;
      case EFollowPositionMapRotationMode.FPMRM_Fixed:
        return 2;
      default:
        return -1;
    }
  }

  static EFollowPositionMapRotationMode fromId(int id) {
    switch (id) {
      case 0:
        return EFollowPositionMapRotationMode.FPMRM_PositionHeading;
      case 1:
        return EFollowPositionMapRotationMode.FPMRM_Compass;
      case 2:
        return EFollowPositionMapRotationMode.FPMRM_Fixed;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETouchGestures {
  TG_OnTouch,
  TG_OnLongDown,
  TG_OnDoubleTouch,
  TG_OnTwoPointersTouch,
  TG_OnTwoPointersDoubleTouch,
  TG_OnMove,
  TG_OnTouchMove,
  TG_OnSwipe,
  TG_OnPinchSwipe,
  TG_OnPinch,
  TG_OnRotate,
  TG_OnShove,
  TG_OnTouchPinch,
  TG_OnTouchRotate,
  TG_OnTouchShove,
  TG_OnRotatingSwipe,
  TG_InternalProcessing
}

extension ETouchGesturesExtension on ETouchGestures {
  int get id {
    switch (this) {
      case ETouchGestures.TG_OnTouch:
        return 256;
      case ETouchGestures.TG_OnLongDown:
        return 512;
      case ETouchGestures.TG_OnDoubleTouch:
        return 1024;
      case ETouchGestures.TG_OnTwoPointersTouch:
        return 2048;
      case ETouchGestures.TG_OnTwoPointersDoubleTouch:
        return 4096;
      case ETouchGestures.TG_OnMove:
        return 8192;
      case ETouchGestures.TG_OnTouchMove:
        return 16384;
      case ETouchGestures.TG_OnSwipe:
        return 32768;
      case ETouchGestures.TG_OnPinchSwipe:
        return 65536;
      case ETouchGestures.TG_OnPinch:
        return 131072;
      case ETouchGestures.TG_OnRotate:
        return 262144;
      case ETouchGestures.TG_OnShove:
        return 524288;
      case ETouchGestures.TG_OnTouchPinch:
        return 1048576;
      case ETouchGestures.TG_OnTouchRotate:
        return 2097152;
      case ETouchGestures.TG_OnTouchShove:
        return 4194304;
      case ETouchGestures.TG_OnRotatingSwipe:
        return 8388608;
      case ETouchGestures.TG_InternalProcessing:
        return 2147483648;
      default:
        return -1;
    }
  }

  static ETouchGestures fromId(int id) {
    switch (id) {
      case 256:
        return ETouchGestures.TG_OnTouch;
      case 512:
        return ETouchGestures.TG_OnLongDown;
      case 1024:
        return ETouchGestures.TG_OnDoubleTouch;
      case 2048:
        return ETouchGestures.TG_OnTwoPointersTouch;
      case 4096:
        return ETouchGestures.TG_OnTwoPointersDoubleTouch;
      case 8192:
        return ETouchGestures.TG_OnMove;
      case 16384:
        return ETouchGestures.TG_OnTouchMove;
      case 32768:
        return ETouchGestures.TG_OnSwipe;
      case 65536:
        return ETouchGestures.TG_OnPinchSwipe;
      case 131072:
        return ETouchGestures.TG_OnPinch;
      case 262144:
        return ETouchGestures.TG_OnRotate;
      case 524288:
        return ETouchGestures.TG_OnShove;
      case 1048576:
        return ETouchGestures.TG_OnTouchPinch;
      case 2097152:
        return ETouchGestures.TG_OnTouchRotate;
      case 4194304:
        return ETouchGestures.TG_OnTouchShove;
      case 8388608:
        return ETouchGestures.TG_OnRotatingSwipe;
      case 2147483648:
        return ETouchGestures.TG_InternalProcessing;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EBuildingsVisibility {
  BV_Default,
  BV_Hide,
  BV_2D,
  BV_3D,
}

extension EBuildingsVisibilityExtension on EBuildingsVisibility {
  int get id {
    switch (this) {
      case EBuildingsVisibility.BV_Default:
        return 0;
      case EBuildingsVisibility.BV_Hide:
        return 1;
      case EBuildingsVisibility.BV_2D:
        return 2;
      case EBuildingsVisibility.BV_3D:
        return 3;
      default:
        return -1;
    }
  }

  static EBuildingsVisibility fromId(int id) {
    switch (id) {
      case 0:
        return EBuildingsVisibility.BV_Default;
      case 1:
        return EBuildingsVisibility.BV_Hide;
      case 2:
        return EBuildingsVisibility.BV_2D;
      case 3:
        return EBuildingsVisibility.BV_3D;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class FollowPositionPreferences {
  int? timebeforeturnpresentation;
  XyType<double>? camerafocus;
  bool? touchhandlermodifypersistent;
  bool? touchhandlerexitallow;
  EMapViewPerspective? perspective;
  double? viewangle;
  int? zoomlevel;
  FollowPositionPreferences({
    this.timebeforeturnpresentation,
    this.camerafocus,
    this.touchhandlermodifypersistent,
    this.touchhandlerexitallow,
    this.perspective,
    this.viewangle,
    this.zoomlevel,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (timebeforeturnpresentation != null) {
      json['timebeforeturnpresentation'] = timebeforeturnpresentation;
    }
    if (camerafocus != null) {
      json['camerafocus'] = camerafocus;
    }
    if (touchhandlermodifypersistent != null) {
      json['touchhandlermodifypersistent'] = touchhandlermodifypersistent;
    }
    if (touchhandlerexitallow != null) {
      json['touchhandlerexitallow'] = touchhandlerexitallow;
    }
    if (perspective != null) {
      json['perspective'] = perspective!.id;
    }
    if (viewangle != null) {
      json['viewangle'] = viewangle;
    }
    if (zoomlevel != null) {
      json['zoomlevel'] = zoomlevel;
    }
    return json;
  }

  factory FollowPositionPreferences.fromJson(Map<String, dynamic> json) {
    return FollowPositionPreferences(
      timebeforeturnpresentation: json['timebeforeturnpresentation'],
      camerafocus: json['camerafocus'],
      touchhandlermodifypersistent: json['touchhandlermodifypersistent'],
      touchhandlerexitallow: json['touchhandlerexitallow'],
      perspective: json['perspective'],
      viewangle: json['viewangle'],
      zoomlevel: json['zoomlevel'],
    );
  }
}

class MapViewPreferences extends IGemEventHandler {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  MapViewPreferences()
      : _id = -1,
        _mapId = -1;
  MapViewPreferences.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<void> setCarModelByPath(String filePath) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setCarModelByPath",
                'args': filePath
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setMapViewPerspective(
    EMapViewPerspective perspective, {
    GemAnimation? animation,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setMapViewPerspective",
                'args': {
                  'perspective': perspective,
                  if (animation != null) 'animation': animation
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<EMapViewPerspective> getMapViewPerspective() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getMapViewPerspective",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return EMapViewPerspectiveExtension.fromId(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getViewAngle() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getViewAngle",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getMinViewAngle() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getMinViewAngle",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getMaxViewAngle() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getMaxViewAngle",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setViewAngle(
    double value, {
    bool? animated,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setViewAngle",
                'args': {
                  'value': value,
                  if (animated != null) 'animated': animated
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setTiltAngle(double angleDegrees) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setTiltAngle",
                'args': angleDegrees
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getTiltAngle() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getTiltAngle",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getRotationAngle() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getRotationAngle",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setRotationAngle(double angle) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setRotationAngle",
                'args': angle
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<LandmarkStoreCollection> lmks() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "lmks",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return LandmarkStoreCollection.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<MapViewRoutesCollection> routes() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "routes",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return MapViewRoutesCollection.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<MapViewPathCollection> paths() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "paths",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return MapViewPathCollection.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<MapViewOverlayCollection> overlays() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "overlays",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return MapViewOverlayCollection.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<MapViewMarkerCollections> markers() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "markers",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return MapViewMarkerCollections.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> getTrafficVisibility() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getTrafficVisibility",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> setTrafficVisibility(bool value) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setTrafficVisibility",
                'args': value
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> enableCursor(bool value) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "enableCursor",
                'args': value
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isCursorEnabled() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "isCursorEnabled",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> enableCursorRender(bool value) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "enableCursorRender",
                'args': value
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isCursorRenderEnabled() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "isCursorRenderEnabled",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> getNorthFixedFlag() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getNorthFixedFlag",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setNorthFixedFlag(bool value) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setNorthFixedFlag",
                'args': value
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setMapStyleByPath(
    String path, {
    bool? smoothTransition,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setMapStyleByPath",
                'args': {
                  'path': path,
                  if (smoothTransition != null)
                    'smoothTransition': smoothTransition
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<void> setMapStyle(DataBuffer content,{bool? smoothTransition,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapViewPreferences",
// 'method':"setMapStyle",
// 'args':{'content':content,if(smoothTransition != null) 'smoothTransition':smoothTransition}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  Future<void> setMapStyle(
    ContentStoreItem style, {
    bool? smoothTransition,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setMapStyle",
                'args': {
                  'style': style,
                  if (smoothTransition != null)
                    'smoothTransition': smoothTransition
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setMapStyleById(
    int id, {
    bool? smoothTransition,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setMapStyleById",
                'args': {
                  'id': id,
                  if (smoothTransition != null)
                    'smoothTransition': smoothTransition
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getMapStylePath() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getMapStylePath",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getMapStyleId() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getMapStyleId",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setBuildingsVisibility(EBuildingsVisibility option) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setBuildingsVisibility",
                'args': option
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<EBuildingsVisibility> getBuildingsVisibility() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getBuildingsVisibility",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return EBuildingsVisibilityExtension.fromId(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> updateCurrentStyleFromJson(DataBuffer data) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "updateCurrentStyleFromJson",
                'args': data
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<FollowPositionPreferences> followPositionPreferences() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "followPositionPreferences",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return FollowPositionPreferences.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isMapSceneObjectVisible(MapSceneObject obj) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "isMapSceneObjectVisible",
                'args': obj
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setMapSceneObjectVisibility(
      MapSceneObject obj, bool visible) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setMapSceneObjectVisibility",
                'args': {'obj': obj, 'visible': visible}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setDrawFPS(bool bEnable, XyType<int> pos) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setDrawFPS",
                'args': {'bEnable': bEnable, 'pos': pos}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> getDrawFPS() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getDrawFPS",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getMapDetailsQualityLevel() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getMapDetailsQualityLevel",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setMapDetailsQualityLevel(int level) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setMapDetailsQualityLevel",
                'args': level
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> enableTouchGestures(int gestures, bool enable) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "enableTouchGestures",
                'args': {'gestures': gestures, 'enable': enable}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<bool> isTouchGestureEnabled(ETouchGestures gesture) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "isTouchGestureEnabled",
                'args': gesture
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getTouchGesturesStates() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getTouchGesturesStates",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setTouchGesturesStates(int enabledTouchGesturesBitfield) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setTouchGesturesStates",
                'args': enabledTouchGesturesBitfield
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RectType<int>> getFocusViewport() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "getFocusViewport",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RectType<int>.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setFocusViewport(RectType<int> view) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewPreferences",
                'method': "setFocusViewport",
                'args': view
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> dispose() async {
    await GemKitPlatform.instance.getChannel(mapId: mapId).invokeMethod<String>(
        'callObjectDestructor',
        jsonEncode({'class': "MapViewPreferences", 'id': _id}));
  }
}

class GemAnimation {
  EAnimation type;
  ProgressListener? progress;
  int duration;
  GemAnimation({
    this.type = EAnimation.AnimationNone,
    this.progress,
    this.duration = -1,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (type != null) {
      json['type'] = type!.id;
    }
    if (progress != null) {
      json['progress'] = progress!.id;
    }
    if (duration != null) {
      json['duration'] = duration;
    }
    return json;
  }

  factory GemAnimation.fromJson(Map<String, dynamic> json) {
    return GemAnimation(
      type: json['type'],
      progress: json['progress'],
      duration: json['duration'],
    );
  }
}
