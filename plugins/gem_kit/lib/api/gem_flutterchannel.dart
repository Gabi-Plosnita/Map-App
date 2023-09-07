// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_sdk.dart";
import "gem_parameters.dart";
import "gem_databuffer.dart";
import "gem_mapview.dart";

enum EMethodExceptions {
  ME_CreateView,
  ME_ReleaseView,
}

extension EMethodExceptionsExtension on EMethodExceptions {
  int get id {
    switch (this) {
      case EMethodExceptions.ME_CreateView:
        return 1;
      case EMethodExceptions.ME_ReleaseView:
        return 1;
      default:
        return -1;
    }
  }

  static EMethodExceptions fromId(int id) {
    switch (id) {
      case 1:
        return EMethodExceptions.ME_CreateView;
      case 1:
        return EMethodExceptions.ME_ReleaseView;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
