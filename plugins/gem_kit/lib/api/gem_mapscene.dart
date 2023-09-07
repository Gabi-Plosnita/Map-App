// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_sdk.dart";
import "gem_mapsceneconfigurationlistener.dart";
import "gem_databuffer.dart";
import "gem_coordinates.dart";
import "gem_apilists.dart";
import "gem_mapcamera.dart";
import "dart:convert";

enum ESceneObjectFileFormat {
  SOFF_Obj,
  SOFF_Mat,
  SOFF_Tex,
  SOFF_Gltf,
}

extension ESceneObjectFileFormatExtension on ESceneObjectFileFormat {
  int get id {
    switch (this) {
      case ESceneObjectFileFormat.SOFF_Obj:
        return 0;
      case ESceneObjectFileFormat.SOFF_Mat:
        return 1;
      case ESceneObjectFileFormat.SOFF_Tex:
        return 2;
      case ESceneObjectFileFormat.SOFF_Gltf:
        return 3;
      default:
        return -1;
    }
  }

  static ESceneObjectFileFormat fromId(int id) {
    switch (id) {
      case 0:
        return ESceneObjectFileFormat.SOFF_Obj;
      case 1:
        return ESceneObjectFileFormat.SOFF_Mat;
      case 2:
        return ESceneObjectFileFormat.SOFF_Tex;
      case 3:
        return ESceneObjectFileFormat.SOFF_Gltf;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class MapSceneObject extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  MapSceneObject()
      : _id = -1,
        _mapId = -1;
  MapSceneObject.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  static Future<void> customizeDefPositionTracker(
      List<int> buffer, ESceneObjectFileFormat format) async {
    await GemKitPlatform.instance.getChannel(mapId: 0).invokeMethod<String>(
        'customizeDefPositionTracker',
        jsonEncode({'buffer': buffer, 'format': format.id}));
  }
}

class SceneObjectData {
  DataBuffer? buff;
  ESceneObjectFileFormat? format;
  SceneObjectData({
    this.buff,
    this.format,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (buff != null) {
      json['buff'] = buff;
    }
    if (format != null) {
      json['format'] = format!.id;
    }
    return json;
  }

  factory SceneObjectData.fromJson(Map<String, dynamic> json) {
    return SceneObjectData(
      buff: json['buff'],
      format: json['format'],
    );
  }
}
