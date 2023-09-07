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

enum TAboutViewField {
  ETitle,
  EApplicationVersion,
  EMapVersion,
  EOSMContributors,
  ECopyright,
  EThirdPartyLicenses,
  EContactUs,
  ESupportEmail,
  EWebsite,
}

extension TAboutViewFieldExtension on TAboutViewField {
  int get id {
    switch (this) {
      case TAboutViewField.ETitle:
        return 0;
      case TAboutViewField.EApplicationVersion:
        return 1;
      case TAboutViewField.EMapVersion:
        return 2;
      case TAboutViewField.EOSMContributors:
        return 3;
      case TAboutViewField.ECopyright:
        return 4;
      case TAboutViewField.EThirdPartyLicenses:
        return 5;
      case TAboutViewField.EContactUs:
        return 6;
      case TAboutViewField.ESupportEmail:
        return 7;
      case TAboutViewField.EWebsite:
        return 8;
      default:
        return -1;
    }
  }

  static TAboutViewField fromId(int id) {
    switch (id) {
      case 0:
        return TAboutViewField.ETitle;
      case 1:
        return TAboutViewField.EApplicationVersion;
      case 2:
        return TAboutViewField.EMapVersion;
      case 3:
        return TAboutViewField.EOSMContributors;
      case 4:
        return TAboutViewField.ECopyright;
      case 5:
        return TAboutViewField.EThirdPartyLicenses;
      case 6:
        return TAboutViewField.EContactUs;
      case 7:
        return TAboutViewField.ESupportEmail;
      case 8:
        return TAboutViewField.EWebsite;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
