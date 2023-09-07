// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_progresslistener.dart";
import "gem_landmark.dart";
import "gem_string.dart";
import "gem_transferstatistics.dart";

enum EAddressDetailLevel {
  AD_NoDetail,
  AD_Country,
  AD_State,
  AD_County,
  AD_District,
  AD_City,
  AD_Settlement,
  AD_PostalCode,
  AD_Street,
  AD_StreetSection,
  AD_StreetLane,
  AD_StreetAlley,
  AD_HouseNumber,
  AD_Crossing,
}

extension EAddressDetailLevelExtension on EAddressDetailLevel {
  int get id {
    switch (this) {
      case EAddressDetailLevel.AD_NoDetail:
        return 0;
      case EAddressDetailLevel.AD_Country:
        return 1;
      case EAddressDetailLevel.AD_State:
        return 2;
      case EAddressDetailLevel.AD_County:
        return 3;
      case EAddressDetailLevel.AD_District:
        return 4;
      case EAddressDetailLevel.AD_City:
        return 5;
      case EAddressDetailLevel.AD_Settlement:
        return 6;
      case EAddressDetailLevel.AD_PostalCode:
        return 7;
      case EAddressDetailLevel.AD_Street:
        return 8;
      case EAddressDetailLevel.AD_StreetSection:
        return 9;
      case EAddressDetailLevel.AD_StreetLane:
        return 10;
      case EAddressDetailLevel.AD_StreetAlley:
        return 11;
      case EAddressDetailLevel.AD_HouseNumber:
        return 12;
      case EAddressDetailLevel.AD_Crossing:
        return 13;
      default:
        return -1;
    }
  }

  static EAddressDetailLevel fromId(int id) {
    switch (id) {
      case 0:
        return EAddressDetailLevel.AD_NoDetail;
      case 1:
        return EAddressDetailLevel.AD_Country;
      case 2:
        return EAddressDetailLevel.AD_State;
      case 3:
        return EAddressDetailLevel.AD_County;
      case 4:
        return EAddressDetailLevel.AD_District;
      case 5:
        return EAddressDetailLevel.AD_City;
      case 6:
        return EAddressDetailLevel.AD_Settlement;
      case 7:
        return EAddressDetailLevel.AD_PostalCode;
      case 8:
        return EAddressDetailLevel.AD_Street;
      case 9:
        return EAddressDetailLevel.AD_StreetSection;
      case 10:
        return EAddressDetailLevel.AD_StreetLane;
      case 11:
        return EAddressDetailLevel.AD_StreetAlley;
      case 12:
        return EAddressDetailLevel.AD_HouseNumber;
      case 13:
        return EAddressDetailLevel.AD_Crossing;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class GuidedAddressSearchPreferences {
  int? maximummatches;
  bool? searchonlyonboard;
  bool? automaticlevelskip;
  bool? allowfuzzyresults;
  GuidedAddressSearchPreferences({
    this.maximummatches,
    this.searchonlyonboard,
    this.automaticlevelskip,
    this.allowfuzzyresults,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (maximummatches != null) {
      json['maximummatches'] = maximummatches;
    }
    if (searchonlyonboard != null) {
      json['searchonlyonboard'] = searchonlyonboard;
    }
    if (automaticlevelskip != null) {
      json['automaticlevelskip'] = automaticlevelskip;
    }
    if (allowfuzzyresults != null) {
      json['allowfuzzyresults'] = allowfuzzyresults;
    }
    return json;
  }

  factory GuidedAddressSearchPreferences.fromJson(Map<String, dynamic> json) {
    return GuidedAddressSearchPreferences(
      maximummatches: json['maximummatches'],
      searchonlyonboard: json['searchonlyonboard'],
      automaticlevelskip: json['automaticlevelskip'],
      allowfuzzyresults: json['allowfuzzyresults'],
    );
  }
}

class GuidedAddressSearchService {
  TransferStatistics? transferstatistics;
  GuidedAddressSearchService({
    this.transferstatistics,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (transferstatistics != null) {
      json['transferstatistics'] = transferstatistics;
    }
    return json;
  }

  factory GuidedAddressSearchService.fromJson(Map<String, dynamic> json) {
    return GuidedAddressSearchService(
      transferstatistics: json['transferstatistics'],
    );
  }
}
