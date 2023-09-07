// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "dart:typed_data";

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_images.dart";
import "gem_timedistancecoordinates.dart";
import "gem_parameters.dart";
import "gem_transferstatistics.dart";
import "gem_coordinates.dart";
import "dart:convert";
import "gem_progresslistener.dart";
import "gem_time.dart";

enum EDaylight {
  NotAvailable,
  Day,
  Night,
}

extension EDaylightExtension on EDaylight {
  int get id {
    switch (this) {
      case EDaylight.NotAvailable:
        return 0;
      case EDaylight.Day:
        return 1;
      case EDaylight.Night:
        return 2;
      default:
        return -1;
    }
  }

  static EDaylight fromId(int id) {
    switch (id) {
      case 0:
        return EDaylight.NotAvailable;
      case 1:
        return EDaylight.Day;
      case 2:
        return EDaylight.Night;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class LocationForecastList {
  dynamic _id;
  dynamic get id => _id;
  LocationForecastList() : _id = -1;
  LocationForecastList.init(int id) : _id = id;
  static LocationForecastList create() {
    final resultString = GemKitPlatform.instance
        .callCreateObject(jsonEncode({'class': "LocationForecastList"}));
    final decodedVal = jsonDecode(resultString!);
    return LocationForecastList.init(decodedVal['result']);
  }

  List<LocationForecast> getJson() {
    final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
      'id': _id,
      'class': "LocationForecastList",
      'method': "getJson",
      'args': {}
    }));
    final decodedVal = jsonDecode(resultString!);
    final listJson = decodedVal['result'] as List<dynamic>;
    List<LocationForecast> retList = listJson
        .map((categoryJson) => LocationForecast.fromJson(categoryJson))
        .toList();
    return retList;
  }

  void dispose() {
    GemKitPlatform.instance.callDeleteObject(
        jsonEncode({'class': "LocationForecastList", 'id': _id}));
  }
}

class WeatherService {
  static Future<ProgressListener> getCurrent(List<Coordinates> pCoords,
      void Function(int, List<LocationForecast>?) onCompleteCallback) async {
    final result = LocationForecastList.create();
    final resultString =
        await GemKitPlatform.instance.getChannel(mapId: 0).invokeMethod<String>(
            'callObjectMethod',
            jsonEncode({
              'id': 0,
              'class': "Weather",
              'method': "getCurrent",
              'args': {'coords': pCoords, 'result': result.id}
            }));
    final decodedVal = jsonDecode(resultString!);
    final progListener = ProgressListener.init(decodedVal['result'], 0);
    progListener.registerOnCompleteWithDataCallback((err, hint, json) {
      if (err == 0) {
        onCompleteCallback(err, result.getJson());
        result.dispose();
      } else {
        onCompleteCallback(err, null);
      }
    });
    GemKitPlatform.instance.registerEventHandler(progListener.id, progListener);
    return progListener;
  }

  static Future<ProgressListener> getForecast(
      List<TimeDistanceCoordinate> pCoords,
      void Function(int, List<LocationForecast>?) onCompleteCallback) async {
    final result = LocationForecastList.create();
    final resultString =
        await GemKitPlatform.instance.getChannel(mapId: 0).invokeMethod<String>(
            'callObjectMethod',
            jsonEncode({
              'id': 0,
              'class': "Weather",
              'method': "getForecast",
              'args': {'coords': pCoords, 'result': result.id}
            }));
    final decodedVal = jsonDecode(resultString!);
    final progListener = ProgressListener.init(decodedVal['result'], 0);
    progListener.registerOnCompleteWithDataCallback((err, hint, json) {
      if (err == 0) {
        onCompleteCallback(err, result.getJson());
        result.dispose();
      } else {
        onCompleteCallback(err, null);
      }
    });
    GemKitPlatform.instance.registerEventHandler(progListener.id, progListener);
    return progListener;
  }

  static Future<ProgressListener> getHourlyForecast(
      int hours,
      List<Coordinates> pCoords,
      void Function(int, List<LocationForecast>?) onCompleteCallback) async {
    final result = LocationForecastList.create();
    final resultString =
        await GemKitPlatform.instance.getChannel(mapId: 0).invokeMethod<String>(
            'callObjectMethod',
            jsonEncode({
              'id': 0,
              'class': "Weather",
              'method': "getHourlyForecast",
              'args': {'hours': hours, 'coords': pCoords, 'result': result.id}
            }));
    final decodedVal = jsonDecode(resultString!);
    final progListener = ProgressListener.init(decodedVal['result'], 0);
    progListener.registerOnCompleteWithDataCallback((err, hint, json) {
      if (err == 0) {
        onCompleteCallback(err, result.getJson());
        result.dispose();
      } else {
        onCompleteCallback(err, null);
      }
    });
    GemKitPlatform.instance.registerEventHandler(progListener.id, progListener);
    return progListener;
  }

  static Future<ProgressListener> getDailyForecast(
      int days,
      List<Coordinates> pCoords,
      void Function(int, List<LocationForecast>?) onCompleteCallback) async {
    final result = LocationForecastList.create();
    final resultString =
        await GemKitPlatform.instance.getChannel(mapId: 0).invokeMethod<String>(
            'callObjectMethod',
            jsonEncode({
              'id': 0,
              'class': "Weather",
              'method': "getDailyForecast",
              'args': {'days': days, 'coords': pCoords, 'result': result.id}
            }));
    final decodedVal = jsonDecode(resultString!);
    final progListener = ProgressListener.init(decodedVal['result'], 0);
    progListener.registerOnCompleteWithDataCallback((err, hint, json) {
      if (err == 0) {
        onCompleteCallback(err, result.getJson());
        result.dispose();
      } else {
        onCompleteCallback(err, null);
      }
    });
    GemKitPlatform.instance.registerEventHandler(progListener.id, progListener);
    return progListener;
  }
}

class Parameter {
  String? type;
  double? value;
  String? name;
  String? unit;
  Parameter({
    this.type,
    this.value,
    this.name,
    this.unit,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (type != null) {
      json['type'] = type;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (unit != null) {
      json['unit'] = unit;
    }
    return json;
  }

  factory Parameter.fromJson(Map<String, dynamic> json) {
    return Parameter(
      type: json['type'],
      value: json['value'],
      name: json['name'],
      unit: json['unit'],
    );
  }
}

class Conditions {
  String? type;
  Time? stamp;
  Uint8List? image;
  String? description;
  EDaylight? daylight;
  List<Parameter>? params;
  Conditions({
    this.type,
    this.stamp,
    this.image,
    this.description,
    this.daylight,
    this.params,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (type != null) {
      json['type'] = type;
    }
    if (stamp != null) {
      json['stamp'] = stamp;
    }
    if (image != null) {
      json['image'] = image;
    }
    if (description != null) {
      json['description'] = description;
    }
    if (daylight != null) {
      json['daylight'] = daylight!.id;
    }
    if (params != null) {
      json['params'] = params;
    }
    return json;
  }

  factory Conditions.fromJson(Map<String, dynamic> json) {
    return Conditions(
      type: json['type'],
      stamp: json['stamp'],
      image: Uint8List.fromList(json['image'].cast<int>()),
      description: json['description'],
      daylight: EDaylightExtension.fromId(json['daylight']),
      params: (json['params'] as List<dynamic>)
          .map((categoryJson) => Parameter.fromJson(categoryJson))
          .toList(),
    );
  }
}

class LocationForecast {
  Time? updated;
  Coordinates? coord;
  List<Conditions>? forecast;
  LocationForecast({
    this.updated,
    this.coord,
    this.forecast,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (updated != null) {
      json['updated'] = updated;
    }
    if (coord != null) {
      json['coord'] = coord;
    }
    if (forecast != null) {
      json['forecast'] = forecast;
    }
    return json;
  }

  factory LocationForecast.fromJson(Map<String, dynamic> json) {
    return LocationForecast(
      updated: json['updated'],
      coord: Coordinates.fromJson(json['coord']),
      forecast: (json['forecast'] as List<dynamic>)
          .map((categoryJson) => Conditions.fromJson(categoryJson))
          .toList(),
    );
  }
}
