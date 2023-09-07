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

enum TPublicTransportRoutesTextField {
  EEarlier,
  ELater,
  ESortByTime,
  ESortByDepartureTime,
  ESortByTripDuration,
}

extension TPublicTransportRoutesTextFieldExtension
    on TPublicTransportRoutesTextField {
  int get id {
    switch (this) {
      case TPublicTransportRoutesTextField.EEarlier:
        return 0;
      case TPublicTransportRoutesTextField.ELater:
        return 1;
      case TPublicTransportRoutesTextField.ESortByTime:
        return 2;
      case TPublicTransportRoutesTextField.ESortByDepartureTime:
        return 3;
      case TPublicTransportRoutesTextField.ESortByTripDuration:
        return 4;
      default:
        return -1;
    }
  }

  static TPublicTransportRoutesTextField fromId(int id) {
    switch (id) {
      case 0:
        return TPublicTransportRoutesTextField.EEarlier;
      case 1:
        return TPublicTransportRoutesTextField.ELater;
      case 2:
        return TPublicTransportRoutesTextField.ESortByTime;
      case 3:
        return TPublicTransportRoutesTextField.ESortByDepartureTime;
      case 4:
        return TPublicTransportRoutesTextField.ESortByTripDuration;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TPublicTransportRoutesImageField {
  ESettings,
}

extension TPublicTransportRoutesImageFieldExtension
    on TPublicTransportRoutesImageField {
  int get id {
    switch (this) {
      case TPublicTransportRoutesImageField.ESettings:
        return 0;
      default:
        return -1;
    }
  }

  static TPublicTransportRoutesImageField fromId(int id) {
    switch (id) {
      case 0:
        return TPublicTransportRoutesImageField.ESettings;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TPublicTransportRoutesViewType {
  EStandAloneView,
  EHorizontalMapList,
}

extension TPublicTransportRoutesViewTypeExtension
    on TPublicTransportRoutesViewType {
  int get id {
    switch (this) {
      case TPublicTransportRoutesViewType.EStandAloneView:
        return 0;
      case TPublicTransportRoutesViewType.EHorizontalMapList:
        return 1;
      default:
        return -1;
    }
  }

  static TPublicTransportRoutesViewType fromId(int id) {
    switch (id) {
      case 0:
        return TPublicTransportRoutesViewType.EStandAloneView;
      case 1:
        return TPublicTransportRoutesViewType.EHorizontalMapList;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
