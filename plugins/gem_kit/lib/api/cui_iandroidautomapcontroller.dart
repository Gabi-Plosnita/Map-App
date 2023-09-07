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

enum TMapState {
  EUnknown,
  EMapBrowsing,
  EMapFollowGpsWithMenu,
  EMapFollowGps3D,
  EMapFollowGps2D,
  EMapFollowGpsZoomed,
  ERouteOverview,
  ENavigationBrowsing,
  ENavigationFollowGps3D,
  ENavigationFollowGps2D,
  ENavigationFollowGpsZoomed,
  ENavigationRouteOverview,
  ESelectMapDestination,
  EBetterRouteOverview,
}

extension TMapStateExtension on TMapState {
  int get id {
    switch (this) {
      case TMapState.EUnknown:
        return 0;
      case TMapState.EMapBrowsing:
        return 1;
      case TMapState.EMapFollowGpsWithMenu:
        return 2;
      case TMapState.EMapFollowGps3D:
        return 3;
      case TMapState.EMapFollowGps2D:
        return 4;
      case TMapState.EMapFollowGpsZoomed:
        return 5;
      case TMapState.ERouteOverview:
        return 6;
      case TMapState.ENavigationBrowsing:
        return 7;
      case TMapState.ENavigationFollowGps3D:
        return 8;
      case TMapState.ENavigationFollowGps2D:
        return 9;
      case TMapState.ENavigationFollowGpsZoomed:
        return 10;
      case TMapState.ENavigationRouteOverview:
        return 11;
      case TMapState.ESelectMapDestination:
        return 12;
      case TMapState.EBetterRouteOverview:
        return 13;
      default:
        return -1;
    }
  }

  static TMapState fromId(int id) {
    switch (id) {
      case 0:
        return TMapState.EUnknown;
      case 1:
        return TMapState.EMapBrowsing;
      case 2:
        return TMapState.EMapFollowGpsWithMenu;
      case 3:
        return TMapState.EMapFollowGps3D;
      case 4:
        return TMapState.EMapFollowGps2D;
      case 5:
        return TMapState.EMapFollowGpsZoomed;
      case 6:
        return TMapState.ERouteOverview;
      case 7:
        return TMapState.ENavigationBrowsing;
      case 8:
        return TMapState.ENavigationFollowGps3D;
      case 9:
        return TMapState.ENavigationFollowGps2D;
      case 10:
        return TMapState.ENavigationFollowGpsZoomed;
      case 11:
        return TMapState.ENavigationRouteOverview;
      case 12:
        return TMapState.ESelectMapDestination;
      case 13:
        return TMapState.EBetterRouteOverview;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TAndroidAutoButtonType {
  EUnknown,
  ESearch,
  ESearchWithPOIs,
  ESettings,
  ERouteOverview,
  EStopNavigation,
  EZoomIn,
  EZoomOut,
  EFollowGpsPosition,
  E2D,
  E3D,
  ESelectDestination,
  ECancelDestinationSelection,
  EMenu,
  EReportEvent,
  EPanStandard,
  EBackStandard,
  EAppIconStandard,
  EThumbUp,
  EThumbDown,
}

extension TAndroidAutoButtonTypeExtension on TAndroidAutoButtonType {
  int get id {
    switch (this) {
      case TAndroidAutoButtonType.EUnknown:
        return 0;
      case TAndroidAutoButtonType.ESearch:
        return 1;
      case TAndroidAutoButtonType.ESearchWithPOIs:
        return 2;
      case TAndroidAutoButtonType.ESettings:
        return 3;
      case TAndroidAutoButtonType.ERouteOverview:
        return 4;
      case TAndroidAutoButtonType.EStopNavigation:
        return 5;
      case TAndroidAutoButtonType.EZoomIn:
        return 6;
      case TAndroidAutoButtonType.EZoomOut:
        return 7;
      case TAndroidAutoButtonType.EFollowGpsPosition:
        return 8;
      case TAndroidAutoButtonType.E2D:
        return 9;
      case TAndroidAutoButtonType.E3D:
        return 10;
      case TAndroidAutoButtonType.ESelectDestination:
        return 11;
      case TAndroidAutoButtonType.ECancelDestinationSelection:
        return 12;
      case TAndroidAutoButtonType.EMenu:
        return 13;
      case TAndroidAutoButtonType.EReportEvent:
        return 14;
      case TAndroidAutoButtonType.EPanStandard:
        return 15;
      case TAndroidAutoButtonType.EBackStandard:
        return 16;
      case TAndroidAutoButtonType.EAppIconStandard:
        return 17;
      case TAndroidAutoButtonType.EThumbUp:
        return 18;
      case TAndroidAutoButtonType.EThumbDown:
        return 19;
      default:
        return -1;
    }
  }

  static TAndroidAutoButtonType fromId(int id) {
    switch (id) {
      case 0:
        return TAndroidAutoButtonType.EUnknown;
      case 1:
        return TAndroidAutoButtonType.ESearch;
      case 2:
        return TAndroidAutoButtonType.ESearchWithPOIs;
      case 3:
        return TAndroidAutoButtonType.ESettings;
      case 4:
        return TAndroidAutoButtonType.ERouteOverview;
      case 5:
        return TAndroidAutoButtonType.EStopNavigation;
      case 6:
        return TAndroidAutoButtonType.EZoomIn;
      case 7:
        return TAndroidAutoButtonType.EZoomOut;
      case 8:
        return TAndroidAutoButtonType.EFollowGpsPosition;
      case 9:
        return TAndroidAutoButtonType.E2D;
      case 10:
        return TAndroidAutoButtonType.E3D;
      case 11:
        return TAndroidAutoButtonType.ESelectDestination;
      case 12:
        return TAndroidAutoButtonType.ECancelDestinationSelection;
      case 13:
        return TAndroidAutoButtonType.EMenu;
      case 14:
        return TAndroidAutoButtonType.EReportEvent;
      case 15:
        return TAndroidAutoButtonType.EPanStandard;
      case 16:
        return TAndroidAutoButtonType.EBackStandard;
      case 17:
        return TAndroidAutoButtonType.EAppIconStandard;
      case 18:
        return TAndroidAutoButtonType.EThumbUp;
      case 19:
        return TAndroidAutoButtonType.EThumbDown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TTrafficColor {
  EGreen,
  EYellow,
  ERed,
}

extension TTrafficColorExtension on TTrafficColor {
  int get id {
    switch (this) {
      case TTrafficColor.EGreen:
        return 0;
      case TTrafficColor.EYellow:
        return 1;
      case TTrafficColor.ERed:
        return 2;
      default:
        return -1;
    }
  }

  static TTrafficColor fromId(int id) {
    switch (id) {
      case 0:
        return TTrafficColor.EGreen;
      case 1:
        return TTrafficColor.EYellow;
      case 2:
        return TTrafficColor.ERed;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
