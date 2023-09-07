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

enum TAlertViewField {
  ESetAlert,
  ESave,
  EName,
  ERadius,
  ERadiusCurrentValue,
  ERadiusMinValue,
  ERadiusMaxValue,
  EEmail,
  ETo,
  EMessageOnArrival,
  EMessageOnDeparture,
}

extension TAlertViewFieldExtension on TAlertViewField {
  int get id {
    switch (this) {
      case TAlertViewField.ESetAlert:
        return 0;
      case TAlertViewField.ESave:
        return 1;
      case TAlertViewField.EName:
        return 2;
      case TAlertViewField.ERadius:
        return 3;
      case TAlertViewField.ERadiusCurrentValue:
        return 4;
      case TAlertViewField.ERadiusMinValue:
        return 5;
      case TAlertViewField.ERadiusMaxValue:
        return 6;
      case TAlertViewField.EEmail:
        return 7;
      case TAlertViewField.ETo:
        return 8;
      case TAlertViewField.EMessageOnArrival:
        return 9;
      case TAlertViewField.EMessageOnDeparture:
        return 10;
      default:
        return -1;
    }
  }

  static TAlertViewField fromId(int id) {
    switch (id) {
      case 0:
        return TAlertViewField.ESetAlert;
      case 1:
        return TAlertViewField.ESave;
      case 2:
        return TAlertViewField.EName;
      case 3:
        return TAlertViewField.ERadius;
      case 4:
        return TAlertViewField.ERadiusCurrentValue;
      case 5:
        return TAlertViewField.ERadiusMinValue;
      case 6:
        return TAlertViewField.ERadiusMaxValue;
      case 7:
        return TAlertViewField.EEmail;
      case 8:
        return TAlertViewField.ETo;
      case 9:
        return TAlertViewField.EMessageOnArrival;
      case 10:
        return TAlertViewField.EMessageOnDeparture;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
