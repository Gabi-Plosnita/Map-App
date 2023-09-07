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

enum TNavInfoType {
  ENavigationInstruction,
  ERouteInstruction,
  ETracking,
  EHeadUpDisplay,
  EAndroidAuto,
}

extension TNavInfoTypeExtension on TNavInfoType {
  int get id {
    switch (this) {
      case TNavInfoType.ENavigationInstruction:
        return 0;
      case TNavInfoType.ERouteInstruction:
        return 1;
      case TNavInfoType.ETracking:
        return 2;
      case TNavInfoType.EHeadUpDisplay:
        return 3;
      case TNavInfoType.EAndroidAuto:
        return 4;
      default:
        return -1;
    }
  }

  static TNavInfoType fromId(int id) {
    switch (id) {
      case 0:
        return TNavInfoType.ENavigationInstruction;
      case 1:
        return TNavInfoType.ERouteInstruction;
      case 2:
        return TNavInfoType.ETracking;
      case 3:
        return TNavInfoType.EHeadUpDisplay;
      case 4:
        return TNavInfoType.EAndroidAuto;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum THUDType {
  EOff,
  EType1,
  EType2,
  EType3,
  EType4,
}

extension THUDTypeExtension on THUDType {
  int get id {
    switch (this) {
      case THUDType.EOff:
        return 0;
      case THUDType.EType1:
        return 1;
      case THUDType.EType2:
        return 2;
      case THUDType.EType3:
        return 3;
      case THUDType.EType4:
        return 4;
      default:
        return -1;
    }
  }

  static THUDType fromId(int id) {
    switch (id) {
      case 0:
        return THUDType.EOff;
      case 1:
        return THUDType.EType1;
      case 2:
        return THUDType.EType2;
      case 3:
        return THUDType.EType3;
      case 4:
        return THUDType.EType4;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
