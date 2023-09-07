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

enum TEditFavouriteField {
  EEditFavourite,
  EName,
  EFolder,
  EPhone,
  EURL,
  ESave,
}

extension TEditFavouriteFieldExtension on TEditFavouriteField {
  int get id {
    switch (this) {
      case TEditFavouriteField.EEditFavourite:
        return 0;
      case TEditFavouriteField.EName:
        return 1;
      case TEditFavouriteField.EFolder:
        return 2;
      case TEditFavouriteField.EPhone:
        return 3;
      case TEditFavouriteField.EURL:
        return 4;
      case TEditFavouriteField.ESave:
        return 5;
      default:
        return -1;
    }
  }

  static TEditFavouriteField fromId(int id) {
    switch (id) {
      case 0:
        return TEditFavouriteField.EEditFavourite;
      case 1:
        return TEditFavouriteField.EName;
      case 2:
        return TEditFavouriteField.EFolder;
      case 3:
        return TEditFavouriteField.EPhone;
      case 4:
        return TEditFavouriteField.EURL;
      case 5:
        return TEditFavouriteField.ESave;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
