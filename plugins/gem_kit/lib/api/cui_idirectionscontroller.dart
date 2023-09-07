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

enum TDirectionsViewType {
  EDirectionsView,
  EEditRouteView,
}

extension TDirectionsViewTypeExtension on TDirectionsViewType {
  int get id {
    switch (this) {
      case TDirectionsViewType.EDirectionsView:
        return 0;
      case TDirectionsViewType.EEditRouteView:
        return 1;
      default:
        return -1;
    }
  }

  static TDirectionsViewType fromId(int id) {
    switch (id) {
      case 0:
        return TDirectionsViewType.EDirectionsView;
      case 1:
        return TDirectionsViewType.EEditRouteView;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TDirectionsElementType {
  ERouteButton,
  EFrom,
  ETo,
  EVia,
  EAddWaypoint,
  EDeleteWaypoint,
  EGpxRoute,
  ESettings,
  EEditRoute,
  ERouteName,
  ESave,
}

extension TDirectionsElementTypeExtension on TDirectionsElementType {
  int get id {
    switch (this) {
      case TDirectionsElementType.ERouteButton:
        return 0;
      case TDirectionsElementType.EFrom:
        return 1;
      case TDirectionsElementType.ETo:
        return 2;
      case TDirectionsElementType.EVia:
        return 3;
      case TDirectionsElementType.EAddWaypoint:
        return 4;
      case TDirectionsElementType.EDeleteWaypoint:
        return 5;
      case TDirectionsElementType.EGpxRoute:
        return 6;
      case TDirectionsElementType.ESettings:
        return 7;
      case TDirectionsElementType.EEditRoute:
        return 8;
      case TDirectionsElementType.ERouteName:
        return 9;
      case TDirectionsElementType.ESave:
        return 10;
      default:
        return -1;
    }
  }

  static TDirectionsElementType fromId(int id) {
    switch (id) {
      case 0:
        return TDirectionsElementType.ERouteButton;
      case 1:
        return TDirectionsElementType.EFrom;
      case 2:
        return TDirectionsElementType.ETo;
      case 3:
        return TDirectionsElementType.EVia;
      case 4:
        return TDirectionsElementType.EAddWaypoint;
      case 5:
        return TDirectionsElementType.EDeleteWaypoint;
      case 6:
        return TDirectionsElementType.EGpxRoute;
      case 7:
        return TDirectionsElementType.ESettings;
      case 8:
        return TDirectionsElementType.EEditRoute;
      case 9:
        return TDirectionsElementType.ERouteName;
      case 10:
        return TDirectionsElementType.ESave;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
