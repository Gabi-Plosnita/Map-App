// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/api/gem_sensedatatypes.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_sdk.dart";
import "gem_string.dart";
import "gem_progresslistener.dart";
import "gem_sensedatasource.dart";
import "gem_databuffer.dart";
import "gem_coordinates.dart";
import "dart:convert";

enum EFileType {
  Nmea,
  Gpx,
  Kml,
  GeoJson,
}

extension EFileTypeExtension on EFileType {
  int get id {
    switch (this) {
      case EFileType.Nmea:
        return 0;
      case EFileType.Gpx:
        return 1;
      case EFileType.Kml:
        return 2;
      case EFileType.GeoJson:
        return 3;
      default:
        return -1;
    }
  }

  static EFileType fromId(int id) {
    switch (id) {
      case 0:
        return EFileType.Nmea;
      case 1:
        return EFileType.Gpx;
      case 2:
        return EFileType.Kml;
      case 3:
        return EFileType.GeoJson;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERecorderStatus {
  Stopped,
  Stopping,
  Starting,
  Recording,
  Restarting,
}

extension ERecorderStatusExtension on ERecorderStatus {
  int get id {
    switch (this) {
      case ERecorderStatus.Stopped:
        return 0;
      case ERecorderStatus.Stopping:
        return 1;
      case ERecorderStatus.Starting:
        return 2;
      case ERecorderStatus.Recording:
        return 3;
      case ERecorderStatus.Restarting:
        return 4;
      default:
        return -1;
    }
  }

  static ERecorderStatus fromId(int id) {
    switch (id) {
      case 0:
        return ERecorderStatus.Stopped;
      case 1:
        return ERecorderStatus.Stopping;
      case 2:
        return ERecorderStatus.Starting;
      case 3:
        return ERecorderStatus.Recording;
      case 4:
        return ERecorderStatus.Restarting;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class RecorderConfiguration {
  String? logsDir;
  String? deviceModel;
  List<EDataType>? recordedTypes;
  RecorderConfiguration({
    this.logsDir,
    this.deviceModel,
    this.recordedTypes,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (logsDir != null) {
      json['logsDir'] = logsDir;
    }
    if (deviceModel != null) {
      json['deviceModel'] = deviceModel;
    }
    if (recordedTypes != null) {
      json['recordedTypes'] = recordedTypes!.map((type) => type.id).toList();
    }
    return json;
  }

  factory RecorderConfiguration.fromJson(Map<String, dynamic> json) {
    return RecorderConfiguration(
        logsDir: json['logsDir'],
        deviceModel: json['deviceModel'],
        recordedTypes: json['recordedTypes']);
  }
}

class Recorder {
  int _id;
  int get id => _id;
  Recorder() : _id = -1;
  Recorder.init(int id) : _id = id;
  static Recorder create(RecorderConfiguration config) {
    final resultString = GemKitPlatform.instance
        .callCreateObject(jsonEncode({'class': "Recorder", 'args': config}));
    final decodedVal = jsonDecode(resultString!);
    return Recorder.init(decodedVal['result']);
  }

  int startRecording() {
    final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
      'id': _id,
      'class': "Recorder",
      'method': "startRecording",
      'args': {}
    }));
    return jsonDecode(resultString!)['result'];
  }

  int stopRecording() {
    final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
      'id': _id,
      'class': "Recorder",
      'method': "stopRecording",
      'args': {}
    }));
    return jsonDecode(resultString!)['result'];
  }

  void dispose() {
    GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "Recorder", 'id': _id}));
  }
}

class RecorderBookmarks {
  int _id;
  int get id => _id;
  RecorderBookmarks() : _id = -1;
  RecorderBookmarks.init(int id) : _id = id;
  static RecorderBookmarks create(String path) {
    final resultString = GemKitPlatform.instance.callCreateObject(
        jsonEncode({'class': "RecorderBookmarks", 'args': path}));
    final decodedVal = jsonDecode(resultString!);
    return RecorderBookmarks.init(decodedVal['result']);
  }

  int exportLog(String logPath, EFileType type, {String? exportedFileName}) {
    final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
      'id': _id,
      'class': "RecorderBookmarks",
      'method': "exportLog",
      'args': {
        'logPath': logPath,
        'type': type.id,
        'exportedFileName': exportedFileName
      }
    }));
    return jsonDecode(resultString!)['result'];
  }

  List<String> getLogsList() {
    final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
      'id': _id,
      'class': "RecorderBookmarks",
      'method': "getLogsList",
      'args': {}
    }));
    return (jsonDecode(resultString!)['result']).cast<String>();
  }

  void dispose() {
    GemKitPlatform.instance.callDeleteObject(
        jsonEncode({'class': "RecorderBookmarks", 'id': _id}));
  }
}

class SoundMark {
  int? offsetMillis;
  Coordinates? coordinates;
  SoundMark({
    this.offsetMillis,
    this.coordinates,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (offsetMillis != null) {
      json['offsetMillis'] = offsetMillis;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    return json;
  }

  factory SoundMark.fromJson(Map<String, dynamic> json) {
    return SoundMark(
      offsetMillis: json['offsetMillis'],
      coordinates: json['coordinates'],
    );
  }
}
