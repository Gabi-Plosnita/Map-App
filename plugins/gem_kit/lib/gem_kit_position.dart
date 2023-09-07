// Copyright (C) 2019-2023, General Magic B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of General Magic
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with General Magic.

import 'dart:async';

import 'package:gem_kit/gem_kit_platform_interface.dart';
import 'package:gem_kit/gem_kit_sense_basic.dart';
import 'gem_kit_basic.dart';
import 'gem_kit_sense_basic.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

/// interface for listening position events
abstract class IGemPositionListener extends IGemEventHandler {
  int id = 0;

  @override
  void handleEvent(dynamic method) {
    if (jsonDecode(method)['eventType'] == 'positionEvent') {
      //decode position
      onNewPosition(gemPosition.fromJson(jsonDecode(method)));
    }
  }

  void onNewPosition(gemPosition pos) {
    throw UnimplementedError('onNewPosition() has not been implemented.');
  }
}

class GemPositionListener extends IGemPositionListener {
  void Function(gemPosition)? onNewPositionCallback;
  GemPositionListener(this.onNewPositionCallback);
  @override
  void onNewPosition(gemPosition pos) {
    // TODO: implement onNewPosition
    if (onNewPositionCallback != null) {
      onNewPositionCallback!(pos);
    }
  }
}

/// position service
class PositionService {
  static final PositionService _instance = PositionService._();
  static PositionService get instance => _instance;
  static Future<PositionService> create(int mapId) async {
    return PositionService.instance;
  }

  PositionService._();

  Future<void> setLiveDataSource() async {
    try {
      await GemKitPlatform.instance.getChannel().invokeMethod<String>(
          'selectPositionDataSource',
          jsonEncode({'senseDataSourceType': 'live'}));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setPlaybackDataSource(String filePath) async {
    try {
      await GemKitPlatform.instance.getChannel().invokeMethod<String>(
          'selectPositionDataSource',
          jsonEncode(
              {'senseDataSourceType': 'playback', 'filePath': filePath}));
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<void> removeDataSource() async {
    try {
      await GemKitPlatform.instance.getChannel().invokeMethod<String>(
          'selectPositionDataSource',
          jsonEncode({'senseDataSourceType': 'none'}));
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<GemPositionListener> addPositionListener(
      void Function(gemPosition) callback) async {
    try {
      GemPositionListener posListener = GemPositionListener(callback);
      final result = await GemKitPlatform.instance
          .getChannel()
          .invokeMethod<String>('registerSenseDataListener',
              jsonEncode({'senseDataType': 'position'}));

      posListener.id = jsonDecode(result as String)['asyncOpId'];
      GemKitPlatform.instance.registerEventHandler(posListener.id, posListener);
      return posListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> addImprovedPositionListener(
      IGemPositionListener listener) async {
    GemKitPlatform.instance.registerEventHandler(listener.id, listener);
    try {
      final result = await GemKitPlatform.instance
          .getChannel()
          .invokeMethod<String>('registerSenseDataListener',
              jsonEncode({'senseDataType': 'improvedPosition'}));

      listener.id = jsonDecode(result as String)['asyncOpId'];
      GemKitPlatform.instance.registerEventHandler(listener.id, listener);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> removeListener(IGemPositionListener listener) async {
    GemKitPlatform.instance.unregisterEventHandler(listener.id);
    try {
      await GemKitPlatform.instance.getChannel().invokeMethod<String>(
          'registerSenseDataListener',
          jsonEncode({'id': listener.id, 'senseDataType': 'none'}));
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
