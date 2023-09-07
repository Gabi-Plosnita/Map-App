// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_images.dart";
import "dart:convert";

class MapViewExtensions extends IGemEventHandler {
  dynamic _id;
  dynamic _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MapViewExtensions()
      : _id = -1,
        _mapId = -1;
  MapViewExtensions.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<void> setMinimumAllowedZoomLevel(int zoomLevel) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewExtensions",
                'method': "setMinimumAllowedZoomLevel",
                'args': zoomLevel
              }));
      final decodedVal = jsonDecode(resultString!);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getMinimumAllowedZoomLevel() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewExtensions",
                'method': "getMinimumAllowedZoomLevel",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setMaximumAllowedZoomLevel(int zoomLevel) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewExtensions",
                'method': "setMaximumAllowedZoomLevel",
                'args': zoomLevel
              }));
      final decodedVal = jsonDecode(resultString!);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getMaximumAllowedZoomLevel() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewExtensions",
                'method': "getMaximumAllowedZoomLevel",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getHighlightGroupItemIndex(
    int idx, {
    int? highlightId,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "MapViewExtensions",
                'method': "getHighlightGroupItemIndex",
                'args': {
                  'idx': idx,
                  if (highlightId != null) 'highlightId': highlightId
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
