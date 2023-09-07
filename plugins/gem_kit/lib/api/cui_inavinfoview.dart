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

enum TNavInfoViewSize {
  ESmall,
  ELarge,
}

extension TNavInfoViewSizeExtension on TNavInfoViewSize {
  int get id {
    switch (this) {
      case TNavInfoViewSize.ESmall:
        return 0;
      case TNavInfoViewSize.ELarge:
        return 1;
      default:
        return -1;
    }
  }

  static TNavInfoViewSize fromId(int id) {
    switch (id) {
      case 0:
        return TNavInfoViewSize.ESmall;
      case 1:
        return TNavInfoViewSize.ELarge;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
