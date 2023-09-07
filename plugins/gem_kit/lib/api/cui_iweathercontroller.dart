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

enum TWeatherInfoType {
  ENow,
  EHourly,
  EDaily,
}

extension TWeatherInfoTypeExtension on TWeatherInfoType {
  int get id {
    switch (this) {
      case TWeatherInfoType.ENow:
        return 0;
      case TWeatherInfoType.EHourly:
        return 1;
      case TWeatherInfoType.EDaily:
        return 2;
      default:
        return -1;
    }
  }

  static TWeatherInfoType fromId(int id) {
    switch (id) {
      case 0:
        return TWeatherInfoType.ENow;
      case 1:
        return TWeatherInfoType.EHourly;
      case 2:
        return TWeatherInfoType.EDaily;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TCurrentConditionsInfoType {
  EDescription,
  ETemperature,
  ETemperatureUnit,
  ETemperatureDescription,
  EPlace,
  ECoordinates,
  ELocalTime,
  EUpdatedAt,
  EDayLight,
}

extension TCurrentConditionsInfoTypeExtension on TCurrentConditionsInfoType {
  int get id {
    switch (this) {
      case TCurrentConditionsInfoType.EDescription:
        return 0;
      case TCurrentConditionsInfoType.ETemperature:
        return 1;
      case TCurrentConditionsInfoType.ETemperatureUnit:
        return 2;
      case TCurrentConditionsInfoType.ETemperatureDescription:
        return 3;
      case TCurrentConditionsInfoType.EPlace:
        return 4;
      case TCurrentConditionsInfoType.ECoordinates:
        return 5;
      case TCurrentConditionsInfoType.ELocalTime:
        return 6;
      case TCurrentConditionsInfoType.EUpdatedAt:
        return 7;
      case TCurrentConditionsInfoType.EDayLight:
        return 8;
      default:
        return -1;
    }
  }

  static TCurrentConditionsInfoType fromId(int id) {
    switch (id) {
      case 0:
        return TCurrentConditionsInfoType.EDescription;
      case 1:
        return TCurrentConditionsInfoType.ETemperature;
      case 2:
        return TCurrentConditionsInfoType.ETemperatureUnit;
      case 3:
        return TCurrentConditionsInfoType.ETemperatureDescription;
      case 4:
        return TCurrentConditionsInfoType.EPlace;
      case 5:
        return TCurrentConditionsInfoType.ECoordinates;
      case 6:
        return TCurrentConditionsInfoType.ELocalTime;
      case 7:
        return TCurrentConditionsInfoType.EUpdatedAt;
      case 8:
        return TCurrentConditionsInfoType.EDayLight;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
