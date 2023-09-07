// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_coordinates.dart";
import "gem_time.dart";

class TimeDistanceCoordinate {
  Coordinates? coords;
  int? distance;
  int? stamp;
  TimeDistanceCoordinate({
    this.coords,
    this.distance,
    this.stamp,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (coords != null) {
      json['coords'] = coords;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (stamp != null) {
      json['stamp'] = stamp;
    }
    return json;
  }

  factory TimeDistanceCoordinate.fromJson(Map<String, dynamic> json) {
    return TimeDistanceCoordinate(
      coords: json['coords'],
      distance: json['distance'],
      stamp: json['stamp'],
    );
  }
}
