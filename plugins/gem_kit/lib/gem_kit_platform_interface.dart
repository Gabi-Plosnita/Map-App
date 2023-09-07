// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:gem_kit/gem_kit_basic.dart';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'dart:async';
import 'dart:convert';
import 'package:gem_kit/api/gem_kit_native.dart'
    if (dart.library.html) 'package:gem_kit/api/gem_kit_native_web.dart';

/// Platform initialization.
///
/// {@category Core}
class GemKitPlatform extends PlatformInterface {
  /// Constructs a GemMapsPlatform.
  static final Object gemToken = Object();
  GemSdkNative gemKit = GemSdkNative();
  GemKitPlatform() : super(token: gemToken);

  static GemKitPlatform gemInstance = GemKitPlatform();

  /// The default instance of [GemKitPlatform] to use.
  static GemKitPlatform get instance => gemInstance;

  /// Platform-specific implementations should set this with their own platform-specific class that extends [GemKitPlatform] when they register themselves.
  static set instance(GemKitPlatform instance) {
    PlatformInterface.verifyToken(instance, gemToken);
    gemInstance = instance;
  }

  /// Initializes the platform interface with [mapId].
  ///
  /// This method is called when the plugin is first initialized.
  Future<dynamic> init(int mapId) async {
    final MethodChannel channel = ensureChannelInitialized(mapId);
    final result = await channel.invokeMethod<String>('waitForViewId');
    var viewId = jsonDecode(result!);
    gemKit.loadNative();
    return viewId;
  }

  // Keep a collection of id -> channel
  // Every method call passes the int mapId
  final Map<int, MethodChannel> _channels = <int, MethodChannel>{};

  /// Returns the channel for [mapId], creating it if it doesn't already exist.
  @visibleForTesting
  MethodChannel ensureChannelInitialized(int mapId) {
    MethodChannel? channel = _channels[mapId];
    if (channel == null) {
      channel = MethodChannel('plugins.flutter.dev/gem_maps_$mapId');
      channel.setMethodCallHandler(
          (MethodCall call) => _handleMethodCall(call, mapId));
      _channels[mapId] = channel;
    }
    return channel;
  }

  Future<dynamic> _handleMethodCall(MethodCall call, int mapId) async {
    gemEventsMethodHandler(call);
  }

  /// Map with viewId and EventHandler
  Map<dynamic, IGemEventHandler> eventHandlerMap = {};

  void registerEventHandler(dynamic listenerId, IGemEventHandler ptr) {
    eventHandlerMap[listenerId.toString()] = ptr;
  }

  void unregisterEventHandler(dynamic listenerId) {
    eventHandlerMap.remove(listenerId.toString());
  }

  void gemEventsMethodHandlerAndroid(MethodCall methodCall) {
    final decodedJson = jsonDecode(methodCall.arguments);
    for (final iter in decodedJson) {
      dynamic name;
      var parsedBigInt = BigInt.tryParse(iter['eventName']);
      if (parsedBigInt != null) {
        name = parsedBigInt.toSigned(64);
      } else {
        var parsedInt = int.tryParse(iter['eventName']);
        if (parsedInt != null) {
          name = parsedInt;
        } else {
          // Handle the case where the conversion failed
          // or assign a default value if desired.
        }
      }
      if (eventHandlerMap.containsKey(name)) {}
      eventHandlerMap[name.toString()]?.handleEvent(iter['arguments']);
    }
  }

  Future<dynamic> gemEventsMethodHandler(MethodCall methodCall) async {
    dynamic name;
    if (methodCall.method == "notifyEvents") {
      gemEventsMethodHandlerAndroid(methodCall);
    } else {
      var parsedBigInt = BigInt.tryParse(methodCall.method);
      if (parsedBigInt != null) {
        name = parsedBigInt.toSigned(64);
      } else {
        var parsedInt = int.tryParse(methodCall.method);
        if (parsedInt != null) {
          name = parsedInt;
        } else {
          // Handle the case where the conversion failed
          // or assign a default value if desired.
        }
      }
      if (eventHandlerMap.containsKey(name)) {}
      eventHandlerMap[name.toString()]?.handleEvent(methodCall.arguments);
    }
  }

  MethodChannel getChannel({int mapId = 0}) {
    return ensureChannelInitialized(mapId);
  }

  dynamic callObjectMethod(String json) {
    return gemKit.callObjectMethod(json, 0);
  }

  dynamic callCreateObject(String json) {
    return gemKit.callCreateObject(json);
  }

  void callDeleteObject(String json) {
    gemKit.callDeleteObject(json);
  }

  void registerCallbackPointer() {
    //gemKit.registerCallbackPointer();
  }
  void loadNative() {
    gemKit.loadNative();
  }
}
