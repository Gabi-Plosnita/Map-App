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
import "gem_time.dart";

enum TSettingsViewType {
  EFullScreen,
  EDialog,
  EAndroidAuto,
}

extension TSettingsViewTypeExtension on TSettingsViewType {
  int get id {
    switch (this) {
      case TSettingsViewType.EFullScreen:
        return 0;
      case TSettingsViewType.EDialog:
        return 1;
      case TSettingsViewType.EAndroidAuto:
        return 2;
      default:
        return -1;
    }
  }

  static TSettingsViewType fromId(int id) {
    switch (id) {
      case 0:
        return TSettingsViewType.EFullScreen;
      case 1:
        return TSettingsViewType.EDialog;
      case 2:
        return TSettingsViewType.EAndroidAuto;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TSettingItemType {
  EBoolean,
  EInt,
  EDouble,
  EText,
  EOptionsList,
  EPTDateTimePicker,
  ETextWithStatusImage,
}

extension TSettingItemTypeExtension on TSettingItemType {
  int get id {
    switch (this) {
      case TSettingItemType.EBoolean:
        return 0;
      case TSettingItemType.EInt:
        return 1;
      case TSettingItemType.EDouble:
        return 2;
      case TSettingItemType.EText:
        return 3;
      case TSettingItemType.EOptionsList:
        return 4;
      case TSettingItemType.EPTDateTimePicker:
        return 5;
      case TSettingItemType.ETextWithStatusImage:
        return 6;
      default:
        return -1;
    }
  }

  static TSettingItemType fromId(int id) {
    switch (id) {
      case 0:
        return TSettingItemType.EBoolean;
      case 1:
        return TSettingItemType.EInt;
      case 2:
        return TSettingItemType.EDouble;
      case 3:
        return TSettingItemType.EText;
      case 4:
        return TSettingItemType.EOptionsList;
      case 5:
        return TSettingItemType.EPTDateTimePicker;
      case 6:
        return TSettingItemType.ETextWithStatusImage;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
