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

enum TDialogType {
  EText,
  EPrivacy,
  EPrivacyWithStamp,
  ENavigationDisclaimer,
  ETextWithProgressBar,
}

extension TDialogTypeExtension on TDialogType {
  int get id {
    switch (this) {
      case TDialogType.EText:
        return 0;
      case TDialogType.EPrivacy:
        return 1;
      case TDialogType.EPrivacyWithStamp:
        return 2;
      case TDialogType.ENavigationDisclaimer:
        return 3;
      case TDialogType.ETextWithProgressBar:
        return 4;
      default:
        return -1;
    }
  }

  static TDialogType fromId(int id) {
    switch (id) {
      case 0:
        return TDialogType.EText;
      case 1:
        return TDialogType.EPrivacy;
      case 2:
        return TDialogType.EPrivacyWithStamp;
      case 3:
        return TDialogType.ENavigationDisclaimer;
      case 4:
        return TDialogType.ETextWithProgressBar;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TTargetDevice {
  EPhone,
  EAndroidAuto,
}

extension TTargetDeviceExtension on TTargetDevice {
  int get id {
    switch (this) {
      case TTargetDevice.EPhone:
        return 0;
      case TTargetDevice.EAndroidAuto:
        return 1;
      default:
        return -1;
    }
  }

  static TTargetDevice fromId(int id) {
    switch (id) {
      case 0:
        return TTargetDevice.EPhone;
      case 1:
        return TTargetDevice.EAndroidAuto;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
