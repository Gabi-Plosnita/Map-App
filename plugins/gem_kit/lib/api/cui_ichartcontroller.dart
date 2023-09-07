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

enum TChartInfoType {
  EInstantaneous,
  EOngoing,
  ELast,
  EOverall,
  EAggregates,
  EAggregateScore,
}

extension TChartInfoTypeExtension on TChartInfoType {
  int get id {
    switch (this) {
      case TChartInfoType.EInstantaneous:
        return 0;
      case TChartInfoType.EOngoing:
        return 1;
      case TChartInfoType.ELast:
        return 2;
      case TChartInfoType.EOverall:
        return 3;
      case TChartInfoType.EAggregates:
        return 4;
      case TChartInfoType.EAggregateScore:
        return 5;
      default:
        return -1;
    }
  }

  static TChartInfoType fromId(int id) {
    switch (id) {
      case 0:
        return TChartInfoType.EInstantaneous;
      case 1:
        return TChartInfoType.EOngoing;
      case 2:
        return TChartInfoType.ELast;
      case 3:
        return TChartInfoType.EOverall;
      case 4:
        return TChartInfoType.EAggregates;
      case 5:
        return TChartInfoType.EAggregateScore;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
