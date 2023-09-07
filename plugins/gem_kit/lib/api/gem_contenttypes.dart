// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum EContentType {
  CT_CarModel,
  CT_ViewStyleHighRes,
  CT_RoadMap,
  CT_HumanVoice,
  CT_ComputerVoice,
  CT_ViewStyleLowRes,
  CT_First,
  CT_Last,
  CT_Unknown,
}

extension EContentTypeExtension on EContentType {
  int get id {
    switch (this) {
      case EContentType.CT_CarModel:
        return 1;
      case EContentType.CT_ViewStyleHighRes:
        return 2;
      case EContentType.CT_RoadMap:
        return 3;
      case EContentType.CT_HumanVoice:
        return 4;
      case EContentType.CT_ComputerVoice:
        return 5;
      case EContentType.CT_ViewStyleLowRes:
        return 6;
      case EContentType.CT_First:
        return 1;
      case EContentType.CT_Last:
        return 6;
      case EContentType.CT_Unknown:
        return 0;
      default:
        return -1;
    }
  }

  static EContentType fromId(int id) {
    switch (id) {
      case 1:
        return EContentType.CT_CarModel;
      case 2:
        return EContentType.CT_ViewStyleHighRes;
      case 3:
        return EContentType.CT_RoadMap;
      case 4:
        return EContentType.CT_HumanVoice;
      case 5:
        return EContentType.CT_ComputerVoice;
      case 6:
        return EContentType.CT_ViewStyleLowRes;
      case 0:
        return EContentType.CT_Unknown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
