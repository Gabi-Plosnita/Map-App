// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_progresslistener.dart";
import "gem_markers.dart";

enum TPolyType {
  EPointsLatLon,
  EPointsLonLat,
  ERectLonLatLonLat,
  ERectLatLonLatLon,
}

extension TPolyTypeExtension on TPolyType {
  int get id {
    switch (this) {
      case TPolyType.EPointsLatLon:
        return 0;
      case TPolyType.EPointsLonLat:
        return 1;
      case TPolyType.ERectLonLatLonLat:
        return 2;
      case TPolyType.ERectLatLonLatLon:
        return 3;
      default:
        return -1;
    }
  }

  static TPolyType fromId(int id) {
    switch (id) {
      case 0:
        return TPolyType.EPointsLatLon;
      case 1:
        return TPolyType.EPointsLonLat;
      case 2:
        return TPolyType.ERectLonLatLonLat;
      case 3:
        return TPolyType.ERectLatLonLatLon;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TTerrainProfileHotArea {
  ENone,
  ETerrain,
  ESurface,
  EWaytype,
  ESteepness,
}

extension TTerrainProfileHotAreaExtension on TTerrainProfileHotArea {
  int get id {
    switch (this) {
      case TTerrainProfileHotArea.ENone:
        return 0;
      case TTerrainProfileHotArea.ETerrain:
        return 1;
      case TTerrainProfileHotArea.ESurface:
        return 2;
      case TTerrainProfileHotArea.EWaytype:
        return 3;
      case TTerrainProfileHotArea.ESteepness:
        return 4;
      default:
        return -1;
    }
  }

  static TTerrainProfileHotArea fromId(int id) {
    switch (id) {
      case 0:
        return TTerrainProfileHotArea.ENone;
      case 1:
        return TTerrainProfileHotArea.ETerrain;
      case 2:
        return TTerrainProfileHotArea.ESurface;
      case 3:
        return TTerrainProfileHotArea.EWaytype;
      case 4:
        return TTerrainProfileHotArea.ESteepness;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class StoreLocationResult {
  int? count;
  StoreLocationResult({
    this.count,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (count != null) {
      json['count'] = count;
    }
    return json;
  }

  factory StoreLocationResult.fromJson(Map<String, dynamic> json) {
    return StoreLocationResult(
      count: json['count'],
    );
  }
}

class StoreLocationLang {
  String? lang;
  int? count;
  StoreLocationLang({
    this.lang,
    this.count,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (lang != null) {
      json['lang'] = lang;
    }
    if (count != null) {
      json['count'] = count;
    }
    return json;
  }

  factory StoreLocationLang.fromJson(Map<String, dynamic> json) {
    return StoreLocationLang(
      lang: json['lang'],
      count: json['count'],
    );
  }
}
