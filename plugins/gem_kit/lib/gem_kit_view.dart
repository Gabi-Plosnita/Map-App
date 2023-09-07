// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import 'dart:math';

import 'package:flutter/services.dart';
import 'dart:convert';
import 'gem_kit_basic.dart';
import 'package:gem_kit/gem_kit_platform_interface.dart';
import "api/gem_mapcamera.dart";
import 'api/gem_mapviewpreferences.dart';
import 'api/gem_types.dart';
import 'api/gem_geographicarea.dart';
import 'api/gem_coordinates.dart';
import 'api/gem_routingservice.dart';
import 'api/gem_mapviewrendersettings.dart';
import 'api/gem_mapscene.dart';

enum ERouteDisplayMode {
  RDM_Full,
  RDM_Branches,
}

extension ERouteDisplayModeExtension on ERouteDisplayMode {
  int get id {
    switch (this) {
      case ERouteDisplayMode.RDM_Full:
        return 0;
      case ERouteDisplayMode.RDM_Branches:
        return 1;
      default:
        return -1;
    }
  }

  static ERouteDisplayMode fromId(int id) {
    switch (id) {
      case 0:
        return ERouteDisplayMode.RDM_Full;
      case 1:
        return ERouteDisplayMode.RDM_Branches;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum FollowPositionState { entered, exited }

class CameraTrackMethod {}

/// Interface for listening to map view events
///
/// {@category Maps & 3D Scene}
class IMapViewListener {
  /// This occurs when viewport is resized.
  void onViewportResized(Rectangle<int> viewport) {}

  /// This occurs when we receive a simple touch event on the viewport.
  void onTouch(Point pos) {}
  void onPointerUp(int pointerId, Point pos) {}
  void onPointerDown(int pointerId, Point pos) {}
  void onPointerMove(int pointerId, Point pos) {}
  void onFollowPostionState(FollowPositionState followPositionState) {}
  void onMove(Point startPos, Point endPos) {}
  void onLongPress(Point pos) {}
}

/// The map view class
///
/// {@category Maps & 3D Scene}
class GemView extends IGemEventHandler {
  dynamic _id;
  int _mapId;
  Rectangle<int> _viewport;
  IMapViewListener _listener;

  dynamic get id => _id;
  int get mapId => _mapId;

  // ignore: unnecessary_getters_setters
  Rectangle<int> get viewport => _viewport;

  set viewport(Rectangle<int> value) {
    _viewport = value;
  }

  IMapViewListener get listener => _listener;
  set setListener(IMapViewListener l) => _listener = l;

  GemView()
      : _id = -1,
        _mapId = -1,
        _viewport = const Rectangle(0, 0, 0, 0),
        _listener = IMapViewListener();

  GemView.init(int id, int mapId, Rectangle<int> viewport)
      : _id = id,
        _mapId = mapId,
        _viewport = viewport,
        _listener = IMapViewListener();

  /// Create a map view and save the view id.
  Future<String?> createView(IMapViewListener l) async {
    _listener = l;
    _mapId = 0;

    try {
      final result = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>('createView');
      _id = jsonDecode(result as String)['viewId'];

      GemKitPlatform.instance.registerEventHandler(_id, this);

      return result;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Release the map view.
  Future<void> releaseView() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>('releaseView', jsonEncode({"viewId": _id}));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Selects the map objects that are closest to the cursor point.
  Future<void> selectMapObjects(Point pt) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'setMapViewCursorSel',
              jsonEncode({
                'viewId': _id,
                'ptCursor': {
                  'ptX': pt.x,
                  'ptY': pt.y,
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> resetMapSelection() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'setMapViewCursorSel',
              jsonEncode({
                'viewId': _id,
                'ptCursor': {
                  'ptX': viewport.width / 2,
                  'ptY': viewport.height / 2,
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// React to view events and call the listener functions.
  @override
  void handleEvent(dynamic method) {
    final arguments = jsonDecode(method);
    if (arguments['eventType'] == 'mapViewResizedEvent') {
      final Rectangle<int> viewport = Rectangle(
          arguments['viewport']['rectLeft'],
          arguments['viewport']['rectTop'],
          arguments['viewport']['rectWidth'],
          arguments['viewport']['rectHeight']);
      _listener.onViewportResized(viewport);
    }
    if (arguments['eventType'] == 'mapViewOnTouch') {
      final ptx = arguments['point']['ptX'];
      final pty = arguments['point']['ptY'];
      _listener.onTouch(Point(ptx, pty));
    } else if (arguments['eventType'] == 'mapViewFollowPositionEntered') {
      _listener.onFollowPostionState(FollowPositionState.entered);
    } else if (arguments['eventType'] == 'mapViewFollowPositionExited') {
      _listener.onFollowPostionState(FollowPositionState.exited);
    } else if (arguments['eventType'] == 'mapViewOnCursorSelUpdated') {
      // final lmks = jsonDecode(method.arguments)['lmks'];
      // if (lmks != null && lmks['count'] != null) {
      //   _listener.onCursorSelectionUpdatedLmks(lmks['count']);
      // }
      // final routes = jsonDecode(method.arguments)['routes'];
      // if (routes != null && routes['count'] != null) {
      //   _listener.onCursorSelectionUpdatedRoutes(routes['count']);
      // }
    } else if (arguments['eventType'] == 'onPointerUp') {
      final ptx = arguments['point']['ptX'];
      final pty = arguments['point']['ptY'];
      _listener.onPointerUp(arguments['pointerId'], Point(ptx, pty));
    } else if (arguments['eventType'] == 'onPointerDown') {
      final ptx = arguments['point']['ptX'];
      final pty = arguments['point']['ptY'];
      _listener.onPointerDown(arguments['pointerId'], Point(ptx, pty));
    } else if (arguments['eventType'] == 'onPointerMove') {
      final ptx = arguments['point']['ptX'];
      final pty = arguments['point']['ptY'];
      _listener.onPointerMove(arguments['pointerId'], Point(ptx, pty));
    } else if (arguments['eventType'] == 'onMove') {
      final ptx = arguments['startPoint']['ptX'];
      final pty = arguments['startPoint']['ptY'];
      final ptendx = arguments['endPoint']['ptX'];
      final ptendy = arguments['endPoint']['ptY'];
      //print("Pointer move $ptx $pty to $ptendx $ptendx $ptendy");
      _listener.onMove(Point(ptx, pty), Point(ptendx, ptendy));
    } else if (arguments['eventType'] == 'mapViewOnLongDown') {
      final ptx = arguments['point']['ptX'];
      final pty = arguments['point']['ptY'];
      _listener.onLongPress(Point(ptx, pty));
    }
  }

  /// Get the camera
  Future<MapCamera> getCamera() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "getCamera",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return MapCamera.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Stop the current animation
  ///
  /// The current animation is completed instantaneously and error code *error::KCancel* is returned.
  Future<void> skipAnimation() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode(
                  {'id': _id, 'class': "MapView", 'method': "skipAnimation"}));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Center the WGS coordinates on the screen coordinates.
  ///
  /// **Parameters**
  ///
  /// * **IN** *coords* Coordinates
  /// * **IN** *zoomLevel* Zoom level (Use -1 for automatic selection)
  /// * **IN** *xy* Screen position where the coordinates should project (default uses the specified cursor coordinates). The coordinates are relative to the parent view screen.
  /// * **IN** *animation* Specifies the animation to be used by the operation.
  /// * **IN** *mapAngle* Map rotation angle in the range **0.0 - 360.0** degrees (Use [double.infinity] for automatic selection).
  /// * **IN** *viewAngle* MapView angle in the range **-90.0 - 90.0** degrees (Use [double.infinity] for automatic selection).
  Future<void> centerOnCoordinates(Coordinates coords,
      {int zoomLevel = -1,
      XyType<int>? xy,
      GemAnimation? animation,
      double? mapAngle,
      double? viewAngle}) async {
    try {
      if (viewAngle != null && (viewAngle! - viewAngle!.toInt() == 0)) {
        viewAngle -= 0.0000000001;
      }
      if (mapAngle != null && (mapAngle! - mapAngle!.toInt() == 0)) {
        mapAngle -= 0.0000000001;
      }
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode(<String, dynamic>{
                'id': _id,
                'class': "MapView",
                'method': "centerOnCoordinates",
                'args': {
                  'coords': coords,
                  'zoomLevel': zoomLevel,
                  if (xy != null) 'xy': xy,
                  if (animation != null) 'animation': animation,
                  if (mapAngle != null) 'mapAngle': mapAngle,
                  if (viewAngle != null) 'viewAngle': viewAngle
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Center the view on the given WGS area
  ///
  /// **Parameters**
  ///
  /// * **IN** _area_ Geographic area
  /// * **IN** _zoomLevel_ Zoom level. When -1 is used, the zoom level is automatically selected so that the entire area is visible on the map.
  /// * **IN** _xy_ Screen position where the coordinates should project (default uses the specified cursor coordinates). The coordinates are relative to the parent view screen.
  /// * **IN** _animation_ Specifies the animation to be used by the operation.
  Future<void> centerOnArea(
    RectangleGeographicArea area, {
    int? zoomLevel,
    XyType<int>? xy,
    GemAnimation? animation,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "centerOnArea",
                'args': {
                  'area': area,
                  if (zoomLevel != null) 'zoomLevel': zoomLevel,
                  if (xy != null) 'xy': xy,
                  if (animation != null) 'animation': animation
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the cursor screen position. The coordinates are relative to the parent view screen
  Future<XyType<int>?> getCursorScreenPosition() async {
    try {
      final val = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "getCursorScreenPosition",
                'args': {}
              }));
      final decodedVal = jsonDecode(val!);
      final retVal = XyType<int>.fromJson(decodedVal['result']);
      return retVal;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> scroll() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "GemMapView",
                'method': "scroll",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Stop the camera from following the current real/simulated position.
  Future<void> stopFollowingPosition() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "stopFollowingPosition",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Returns true if the camera is following the current real/simulated position and false otherwise.
  Future<bool> isFollowingPosition() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "isFollowingPosition",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Returns true if the camera is following the current real/simulated position from a fixed relative position adjusted by user input and false otherwise.
  Future<bool> isFollowingPositionTouchHandlerModified() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "isFollowingPositionTouchHandlerModified",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Returns true if the camera is following the current real/simulated position in default auto-zoom mode and false otherwise.
  Future<bool> isDefaultFollowingPosition() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "isDefaultFollowingPosition",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Set the cursor screen position.
  ///
  /// **Parameters**
  ///
  /// **IN** *xy*	position relative to the parent screen. The coordinates are relative to the parent view screen
  ///
  /// Use this function to trigger a map view selection (POI, landmark, overlay, route, path, marker) at the given screen coordinates.
  /// If map view selection changes, a notification is sent via *IMapViewListener::onCursorSelectionUpdated*
  /// The current view selection can be queried via cursorSelection...() functions.
  Future<void> setCursorScreenPosition(XyType<int>? xy) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "setCursorScreenPosition",
                'args': {'xy': xy}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Convert a screen(x, y) coordinate to a WGS(lon, lat) coordinate.
  ///
  /// **Parameters**
  ///
  /// **IN** *xy* Screen coordinate. The coordinates are relative to the parent view screen
  ///
  /// **Returns**
  ///
  /// WGS 84 coordinates
  Coordinates? transformScreenToWgs(XyType<int>? xy) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "MapView",
        'method': "transformScreenToWgs",
        'args': xy
      }));
      final decodedVal = jsonDecode(resultString!);
      return Coordinates.fromJson(decodedVal['result']);
    } catch (e) {
      throw e.toString();
    }
  }

  Future<XyType<int>> transformWgsToScreen(Coordinates coords) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "transformWgsToScreen",
                'args': coords
              }));
      final decodedVal = jsonDecode(resultString!);
      return XyType<int>.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get access to this view's preferences.
  MapViewPreferences preferences() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "MapView",
        'method': "preferences",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return MapViewPreferences.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Get the maximum zoom level. Bigger zoom factor means closer to the map.
  Future<int> getMaxZoomLevel() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "getMaxZoomLevel",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the maximum slippy zoom level. Bigger zoom factor means closer to the map.
  Future<double> getMaxSlippyZoomLevel() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "getMaxSlippyZoomLevel",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Set a new zoom level centered on the specified screen position.
  ///
  /// This may be between 0 and [getMaxZoomLevel()]
  ///
  /// **Parameters**
  ///
  /// * **IN** *zoomLevel* Zoom level
  /// * **IN** *duration* The animation duration in milliseconds (0 means no animation).
  /// * **IN** *xy* Screen coordinates on which the map should stay centered. The coordinates are relative to the parent view screen.
  ///
  /// **Returns**
  ///
  /// On success, the previous zoom level. On error, the error code.
  Future<int> setZoomLevel(
    int zoomLevel, {
    int? duration,
    XyType<int>? xy,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "setZoomLevel",
                'args': {
                  'zoomLevel': zoomLevel,
                  if (duration != null) 'duration': duration,
                  if (xy != null) 'xy': xy
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Set a new zoom level based on slippy tile level.
  /// When "follow position" is active, the current position will be used as the reference point for the operation. Otherwise, the screen center will be used. The zoom level may be between 0 and *MaxSlippyZoomLevel*.
  ///
  /// **Parameters**
  ///
  /// * **IN** *zoomLevel* Zoom level
  /// * **IN** *duration* The animation duration in milliseconds (0 means no animation).
  /// * **IN** *xy* Screen coordinates on which the map should stay centered. The coordinates are relative to the parent view screen.
  ///
  /// **Returns**
  ///
  /// The previous zoom level.
  Future<double> setSlippyZoomLevel(
    double zoomLevel, {
    int? duration,
    XyType<int>? xy,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "setSlippyZoomLevel",
                'args': {
                  'zoomLevel': zoomLevel,
                  if (duration != null) 'duration': duration,
                  if (xy != null) 'xy': xy
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the zoom level.
  ///
  /// **Returns**
  ///
  /// The current zoom level.
  Future<int> getZoomLevel() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "getZoomLevel",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the slippy zoom level.
  ///
  /// **Returns**
  ///
  /// The current slippy zoom level.
  Future<double> getSlippyZoomLevel() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "getSlippyZoomLevel",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Restore following position from a manually adjusted mode (camera position fixed relative to the current/simulated position) to default auto-zoom mode.
  ///
  /// **Parameters**
  ///
  /// * **IN**	*animation*	Specifies the animation to be used by the operation.
  Future<void> restoreFollowingPosition({GemAnimation? animation}) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "restoreFollowingPosition",
                'args': (animation != null) ? animation : {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Disable highlighting.
  ///
  /// **Parameters**
  ///
  /// * **IN**	*highlightId*	The highlighted collection id (optional).
  ///
  /// If the function fails, GEM_ERROR will contain the error (e.g. *error::KInvalidInput* if given *highlightId* doesn't exist).
  Future<void> deactivateHighlight({int? highlightId}) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "deactivateHighlight",
                'args': (highlightId != null) ? highlightId : {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Disable highlighting.
  ///
  /// If the function fails, GEM_ERROR will contain the error.
  Future<void> deactivateAllHighlights() async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "deactivateAllHighlights",
                'args': {}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get highlighted geographic area.
  Future<RectangleGeographicArea> getHighlightArea({int? highlightId}) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "getHighlightArea",
                'args': (highlightId != null) ? highlightId : {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RectangleGeographicArea.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> activateHighlight(
    LandmarkList landmarks, {
    RenderSettings? renderSettings,
    int? highlightId,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "activateHighlight",
                'args': {
                  'landmarks': landmarks.id,
                  if (renderSettings != null) 'renderSettings': renderSettings,
                  if (highlightId != null) 'highlightId': highlightId
                }
              }));
      int x = 3;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> centerOnRoute(
    Route route, {
    RectType<int>? rc,
    GemAnimation? animation,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "centerOnRoute",
                'args': {
                  'route': route.id,
                  if (rc != null) 'rc': rc,
                  if (animation != null) 'animation': animation
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> centerOnRoutes(
    RouteList routesList, {
    ERouteDisplayMode? displayMode,
    RectType<int>? viewRc,
    GemAnimation? animation,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "centerOnRoutes",
                'args': {
                  'routesList': routesList.id,
                  if (displayMode != null) 'displayMode': displayMode.id,
                  if (viewRc != null) 'viewRc': viewRc,
                  if (animation != null) 'animation': animation
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<RouteList> cursorSelectionRoutes() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "cursorSelectionRoutes",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return RouteList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<LandmarkList> cursorSelectionLandmarks() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "cursorSelectionLandmarks",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return LandmarkList.init(decodedVal['result'], _mapId);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> startFollowingPosition({
    GemAnimation? animation,
    int? zoomLevel,
    double? viewAngle,
    MapSceneObject? positionObj,
    CameraTrackMethod? trackMethod,
  }) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapView",
                'method': "startFollowingPosition",
                'args': {
                  if (animation != null) 'animation': animation,
                  if (zoomLevel != null)
                    'zoomLevel': zoomLevel
                  else
                    'zoomLevel': -1,
                  if (viewAngle != null) 'viewAngle': viewAngle,
                  if (positionObj != null) 'positionObj': positionObj,
                  if (trackMethod != null) 'trackMethod': trackMethod
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  void enableDrawMarkersMode() {
    GemKitPlatform.instance.callObjectMethod(jsonEncode({
      'id': _id,
      'class': "MapView",
      'method': "enabledrawmarkersmode",
      'args': {}
    }));
  }

  LandmarkList disableDrawMarkersMode() {
    final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
      'id': _id,
      'class': "MapView",
      'method': "disabledrawmarkersmode",
      'args': {}
    }));
    final decodedVal = jsonDecode(resultString!);
    return LandmarkList.init(decodedVal['result'], _mapId);
  }
}
