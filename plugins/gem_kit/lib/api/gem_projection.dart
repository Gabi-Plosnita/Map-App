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

enum EHemisphere {
  HEM_South,
  HEM_North,
}

extension EHemisphereExtension on EHemisphere {
  int get id {
    switch (this) {
      case EHemisphere.HEM_South:
        return 0;
      case EHemisphere.HEM_North:
        return 1;
      default:
        return -1;
    }
  }

  static EHemisphere fromId(int id) {
    switch (id) {
      case 0:
        return EHemisphere.HEM_South;
      case 1:
        return EHemisphere.HEM_North;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EProjectionType {
  EPR_Bng,
  EPR_Lam,
  EPR_Utm,
  EPR_Mgrs,
  EPR_Gk,
  EPR_Wgs84,
  EPR_WhatThreeWords,
  EPR_Undefined,
}

extension EProjectionTypeExtension on EProjectionType {
  int get id {
    switch (this) {
      case EProjectionType.EPR_Bng:
        return 0;
      case EProjectionType.EPR_Lam:
        return 1;
      case EProjectionType.EPR_Utm:
        return 2;
      case EProjectionType.EPR_Mgrs:
        return 3;
      case EProjectionType.EPR_Gk:
        return 4;
      case EProjectionType.EPR_Wgs84:
        return 5;
      case EProjectionType.EPR_WhatThreeWords:
        return 6;
      case EProjectionType.EPR_Undefined:
        return 7;
      default:
        return -1;
    }
  }

  static EProjectionType fromId(int id) {
    switch (id) {
      case 0:
        return EProjectionType.EPR_Bng;
      case 1:
        return EProjectionType.EPR_Lam;
      case 2:
        return EProjectionType.EPR_Utm;
      case 3:
        return EProjectionType.EPR_Mgrs;
      case 4:
        return EProjectionType.EPR_Gk;
      case 5:
        return EProjectionType.EPR_Wgs84;
      case 6:
        return EProjectionType.EPR_WhatThreeWords;
      case 7:
        return EProjectionType.EPR_Undefined;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Projection_LAM {
  double? x;
  double? y;
  Projection_LAM({
    this.x,
    this.y,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }

  factory Projection_LAM.fromJson(Map<String, dynamic> json) {
    return Projection_LAM(
      x: json['x'],
      y: json['y'],
    );
  }
}

class Projection_WGS84 {
  Coordinates? coordinates;
  Projection_WGS84({
    this.coordinates,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    return json;
  }

  factory Projection_WGS84.fromJson(Map<String, dynamic> json) {
    return Projection_WGS84(
      coordinates: json['coordinates'],
    );
  }
}

class Projection_MGRS {
  int? easting;
  int? northing;
  String? zone;
  String? sq100kidentifier;
  Projection_MGRS({
    this.easting,
    this.northing,
    this.zone,
    this.sq100kidentifier,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (easting != null) {
      json['easting'] = easting;
    }
    if (northing != null) {
      json['northing'] = northing;
    }
    if (zone != null) {
      json['zone'] = zone;
    }
    if (sq100kidentifier != null) {
      json['sq100kidentifier'] = sq100kidentifier;
    }
    return json;
  }

  factory Projection_MGRS.fromJson(Map<String, dynamic> json) {
    return Projection_MGRS(
      easting: json['easting'],
      northing: json['northing'],
      zone: json['zone'],
      sq100kidentifier: json['sq100kidentifier'],
    );
  }
}

class Projection_BNG {
  String? gridreference;
  double? easting;
  double? northing;
  Projection_BNG({
    this.gridreference,
    this.easting,
    this.northing,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (gridreference != null) {
      json['gridreference'] = gridreference;
    }
    if (easting != null) {
      json['easting'] = easting;
    }
    if (northing != null) {
      json['northing'] = northing;
    }
    return json;
  }

  factory Projection_BNG.fromJson(Map<String, dynamic> json) {
    return Projection_BNG(
      gridreference: json['gridreference'],
      easting: json['easting'],
      northing: json['northing'],
    );
  }
}

class Projection_GK {
  double? easting;
  double? northing;
  int? zone;
  Projection_GK({
    this.easting,
    this.northing,
    this.zone,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (easting != null) {
      json['easting'] = easting;
    }
    if (northing != null) {
      json['northing'] = northing;
    }
    if (zone != null) {
      json['zone'] = zone;
    }
    return json;
  }

  factory Projection_GK.fromJson(Map<String, dynamic> json) {
    return Projection_GK(
      easting: json['easting'],
      northing: json['northing'],
      zone: json['zone'],
    );
  }
}

class Projection_UTM {
  double? x;
  double? y;
  int? zone;
  EHemisphere? hemisphere;
  Projection_UTM({
    this.x,
    this.y,
    this.zone,
    this.hemisphere,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    if (zone != null) {
      json['zone'] = zone;
    }
    if (hemisphere != null) {
      json['hemisphere'] = hemisphere!.id;
    }
    return json;
  }

  factory Projection_UTM.fromJson(Map<String, dynamic> json) {
    return Projection_UTM(
      x: json['x'],
      y: json['y'],
      zone: json['zone'],
      hemisphere: json['hemisphere'],
    );
  }
}

class Projection_W3W {
  String? words;
  String? token;
  Projection_W3W({
    this.words,
    this.token,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (words != null) {
      json['words'] = words;
    }
    if (token != null) {
      json['token'] = token;
    }
    return json;
  }

  factory Projection_W3W.fromJson(Map<String, dynamic> json) {
    return Projection_W3W(
      words: json['words'],
      token: json['token'],
    );
  }
}
