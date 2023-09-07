// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_coordinates.dart";

class CoordinatesList {}

enum EGeographicAreaType {
  GA_Undefined,
  GA_Circle,
  GA_Rectangle,
  GA_Polygon,
  GA_TileCollection,
}

extension EGeographicAreaTypeExtension on EGeographicAreaType {
  int get id {
    switch (this) {
      case EGeographicAreaType.GA_Undefined:
        return 0;
      case EGeographicAreaType.GA_Circle:
        return 1;
      case EGeographicAreaType.GA_Rectangle:
        return 2;
      case EGeographicAreaType.GA_Polygon:
        return 3;
      case EGeographicAreaType.GA_TileCollection:
        return 4;
      default:
        return -1;
    }
  }

  static EGeographicAreaType fromId(int id) {
    switch (id) {
      case 0:
        return EGeographicAreaType.GA_Undefined;
      case 1:
        return EGeographicAreaType.GA_Circle;
      case 2:
        return EGeographicAreaType.GA_Rectangle;
      case 3:
        return EGeographicAreaType.GA_Polygon;
      case 4:
        return EGeographicAreaType.GA_TileCollection;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class RectangleGeographicArea {
  Coordinates? topleft;
  Coordinates? bottomright;
  RectangleGeographicArea({
    this.topleft,
    this.bottomright,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (topleft != null) {
      json['topleft'] = topleft;
    }
    if (bottomright != null) {
      json['bottomright'] = bottomright;
    }
    return json;
  }

  factory RectangleGeographicArea.fromJson(Map<String, dynamic> json) {
    return RectangleGeographicArea(
      topleft: json['topleft'],
      bottomright: json['bottomright'],
    );
  }
}

class CircleGeographicArea {
  int? radius;
  CircleGeographicArea({
    this.radius,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (radius != null) {
      json['radius'] = radius;
    }
    return json;
  }

  factory CircleGeographicArea.fromJson(Map<String, dynamic> json) {
    return CircleGeographicArea(
      radius: json['radius'],
    );
  }
}

class PolygonGeographicArea {
  CoordinatesList? coordinates;
  PolygonGeographicArea({
    this.coordinates,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    return json;
  }

  factory PolygonGeographicArea.fromJson(Map<String, dynamic> json) {
    return PolygonGeographicArea(
      coordinates: json['coordinates'],
    );
  }
}
