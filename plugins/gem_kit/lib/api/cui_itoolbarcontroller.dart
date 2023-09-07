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

enum TToolbarType {
  ENone,
  ESetDepartureWaypoint,
  ESetIntermediateWaypoint,
  ESetDestinationWaypoint,
  ERouteOverviewTop,
  ERouteOverviewBottom,
  EMapTop,
  EMapBottom,
  ESetHome,
  ESetWork,
  EBetterRoute,
}

extension TToolbarTypeExtension on TToolbarType {
  int get id {
    switch (this) {
      case TToolbarType.ENone:
        return -1;
      case TToolbarType.ESetDepartureWaypoint:
        return 1;
      case TToolbarType.ESetIntermediateWaypoint:
        return 2;
      case TToolbarType.ESetDestinationWaypoint:
        return 3;
      case TToolbarType.ERouteOverviewTop:
        return 4;
      case TToolbarType.ERouteOverviewBottom:
        return 5;
      case TToolbarType.EMapTop:
        return 6;
      case TToolbarType.EMapBottom:
        return 7;
      case TToolbarType.ESetHome:
        return 8;
      case TToolbarType.ESetWork:
        return 9;
      case TToolbarType.EBetterRoute:
        return 10;
      default:
        return -1;
    }
  }

  static TToolbarType fromId(int id) {
    switch (id) {
      case -1:
        return TToolbarType.ENone;
      case 1:
        return TToolbarType.ESetDepartureWaypoint;
      case 2:
        return TToolbarType.ESetIntermediateWaypoint;
      case 3:
        return TToolbarType.ESetDestinationWaypoint;
      case 4:
        return TToolbarType.ERouteOverviewTop;
      case 5:
        return TToolbarType.ERouteOverviewBottom;
      case 6:
        return TToolbarType.EMapTop;
      case 7:
        return TToolbarType.EMapBottom;
      case 8:
        return TToolbarType.ESetHome;
      case 9:
        return TToolbarType.ESetWork;
      case 10:
        return TToolbarType.EBetterRoute;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TToolbarButtonType {
  EText,
  EAddWaypoint,
  ERouteDescription,
  ERouteProfile,
  ESearch,
  EMapStyles,
  EMaps,
  ESettings,
  ETime,
  EDashCam,
}

extension TToolbarButtonTypeExtension on TToolbarButtonType {
  int get id {
    switch (this) {
      case TToolbarButtonType.EText:
        return 0;
      case TToolbarButtonType.EAddWaypoint:
        return 1;
      case TToolbarButtonType.ERouteDescription:
        return 2;
      case TToolbarButtonType.ERouteProfile:
        return 3;
      case TToolbarButtonType.ESearch:
        return 4;
      case TToolbarButtonType.EMapStyles:
        return 5;
      case TToolbarButtonType.EMaps:
        return 6;
      case TToolbarButtonType.ESettings:
        return 7;
      case TToolbarButtonType.ETime:
        return 8;
      case TToolbarButtonType.EDashCam:
        return 9;
      default:
        return -1;
    }
  }

  static TToolbarButtonType fromId(int id) {
    switch (id) {
      case 0:
        return TToolbarButtonType.EText;
      case 1:
        return TToolbarButtonType.EAddWaypoint;
      case 2:
        return TToolbarButtonType.ERouteDescription;
      case 3:
        return TToolbarButtonType.ERouteProfile;
      case 4:
        return TToolbarButtonType.ESearch;
      case 5:
        return TToolbarButtonType.EMapStyles;
      case 6:
        return TToolbarButtonType.EMaps;
      case 7:
        return TToolbarButtonType.ESettings;
      case 8:
        return TToolbarButtonType.ETime;
      case 9:
        return TToolbarButtonType.EDashCam;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
