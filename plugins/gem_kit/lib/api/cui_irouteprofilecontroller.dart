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

enum TRouteProfileSectionType {
  EElevation,
  EClimbDetails,
  EWays,
  ESurfaces,
  ESteepnesses,
}

extension TRouteProfileSectionTypeExtension on TRouteProfileSectionType {
  int get id {
    switch (this) {
      case TRouteProfileSectionType.EElevation:
        return 0;
      case TRouteProfileSectionType.EClimbDetails:
        return 1;
      case TRouteProfileSectionType.EWays:
        return 2;
      case TRouteProfileSectionType.ESurfaces:
        return 3;
      case TRouteProfileSectionType.ESteepnesses:
        return 4;
      default:
        return -1;
    }
  }

  static TRouteProfileSectionType fromId(int id) {
    switch (id) {
      case 0:
        return TRouteProfileSectionType.EElevation;
      case 1:
        return TRouteProfileSectionType.EClimbDetails;
      case 2:
        return TRouteProfileSectionType.EWays;
      case 3:
        return TRouteProfileSectionType.ESurfaces;
      case 4:
        return TRouteProfileSectionType.ESteepnesses;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TElevationProfileButtonType {
  EElevationAtDeparture,
  EElevationAtDestination,
  EMinElevation,
  EMaxElevation,
}

extension TElevationProfileButtonTypeExtension on TElevationProfileButtonType {
  int get id {
    switch (this) {
      case TElevationProfileButtonType.EElevationAtDeparture:
        return 0;
      case TElevationProfileButtonType.EElevationAtDestination:
        return 1;
      case TElevationProfileButtonType.EMinElevation:
        return 2;
      case TElevationProfileButtonType.EMaxElevation:
        return 3;
      default:
        return -1;
    }
  }

  static TElevationProfileButtonType fromId(int id) {
    switch (id) {
      case 0:
        return TElevationProfileButtonType.EElevationAtDeparture;
      case 1:
        return TElevationProfileButtonType.EElevationAtDestination;
      case 2:
        return TElevationProfileButtonType.EMinElevation;
      case 3:
        return TElevationProfileButtonType.EMaxElevation;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TTouchChartEvent {
  EDown,
  EMove,
  EUp,
}

extension TTouchChartEventExtension on TTouchChartEvent {
  int get id {
    switch (this) {
      case TTouchChartEvent.EDown:
        return 0;
      case TTouchChartEvent.EMove:
        return 1;
      case TTouchChartEvent.EUp:
        return 2;
      default:
        return -1;
    }
  }

  static TTouchChartEvent fromId(int id) {
    switch (id) {
      case 0:
        return TTouchChartEvent.EDown;
      case 1:
        return TTouchChartEvent.EMove;
      case 2:
        return TTouchChartEvent.EUp;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TClimbDetailsInfoType {
  ERating,
  EStartEndPoints,
  EStartEndElevation,
  ELength,
  EAvgGrade,
}

extension TClimbDetailsInfoTypeExtension on TClimbDetailsInfoType {
  int get id {
    switch (this) {
      case TClimbDetailsInfoType.ERating:
        return 0;
      case TClimbDetailsInfoType.EStartEndPoints:
        return 1;
      case TClimbDetailsInfoType.EStartEndElevation:
        return 2;
      case TClimbDetailsInfoType.ELength:
        return 3;
      case TClimbDetailsInfoType.EAvgGrade:
        return 4;
      default:
        return -1;
    }
  }

  static TClimbDetailsInfoType fromId(int id) {
    switch (id) {
      case 0:
        return TClimbDetailsInfoType.ERating;
      case 1:
        return TClimbDetailsInfoType.EStartEndPoints;
      case 2:
        return TClimbDetailsInfoType.EStartEndElevation;
      case 3:
        return TClimbDetailsInfoType.ELength;
      case 4:
        return TClimbDetailsInfoType.EAvgGrade;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
