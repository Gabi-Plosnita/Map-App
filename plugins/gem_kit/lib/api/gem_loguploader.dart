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
import "gem_listener.dart";
import "gem_apilists.dart";
import "gem_time.dart";

enum ELogUploaderState {
  LU_Progress,
  LU_Ready,
}

extension ELogUploaderStateExtension on ELogUploaderState {
  int get id {
    switch (this) {
      case ELogUploaderState.LU_Progress:
        return 0;
      case ELogUploaderState.LU_Ready:
        return 1;
      default:
        return -1;
    }
  }

  static ELogUploaderState fromId(int id) {
    switch (id) {
      case 0:
        return ELogUploaderState.LU_Progress;
      case 1:
        return ELogUploaderState.LU_Ready;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
