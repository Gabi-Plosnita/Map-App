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
import "dart:math";

enum EMainSceneObjects {
  SO_Earth,
}

extension EMainSceneObjectsExtension on EMainSceneObjects {
  int get id {
    switch (this) {
      case EMainSceneObjects.SO_Earth:
        return 0;
      default:
        return -1;
    }
  }

  static EMainSceneObjects fromId(int id) {
    switch (id) {
      case 0:
        return EMainSceneObjects.SO_Earth;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

/// Create a coordinates object from latitude, longitude and altitude.
///
/// **Parameters**
/// * **IN** *latitude* Latitude in degrees. Valid values **-90.0 - +90.0**.
/// * **IN** *longitude* Longitude in degrees. Valid values **-180.0 - +180.0**.
/// * **IN** *altitude* Altitude in meters.
/// * **IN** *horizontalaccuracy* Latitude / longitude accuracy in meters. Deprecated, will be ignored.
/// * **IN** *verticalaccuracy* Altitude accuracy in meters. Deprecated, will be ignored.
/// * **IN** *sceneobject* Parent scene object in which coordinates system values are expressed.

class Coordinates {
  double? latitude;
  double? longitude;
  double? altitude;
  double? horizontalaccuracy;
  double? verticalaccuracy;
  int? sceneobject;
  Coordinates({
    this.latitude,
    this.longitude,
    this.altitude,
    this.horizontalaccuracy,
    this.verticalaccuracy,
    this.sceneobject,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (latitude != null) {
      json['latitude'] = latitude;
    }
    if (longitude != null) {
      json['longitude'] = longitude;
    }
    if (altitude != null) {
      json['altitude'] = altitude;
    }
    if (horizontalaccuracy != null) {
      json['horizontalaccuracy'] = horizontalaccuracy;
    }
    if (verticalaccuracy != null) {
      json['verticalaccuracy'] = verticalaccuracy;
    }
    if (sceneobject != null) {
      json['sceneobject'] = sceneobject;
    }
    return json;
  }

  double distance(Coordinates other) {
    const double earthRadius = 6371000; // Earth's radius in meters

    double toRadians(double value) {
      return value * pi / 180; // Convert degrees to radians
    }

    double deltaLatitude = toRadians(other.latitude! - latitude!);
    double deltaLongitude = toRadians(other.longitude! - longitude!);

    double a = sin(deltaLatitude / 2) * sin(deltaLatitude / 2) +
        cos(toRadians(latitude!)) *
            cos(toRadians(other.latitude!)) *
            sin(deltaLongitude / 2) *
            sin(deltaLongitude / 2);

    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    double altitudeDifference = 0;
    if (other.altitude != null && altitude != null) {
      altitudeDifference = other.altitude! - altitude!;
    }

    double distance = sqrt((c * c * earthRadius * earthRadius) +
        (altitudeDifference * altitudeDifference));

    return distance;
  }

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      latitude: json['latitude'],
      longitude: json['longitude'],
      altitude: json['altitude'],
      horizontalaccuracy: json['horizontalaccuracy'],
      verticalaccuracy: json['verticalaccuracy'],
      sceneobject: json['sceneobject'],
    );
  }
}
