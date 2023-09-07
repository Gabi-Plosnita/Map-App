// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_time.dart";
import "gem_apilists.dart";
import "gem_listener.dart";

enum EHttpCommandDirection {
  Sent,
  Received,
}

extension EHttpCommandDirectionExtension on EHttpCommandDirection {
  int get id {
    switch (this) {
      case EHttpCommandDirection.Sent:
        return 0;
      case EHttpCommandDirection.Received:
        return 1;
      default:
        return -1;
    }
  }

  static EHttpCommandDirection fromId(int id) {
    switch (id) {
      case 0:
        return EHttpCommandDirection.Sent;
      case 1:
        return EHttpCommandDirection.Received;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
