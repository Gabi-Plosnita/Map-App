// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_databuffer.dart";
import "gem_error.dart";
import "gem_rendercontext.dart";
import "gem_types.dart";

enum EMaskType {
  Binary,
  Probability,
}

extension EMaskTypeExtension on EMaskType {
  int get id {
    switch (this) {
      case EMaskType.Binary:
        return 0;
      case EMaskType.Probability:
        return 1;
      default:
        return -1;
    }
  }

  static EMaskType fromId(int id) {
    switch (id) {
      case 0:
        return EMaskType.Binary;
      case 1:
        return EMaskType.Probability;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETurnInformation {
  eTI_NA,
  eTI_VehicleIsTurningLeft,
  eTI_VehicleIsTurningRight,
}

extension ETurnInformationExtension on ETurnInformation {
  int get id {
    switch (this) {
      case ETurnInformation.eTI_NA:
        return 0;
      case ETurnInformation.eTI_VehicleIsTurningLeft:
        return 1;
      case ETurnInformation.eTI_VehicleIsTurningRight:
        return 2;
      default:
        return -1;
    }
  }

  static ETurnInformation fromId(int id) {
    switch (id) {
      case 0:
        return ETurnInformation.eTI_NA;
      case 1:
        return ETurnInformation.eTI_VehicleIsTurningLeft;
      case 2:
        return ETurnInformation.eTI_VehicleIsTurningRight;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
