// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_error.dart";
import "gem_progresslistener.dart";
import "gem_rendercontext.dart";
import "gem_list.dart";

enum EBrakeType {
  Unknown,
  NegativeNegative,
  BrakeBrake,
  NegativeBrake,
  BrakeNegative,
}

extension EBrakeTypeExtension on EBrakeType {
  int get id {
    switch (this) {
      case EBrakeType.Unknown:
        return 0;
      case EBrakeType.NegativeNegative:
        return 1;
      case EBrakeType.BrakeBrake:
        return 2;
      case EBrakeType.NegativeBrake:
        return 3;
      case EBrakeType.BrakeNegative:
        return 4;
      default:
        return -1;
    }
  }

  static EBrakeType fromId(int id) {
    switch (id) {
      case 0:
        return EBrakeType.Unknown;
      case 1:
        return EBrakeType.NegativeNegative;
      case 2:
        return EBrakeType.BrakeBrake;
      case 3:
        return EBrakeType.NegativeBrake;
      case 4:
        return EBrakeType.BrakeNegative;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
