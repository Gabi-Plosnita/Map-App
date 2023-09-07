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

enum TAndroidAutoStatusViewField {
  EApplicationName,
  EConnectedToAndroidAuto,
  EDisconnect,
  EIAmNotDriving,
  EIAmNotDrivingDescription,
}

extension TAndroidAutoStatusViewFieldExtension on TAndroidAutoStatusViewField {
  int get id {
    switch (this) {
      case TAndroidAutoStatusViewField.EApplicationName:
        return 0;
      case TAndroidAutoStatusViewField.EConnectedToAndroidAuto:
        return 1;
      case TAndroidAutoStatusViewField.EDisconnect:
        return 2;
      case TAndroidAutoStatusViewField.EIAmNotDriving:
        return 3;
      case TAndroidAutoStatusViewField.EIAmNotDrivingDescription:
        return 4;
      default:
        return -1;
    }
  }

  static TAndroidAutoStatusViewField fromId(int id) {
    switch (id) {
      case 0:
        return TAndroidAutoStatusViewField.EApplicationName;
      case 1:
        return TAndroidAutoStatusViewField.EConnectedToAndroidAuto;
      case 2:
        return TAndroidAutoStatusViewField.EDisconnect;
      case 3:
        return TAndroidAutoStatusViewField.EIAmNotDriving;
      case 4:
        return TAndroidAutoStatusViewField.EIAmNotDrivingDescription;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
