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
import "gem_progresslistener.dart";
import "gem_images.dart";
import "gem_landmark.dart";

enum EExternalImageQuality {
  LowImageQuality,
  MediumImageQuality,
  HighImageQuality,
}

extension EExternalImageQualityExtension on EExternalImageQuality {
  int get id {
    switch (this) {
      case EExternalImageQuality.LowImageQuality:
        return 480;
      case EExternalImageQuality.MediumImageQuality:
        return 720;
      case EExternalImageQuality.HighImageQuality:
        return 1080;
      default:
        return -1;
    }
  }

  static EExternalImageQuality fromId(int id) {
    switch (id) {
      case 480:
        return EExternalImageQuality.LowImageQuality;
      case 720:
        return EExternalImageQuality.MediumImageQuality;
      case 1080:
        return EExternalImageQuality.HighImageQuality;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
