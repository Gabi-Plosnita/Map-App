// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_object.dart";
import "gem_sensedatasource.dart";
import "gem_canvas.dart";

enum EFrameFit {
  Unknown,
  FitInside,
  StretchFill,
  Centered,
  ZoomFill,
}

extension EFrameFitExtension on EFrameFit {
  int get id {
    switch (this) {
      case EFrameFit.Unknown:
        return 0;
      case EFrameFit.FitInside:
        return 1;
      case EFrameFit.StretchFill:
        return 2;
      case EFrameFit.Centered:
        return 3;
      case EFrameFit.ZoomFill:
        return 4;
      default:
        return -1;
    }
  }

  static EFrameFit fromId(int id) {
    switch (id) {
      case 0:
        return EFrameFit.Unknown;
      case 1:
        return EFrameFit.FitInside;
      case 2:
        return EFrameFit.StretchFill;
      case 3:
        return EFrameFit.Centered;
      case 4:
        return EFrameFit.ZoomFill;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
