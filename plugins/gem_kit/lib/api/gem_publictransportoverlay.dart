// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum ERouteType {
  RT_Bus,
  RT_Underground,
  RT_Railway,
  RT_Tram,
  RT_Water_Transport,
  RT_Misc,
}

extension ERouteTypeExtension on ERouteType {
  int get id {
    switch (this) {
      case ERouteType.RT_Bus:
        return 0;
      case ERouteType.RT_Underground:
        return 1;
      case ERouteType.RT_Railway:
        return 2;
      case ERouteType.RT_Tram:
        return 3;
      case ERouteType.RT_Water_Transport:
        return 4;
      case ERouteType.RT_Misc:
        return 5;
      default:
        return -1;
    }
  }

  static ERouteType fromId(int id) {
    switch (id) {
      case 0:
        return ERouteType.RT_Bus;
      case 1:
        return ERouteType.RT_Underground;
      case 2:
        return ERouteType.RT_Railway;
      case 3:
        return ERouteType.RT_Tram;
      case 4:
        return ERouteType.RT_Water_Transport;
      case 5:
        return ERouteType.RT_Misc;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EWheelchairAccessible {
  WA_NoInfo,
  WA_Yes,
  WA_No,
}

extension EWheelchairAccessibleExtension on EWheelchairAccessible {
  int get id {
    switch (this) {
      case EWheelchairAccessible.WA_NoInfo:
        return 0;
      case EWheelchairAccessible.WA_Yes:
        return 1;
      case EWheelchairAccessible.WA_No:
        return 2;
      default:
        return -1;
    }
  }

  static EWheelchairAccessible fromId(int id) {
    switch (id) {
      case 0:
        return EWheelchairAccessible.WA_NoInfo;
      case 1:
        return EWheelchairAccessible.WA_Yes;
      case 2:
        return EWheelchairAccessible.WA_No;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EBikesAllowed {
  BA_NoInfo,
  BA_Yes,
  BA_No,
}

extension EBikesAllowedExtension on EBikesAllowed {
  int get id {
    switch (this) {
      case EBikesAllowed.BA_NoInfo:
        return 0;
      case EBikesAllowed.BA_Yes:
        return 1;
      case EBikesAllowed.BA_No:
        return 2;
      default:
        return -1;
    }
  }

  static EBikesAllowed fromId(int id) {
    switch (id) {
      case 0:
        return EBikesAllowed.BA_NoInfo;
      case 1:
        return EBikesAllowed.BA_Yes;
      case 2:
        return EBikesAllowed.BA_No;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
