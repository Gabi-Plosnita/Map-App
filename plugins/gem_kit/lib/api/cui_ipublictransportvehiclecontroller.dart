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

enum TStationStatusColor {
  EDefault,
  EBlue,
  EGreen,
  ERed,
}

extension TStationStatusColorExtension on TStationStatusColor {
  int get id {
    switch (this) {
      case TStationStatusColor.EDefault:
        return 0;
      case TStationStatusColor.EBlue:
        return 1;
      case TStationStatusColor.EGreen:
        return 2;
      case TStationStatusColor.ERed:
        return 3;
      default:
        return -1;
    }
  }

  static TStationStatusColor fromId(int id) {
    switch (id) {
      case 0:
        return TStationStatusColor.EDefault;
      case 1:
        return TStationStatusColor.EBlue;
      case 2:
        return TStationStatusColor.EGreen;
      case 3:
        return TStationStatusColor.ERed;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
