// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

// import "package:gem_kit/gem_kit_platform_interface.dart";
// import "package:gem_kit/gem_kit_basic.dart";
// import "gem_apilists.dart";
// import "gem_progresslistener.dart";
// import "gem_traffic.dart";
// import "gem_mapviewpreferences.dart";
// import "gem_mapviewlistener.dart";
// import "gem_rendercontext.dart";
// import "gem_canvas.dart";
// import "gem_databuffer.dart";
// import "gem_position.dart";
// import "gem_coordinates.dart";
// import "gem_transferstatistics.dart";
// import "gem_overlays.dart";
// import "gem_geographicarea.dart";
// import "gem_landmark.dart";
// import "gem_images.dart";
// import "gem_time.dart";
// import "gem_mapviewextensions.dart";
// import "gem_mapsceneconfiguration.dart";
// import "gem_mapscene.dart";
// import "gem_keyboard.dart";
// import "gem_sensedatasource.dart";
// import "gem_path.dart";
// import "gem_mapviewrendersettings.dart";
// import "gem_mapcamera.dart";

// enum ERouteDisplayMode {
//   RDM_Full,
//   RDM_Branches,
// }
// extension ERouteDisplayModeExtension on ERouteDisplayMode {
// int get id {
//  switch (this) {
// case ERouteDisplayMode.RDM_Full:
// return 0;
// case ERouteDisplayMode.RDM_Branches:
// return 1;
//  default:
// return -1;
// }
// }
// static ERouteDisplayMode fromId(int id) {
//  switch (id) {
// case 0:
//  return ERouteDisplayMode.RDM_Full;
// case 1:
//  return ERouteDisplayMode.RDM_Branches;

// default:
//    throw ArgumentError('Invalid id');
// }
// }
// }

// enum EHighlightOptions {
//   HO_ShowLandmark ,
//   HO_ShowContour ,
//   HO_Group ,
//   HO_Overlap ,
//   HO_NoFading ,
//   HO_Bubble ,
// }
// extension EHighlightOptionsExtension on EHighlightOptions {
// int get id {
//  switch (this) {
// case EHighlightOptions.HO_ShowLandmark :
// return 1;
// case EHighlightOptions.HO_ShowContour :
// return 2;
// case EHighlightOptions.HO_Group :
// return 4;
// case EHighlightOptions.HO_Overlap :
// return 8;
// case EHighlightOptions.HO_NoFading :
// return 16;
// case EHighlightOptions.HO_Bubble :
// return 32;
//  default:
// return -1;
// }
// }
// static EHighlightOptions fromId(int id) {
//  switch (id) {
// case 1:
//  return EHighlightOptions.HO_ShowLandmark ;
// case 2:
//  return EHighlightOptions.HO_ShowContour ;
// case 4:
//  return EHighlightOptions.HO_Group ;
// case 8:
//  return EHighlightOptions.HO_Overlap ;
// case 16:
//  return EHighlightOptions.HO_NoFading ;
// case 32:
//  return EHighlightOptions.HO_Bubble ;

// default:
//    throw ArgumentError('Invalid id');
// }
// }
// }

// enum EViewOnlineServiceType {
//   Map,
//   SatelliteElevation,
//   Overlays,
//   External,
// }
// extension EViewOnlineServiceTypeExtension on EViewOnlineServiceType {
// int get id {
//  switch (this) {
// case EViewOnlineServiceType.Map:
// return 0;
// case EViewOnlineServiceType.SatelliteElevation:
// return 1;
// case EViewOnlineServiceType.Overlays:
// return 2;
// case EViewOnlineServiceType.External:
// return 3;
//  default:
// return -1;
// }
// }
// static EViewOnlineServiceType fromId(int id) {
//  switch (id) {
// case 0:
//  return EViewOnlineServiceType.Map;
// case 1:
//  return EViewOnlineServiceType.SatelliteElevation;
// case 2:
//  return EViewOnlineServiceType.Overlays;
// case 3:
//  return EViewOnlineServiceType.External;

// default:
//    throw ArgumentError('Invalid id');
// }
// }
// }

// class MapView extends IGemEventHandler {
// int _id;
// int _mapId;
//  int get id => _id;
//  int get mapId => _mapId;
// MapView():_id = -1,_mapId=-1;
// MapView.init(int id,int mapId):_id = id,_mapId=mapId;
// }
// class MapView extends IGemEventHandler {
// int _id;
// int _mapId;
//  int get id => _id;
//  int get mapId => _mapId;
// MapView():_id = -1,_mapId=-1;
// MapView.init(int id,int mapId):_id = id,_mapId=mapId;
// Future<MapCamera> getCamera() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getCamera",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return MapCamera.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<MapViewPreferences> preferences() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"preferences",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return MapViewPreferences.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> skipAnimation() async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"skipAnimation",
// 'args':{}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<bool> isAnimationInProgress() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"isAnimationInProgress",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> setCamera(StrongPointer<MapCamera> camera) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"setCamera",
// 'args':camera
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> getMaxZoomLevel() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getMaxZoomLevel",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<double> getMaxSlippyZoomLevel() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getMaxSlippyZoomLevel",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> setZoomLevel(int zoomLevel,{int? duration,XyType<int> ? xy,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"setZoomLevel",
// 'args':{'zoomLevel':zoomLevel,if(duration != null) 'duration':duration,if(xy != null) 'xy':xy}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<double> setSlippyZoomLevel(double zoomLevel,{int? duration,XyType<int> ? xy,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"setSlippyZoomLevel",
// 'args':{'zoomLevel':zoomLevel,if(duration != null) 'duration':duration,if(xy != null) 'xy':xy}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> getZoomLevel() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getZoomLevel",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<double> getSlippyZoomLevel() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getSlippyZoomLevel",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> startFollowingPosition({Animation? animation,int? zoomLevel,double? viewAngle,StrongPointer<MapSceneObject>? positionObj,CameraTrackMethod? trackMethod,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"startFollowingPosition",
// 'args':{if(animation != null) 'animation':animation,if(zoomLevel != null) 'zoomLevel':zoomLevel,if(viewAngle != null) 'viewAngle':viewAngle,if(positionObj != null) 'positionObj':positionObj,if(trackMethod != null) 'trackMethod':trackMethod}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> stopFollowingPosition({bool? restoreCameraMode}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"stopFollowingPosition",
// 'args':(restoreCameraMode != null)?restoreCameraMode:{}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> restoreFollowingPosition({Animation? animation}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"restoreFollowingPosition",
// 'args':(animation != null)?animation:{}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<bool> isFollowingPosition({bool? bAlsoFlyToPosition}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"isFollowingPosition",
// 'args':(bAlsoFlyToPosition != null)?bAlsoFlyToPosition:{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<bool> isFollowingPositionTouchHandlerModified() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"isFollowingPositionTouchHandlerModified",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<bool> isDefaultFollowingPosition() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"isDefaultFollowingPosition",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> activateHighlight(LandmarkList landmarks,{RenderSettings<int, int(HO_ShowLandmark), GEM_SETTING_COLOR( 255, 98, 0, 255 ), GEM_SETTING_COLOR( 255, 98, 0, 255 ), GEM_SETTING_SIZE(1.5), GEM_SETTING_SIZE(0)> ? renderSettings,int? highlightId,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"activateHighlight",
// 'args':{'landmarks':landmarks,if(renderSettings != null) 'renderSettings':renderSettings,if(highlightId != null) 'highlightId':highlightId}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> activateHighlight(OverlayItemList overlays,{RenderSettings<int, int(HO_ShowLandmark), GEM_SETTING_COLOR( 255, 98, 0, 255 ), GEM_SETTING_COLOR( 255, 98, 0, 255 ), GEM_SETTING_SIZE(1.5), GEM_SETTING_SIZE(0)> ? renderSettings,int? highlightId,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"activateHighlight",
// 'args':{'overlays':overlays,if(renderSettings != null) 'renderSettings':renderSettings,if(highlightId != null) 'highlightId':highlightId}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> deactivateHighlight({int? highlightId}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"deactivateHighlight",
// 'args':(highlightId != null)?highlightId:{}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> deactivateAllHighlights() async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"deactivateAllHighlights",
// 'args':{}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<RectangleGeographicArea> getHighlightArea({int? highlightId}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getHighlightArea",
// 'args':(highlightId != null)?highlightId:{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RectangleGeographicArea.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<LandmarkList> getHighlight(int highlightId) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getHighlight",
// 'args':highlightId
//  }));
// final decodedVal = jsonDecode(resultString!);
// return LandmarkList.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnCoordinates(Coordinates coords,{int? zoomLevel,XyType<int> ? xy,Animation? animation,double? mapAngle,double? viewAngle,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnCoordinates",
// 'args':{'coords':coords,if(zoomLevel != null) 'zoomLevel':zoomLevel,if(xy != null) 'xy':xy,if(animation != null) 'animation':animation,if(mapAngle != null) 'mapAngle':mapAngle,if(viewAngle != null) 'viewAngle':viewAngle}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnArea(GeographicArea area,{int? zoomLevel,XyType<int> ? xy,Animation? animation,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnArea",
// 'args':{'area':area,if(zoomLevel != null) 'zoomLevel':zoomLevel,if(xy != null) 'xy':xy,if(animation != null) 'animation':animation}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnArea(GeographicArea area,int zoomLevel,RectType<int>  viewRc,{Animation? animation,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnArea",
// 'args':{'area':area,'zoomLevel':zoomLevel,'viewRc':viewRc,if(animation != null) 'animation':animation}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnRouteInstruction(RouteInstruction instruction,{int? zoomLevel,XyType<int> ? xy,Animation? animation,double? viewAngle,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnRouteInstruction",
// 'args':{'instruction':instruction,if(zoomLevel != null) 'zoomLevel':zoomLevel,if(xy != null) 'xy':xy,if(animation != null) 'animation':animation,if(viewAngle != null) 'viewAngle':viewAngle}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnRouteTrafficEvent(RouteTrafficEvent traffic,{int? zoomLevel,RectType<int> ? rc,Animation? animation,double? viewAngle,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnRouteTrafficEvent",
// 'args':{'traffic':traffic,if(zoomLevel != null) 'zoomLevel':zoomLevel,if(rc != null) 'rc':rc,if(animation != null) 'animation':animation,if(viewAngle != null) 'viewAngle':viewAngle}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnLocation(Landmark location,{RectType<int> ? rc,Animation? animation,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnLocation",
// 'args':{'location':location,if(rc != null) 'rc':rc,if(animation != null) 'animation':animation}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnRoute(Route route,{RectType<int> ? rc,Animation? animation,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnRoute",
// 'args':{'route':route,if(rc != null) 'rc':rc,if(animation != null) 'animation':animation}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnRoute(Route route,int startDist,int endDist,{RectType<int> ? viewRc,Animation? animation,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnRoute",
// 'args':{'route':route,'startDist':startDist,'endDist':endDist,if(viewRc != null) 'viewRc':viewRc,if(animation != null) 'animation':animation}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> centerOnRoutes(List<Route>  routesList,{ERouteDisplayMode? displayMode,RectType<int> ? viewRc,Animation? animation,}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"centerOnRoutes",
// 'args':{'routesList':routesList,if(displayMode != null) 'displayMode':displayMode,if(viewRc != null) 'viewRc':viewRc,if(animation != null) 'animation':animation}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<RectType<int> > getOptimalRoutesCenterViewport(List<Route>  routesList,{RectType<int> ? viewRc,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getOptimalRoutesCenterViewport",
// 'args':{'routesList':routesList,if(viewRc != null) 'viewRc':viewRc}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RectType<int> .fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<RectType<int> > getOptimalHighlightCenterViewport({RectType<int> ? viewRc}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getOptimalHighlightCenterViewport",
// 'args':(viewRc != null)?viewRc:{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RectType<int> .fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<Coordinates> getCursorWgsPosition() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getCursorWgsPosition",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return Coordinates.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<LandmarkList> cursorSelectionLandmarks() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"cursorSelectionLandmarks",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return LandmarkList.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<LandmarkList> cursorSelectionStreets() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"cursorSelectionStreets",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return LandmarkList.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<OverlayItemList> cursorSelectionOverlayItems() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"cursorSelectionOverlayItems",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return OverlayItemList.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<TrafficEventList> cursorSelectionTrafficEvents() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"cursorSelectionTrafficEvents",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return TrafficEventList.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<RouteList> cursorSelectionRoutes() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"cursorSelectionRoutes",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RouteList.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<MarkerMatchList> cursorSelectionMarkers() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"cursorSelectionMarkers",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return MarkerMatchList.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<Path> cursorSelectionPath() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"cursorSelectionPath",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return Path.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<MapSceneObject> cursorSelectionSceneObject() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"cursorSelectionSceneObject",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return MapSceneObject.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> highlightHoveredMapLabel(XyType<int>  pt,bool selectMapObjects) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"highlightHoveredMapLabel",
// 'args':{'pt':pt,'selectMapObjects':selectMapObjects}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<LandmarkList> getNearestLocations(Coordinates coordinates) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getNearestLocations",
// 'args':coordinates
//  }));
// final decodedVal = jsonDecode(resultString!);
// return LandmarkList.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<XyType<int> > getCursorScreenPosition() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getCursorScreenPosition",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return XyType<int> .fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> setCursorScreenPosition(XyType<int>  xy) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"setCursorScreenPosition",
// 'args':xy
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> alignNorthUp({Animation? animation}) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"alignNorthUp",
// 'args':(animation != null)?animation:{}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<Coordinates> transformScreenToWgs(XyType<int>  xy) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"transformScreenToWgs",
// 'args':xy
//  }));
// final decodedVal = jsonDecode(resultString!);
// return Coordinates.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<RectangleGeographicAreaList> transformScreenToWgs(RectType<int>  rc) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"transformScreenToWgs",
// 'args':rc
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RectangleGeographicAreaList.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<XyType<int> > transformWgsToScreen(Coordinates coords) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"transformWgsToScreen",
// 'args':coords
//  }));
// final decodedVal = jsonDecode(resultString!);
// return XyType<int> .fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int>> getVisibleRouteInterval(Route route,{RectType<int> ? clipRect,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getVisibleRouteInterval",
// 'args':{'route':route,if(clipRect != null) 'clipRect':clipRect}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return int>.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<StyleLayerInfoList> getStyleLayerInfo(Coordinates coords) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getStyleLayerInfo",
// 'args':coords
//  }));
// final decodedVal = jsonDecode(resultString!);
// return StyleLayerInfoList.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<bool> isCameraMoving() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"isCameraMoving",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> setClippingArea(RectType<float>  area) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"setClippingArea",
// 'args':area
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> scroll(double dx,double dy) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"scroll",
// 'args':{'dx':dx,'dy':dy}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> fling(double velocityX,double velocityY) async {
// try {
// await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"fling",
// 'args':{'velocityX':velocityX,'velocityY':velocityY}
//  }));
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<TransferStatistics> getTransferStatistics(EViewOnlineServiceType serviceType) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getTransferStatistics",
// 'args':serviceType
//  }));
// final decodedVal = jsonDecode(resultString!);
// return TransferStatistics.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<MapViewExtensions> extensions() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"extensions",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return MapViewExtensions.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<double> getHeadingInDegrees() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getHeadingInDegrees",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<double> getPitchInDegrees() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getPitchInDegrees",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<double> getScale() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"MapView",
// 'method':"getScale",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// }
// class StyleLayerInfo {
//   int? id;
//   String? name;
// StyleLayerInfo ({
// this.id ,
// this.name ,
// });

//   Map<String, dynamic> toJson() {
//   final Map<String, dynamic> json = {};
// if(id != null){
//       json['id'] = id;
// }
// if(name != null){
//       json['name'] = name;
// }
// return json;
//   }

//   factory StyleLayerInfo.fromJson(Map<String, dynamic> json) {
//     return StyleLayerInfo(
//       id: json['id'],
//       name: json['name'],
//     );
//   }
// }
