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

enum TSearchFieldType {
  ELatLongDMS,
  ELatLongDDD_MM_MMM,
  ELatLongDecimalDegrees,
  EQuickInput,
  ELatitudeLongitude,
  ELatitude,
  ELongitude,
  EDetailedInput,
  EPleaseEnsure,
  ELatitudeInInterval,
  ELongitudeInInterval,
  EMinuteAndSecondInInterval,
  EExempliGratia,
}

extension TSearchFieldTypeExtension on TSearchFieldType {
  int get id {
    switch (this) {
      case TSearchFieldType.ELatLongDMS:
        return 0;
      case TSearchFieldType.ELatLongDDD_MM_MMM:
        return 1;
      case TSearchFieldType.ELatLongDecimalDegrees:
        return 2;
      case TSearchFieldType.EQuickInput:
        return 3;
      case TSearchFieldType.ELatitudeLongitude:
        return 4;
      case TSearchFieldType.ELatitude:
        return 5;
      case TSearchFieldType.ELongitude:
        return 6;
      case TSearchFieldType.EDetailedInput:
        return 7;
      case TSearchFieldType.EPleaseEnsure:
        return 8;
      case TSearchFieldType.ELatitudeInInterval:
        return 9;
      case TSearchFieldType.ELongitudeInInterval:
        return 10;
      case TSearchFieldType.EMinuteAndSecondInInterval:
        return 11;
      case TSearchFieldType.EExempliGratia:
        return 12;
      default:
        return -1;
    }
  }

  static TSearchFieldType fromId(int id) {
    switch (id) {
      case 0:
        return TSearchFieldType.ELatLongDMS;
      case 1:
        return TSearchFieldType.ELatLongDDD_MM_MMM;
      case 2:
        return TSearchFieldType.ELatLongDecimalDegrees;
      case 3:
        return TSearchFieldType.EQuickInput;
      case 4:
        return TSearchFieldType.ELatitudeLongitude;
      case 5:
        return TSearchFieldType.ELatitude;
      case 6:
        return TSearchFieldType.ELongitude;
      case 7:
        return TSearchFieldType.EDetailedInput;
      case 8:
        return TSearchFieldType.EPleaseEnsure;
      case 9:
        return TSearchFieldType.ELatitudeInInterval;
      case 10:
        return TSearchFieldType.ELongitudeInInterval;
      case 11:
        return TSearchFieldType.EMinuteAndSecondInInterval;
      case 12:
        return TSearchFieldType.EExempliGratia;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
