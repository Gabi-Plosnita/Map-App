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

enum TAddressField {
  EAFCountry,
  EAFState,
  EAFCity,
  EAFStreet,
  EAFStreetNumber,
  EAFIntersection,
}

extension TAddressFieldExtension on TAddressField {
  int get id {
    switch (this) {
      case TAddressField.EAFCountry:
        return 0;
      case TAddressField.EAFState:
        return 1;
      case TAddressField.EAFCity:
        return 2;
      case TAddressField.EAFStreet:
        return 3;
      case TAddressField.EAFStreetNumber:
        return 4;
      case TAddressField.EAFIntersection:
        return 5;
      default:
        return -1;
    }
  }

  static TAddressField fromId(int id) {
    switch (id) {
      case 0:
        return TAddressField.EAFCountry;
      case 1:
        return TAddressField.EAFState;
      case 2:
        return TAddressField.EAFCity;
      case 3:
        return TAddressField.EAFStreet;
      case 4:
        return TAddressField.EAFStreetNumber;
      case 5:
        return TAddressField.EAFIntersection;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
