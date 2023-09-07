// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_string.dart";
import "gem_listener.dart";
import "dart:convert";

class ProgressListener extends IGemProgressListener {
  int _mapId;
  int get mapId => _mapId;
  void Function(int, String, Map)? onCompleteWithDataCallback;
  void Function(dynamic)? onNotifyCustom;
  void Function(int)? onProgressCallback;
  ProgressListener() : _mapId = -1;
  ProgressListener.init(dynamic id, int mapId) : _mapId = mapId {
    this.id = id;
  }
  void registerOnCompleteWithDataCallback(
      void Function(int, String, Map) callback) {
    onCompleteWithDataCallback = callback;
  }

  void registerOnProgressCallback(void Function(int) callback) {
    onProgressCallback = callback;
  }

  void registerOnNotifyCustom(void Function(dynamic) callback) {
    onNotifyCustom = callback;
  }

  static Future<ProgressListener> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "ProgressListener"}));
    final decodedVal = jsonDecode(resultString!);
    return ProgressListener.init(decodedVal['result'], mapId);
  }

  @override
  void notifyComplete(int reason, String hint) async {
    if (reason == 0) {}
  }

  @override
  void notifyCompleteWithData(int err, String hint, Map json) {
    if (onCompleteWithDataCallback != null) {
      onCompleteWithDataCallback!(err, hint, json);
    }
  }

  @override
  void notifyProgress(int progress) {
    if (onProgressCallback != null) {
      onProgressCallback!(progress);
    }
  }

  @override
  void notifyStart(bool hasProgress) {
    if (hasProgress) {}
  }

  @override
  void notifyCustom(dynamic json) {
    if (onNotifyCustom != null) {
      onNotifyCustom!(json);
    }
  }
}
