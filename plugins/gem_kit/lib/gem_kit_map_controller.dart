// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import 'dart:math';

import 'package:gem_kit/widget/gem_kit_map.dart';
import 'package:gem_kit/gem_kit_platform_interface.dart';
import 'package:gem_kit/gem_kit_view.dart';

typedef void TouchCallback(Point pos);
typedef void TouchPointerCallback(int pointerId, Point pos);
typedef void TouchCallbackMove(Point p1, Point p2);

/// Controller for a single GemMap instance running on the host platform.
///
/// {@category Maps & 3D Scene}
///
class GemMapController extends GemView with IMapViewListener {
  TouchCallback? _touchCallback;
  TouchCallback? _touchLongPressCallback;
  TouchPointerCallback? _pPointerUpCallback;
  TouchPointerCallback? _pPointerMoveCallback;
  TouchPointerCallback? _pPointerDownCallback;
  TouchCallbackMove? _pMoveCallback;
  void Function(FollowPositionState)? _followPositionState;
  GemMapController._(int vid, int mId, Rectangle<int> viewport)
      : super.init(vid, mId, viewport) {
    setListener = this;
  }

  /// Initialize control of a [GemMap] with *_id*.
  static Future<GemMapController> init(
      int mapId, GemMapState gemMapState) async {
    var result = await GemKitPlatform.instance.init(mapId);
    final vid = result['viewId'];
    Rectangle<int> pInt =
        Rectangle<int>(0, 0, result['width'], result['height']);
    return GemMapController._(vid, mapId, pInt);
  }

  /// Register to receive events from Native side.
  void registerForEventsHandler() {
    GemKitPlatform.instance.registerEventHandler(id, this);
  }

  void registerTouchCallback(TouchCallback pTouchCallback) {
    _touchCallback = pTouchCallback;
  }

  void registerPointerUpCallback(TouchPointerCallback pPointerUpCallback) {
    _pPointerUpCallback = pPointerUpCallback;
  }

  void registerPointerDownCallback(TouchPointerCallback pPointerDownCallback) {
    _pPointerDownCallback = pPointerDownCallback;
  }

  void registerPointerMoveCallback(TouchPointerCallback pPointerMoveCallback) {
    _pPointerMoveCallback = pPointerMoveCallback;
  }

  void registerMoveCallback(TouchCallbackMove pCallbackMove) {
    _pMoveCallback = pCallbackMove;
  }

  void registerOnLongPressCallback(TouchCallback pCallback) {
    _touchLongPressCallback = pCallback;
  }

  void registerFollowPositionState(
      void Function(FollowPositionState) pCallback) {
    _followPositionState = pCallback;
  }

  void dispose() {
    releaseView();
  }

  @override

  /// IMapViewListener: onViewportResized
  void onViewportResized(Rectangle<int> viewportIn) {
    viewport = viewportIn;
  }

  @override

  /// IMapViewListener: onTouch
  void onTouch(Point pos) {
    if (_touchCallback != null) {
      _touchCallback!(pos);
    }
  }

  @override
  void onLongPress(Point<num> pos) {
    if (_touchLongPressCallback != null) {
      _touchLongPressCallback!(pos);
    }
  }

  @override
  void onPointerUp(int pointerId, Point pos) {
    if (_pPointerUpCallback != null) {
      _pPointerUpCallback!(pointerId, pos);
    }
  }

  @override
  void onPointerMove(int pointerId, Point pos) {
    if (_pPointerMoveCallback != null) {
      _pPointerMoveCallback!(pointerId, pos);
    }
  }

  @override
  void onPointerDown(int pointerId, Point pos) {
    if (_pPointerDownCallback != null) {
      _pPointerDownCallback!(pointerId, pos);
    }
  }

  @override
  void onMove(Point startPoint, Point endPoint) {
    if (_pMoveCallback != null) {
      _pMoveCallback!(startPoint, endPoint);
    }
  }

  @override
  void onFollowPostionState(FollowPositionState followPositionState) {
    if (_followPositionState != null) {
      _followPositionState!(followPositionState);
    }
  }
}
