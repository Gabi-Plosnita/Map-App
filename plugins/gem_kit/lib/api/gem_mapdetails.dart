// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "dart:convert";
import "dart:typed_data";

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_coordinates.dart";
import "gem_geographicarea.dart";
import "gem_string.dart";
import "gem_images.dart";
import "gem_time.dart";
import "gem_types.dart";

enum EMapCoverage {
  CoverageOffline,
  CoverageOnlineTile,
  CoverageOnlineNoData,
  CoverageUnknown,
}

extension EMapCoverageExtension on EMapCoverage {
  int get id {
    switch (this) {
      case EMapCoverage.CoverageOffline:
        return 0;
      case EMapCoverage.CoverageOnlineTile:
        return 1;
      case EMapCoverage.CoverageOnlineNoData:
        return 2;
      case EMapCoverage.CoverageUnknown:
        return 3;
      default:
        return -1;
    }
  }

  static EMapCoverage fromId(int id) {
    switch (id) {
      case 0:
        return EMapCoverage.CoverageOffline;
      case 1:
        return EMapCoverage.CoverageOnlineTile;
      case 2:
        return EMapCoverage.CoverageOnlineNoData;
      case 3:
        return EMapCoverage.CoverageUnknown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ECountryCapability {
  NavigationPossible,
  SignInformation,
  LaneInformation,
  SpeedLimits,
  SearchPossible,
  HouseNumbers,
  EnhancedPedestrianNavigation,
  FullDigitPostalCodes,
}

extension ECountryCapabilityExtension on ECountryCapability {
  int get id {
    switch (this) {
      case ECountryCapability.NavigationPossible:
        return 1;
      case ECountryCapability.SignInformation:
        return 2;
      case ECountryCapability.LaneInformation:
        return 4;
      case ECountryCapability.SpeedLimits:
        return 8;
      case ECountryCapability.SearchPossible:
        return 16;
      case ECountryCapability.HouseNumbers:
        return 32;
      case ECountryCapability.EnhancedPedestrianNavigation:
        return 64;
      case ECountryCapability.FullDigitPostalCodes:
        return 128;
      default:
        return -1;
    }
  }

  static ECountryCapability fromId(int id) {
    switch (id) {
      case 1:
        return ECountryCapability.NavigationPossible;
      case 2:
        return ECountryCapability.SignInformation;
      case 4:
        return ECountryCapability.LaneInformation;
      case 8:
        return ECountryCapability.SpeedLimits;
      case 16:
        return ECountryCapability.SearchPossible;
      case 32:
        return ECountryCapability.HouseNumbers;
      case 64:
        return ECountryCapability.EnhancedPedestrianNavigation;
      case 128:
        return ECountryCapability.FullDigitPostalCodes;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMapProviderId {
  MP_ROUTE66,
  MP_NAVTEQ,
  MP_TELEATLAS,
  MP_NAV2,
  MP_NAVTURK,
  MP_NAVURI,
  MP_TRANSNAVICOM,
  MP_SUNCART,
  MP_MAPMYINDIA,
  MP_SENSIS,
  MP_MICROPARTES,
  MP_RITU,
  MP_OSM,
  MP_KINGWAY,
  MP_VIETMAP,
  MP_LAST,
}

extension EMapProviderIdExtension on EMapProviderId {
  int get id {
    switch (this) {
      case EMapProviderId.MP_ROUTE66:
        return 0;
      case EMapProviderId.MP_NAVTEQ:
        return 1;
      case EMapProviderId.MP_TELEATLAS:
        return 2;
      case EMapProviderId.MP_NAV2:
        return 3;
      case EMapProviderId.MP_NAVTURK:
        return 4;
      case EMapProviderId.MP_NAVURI:
        return 5;
      case EMapProviderId.MP_TRANSNAVICOM:
        return 6;
      case EMapProviderId.MP_SUNCART:
        return 7;
      case EMapProviderId.MP_MAPMYINDIA:
        return 8;
      case EMapProviderId.MP_SENSIS:
        return 9;
      case EMapProviderId.MP_MICROPARTES:
        return 10;
      case EMapProviderId.MP_RITU:
        return 11;
      case EMapProviderId.MP_OSM:
        return 12;
      case EMapProviderId.MP_KINGWAY:
        return 13;
      case EMapProviderId.MP_VIETMAP:
        return 14;
      case EMapProviderId.MP_LAST:
        return 15;
      default:
        return -1;
    }
  }

  static EMapProviderId fromId(int id) {
    switch (id) {
      case 0:
        return EMapProviderId.MP_ROUTE66;
      case 1:
        return EMapProviderId.MP_NAVTEQ;
      case 2:
        return EMapProviderId.MP_TELEATLAS;
      case 3:
        return EMapProviderId.MP_NAV2;
      case 4:
        return EMapProviderId.MP_NAVTURK;
      case 5:
        return EMapProviderId.MP_NAVURI;
      case 6:
        return EMapProviderId.MP_TRANSNAVICOM;
      case 7:
        return EMapProviderId.MP_SUNCART;
      case 8:
        return EMapProviderId.MP_MAPMYINDIA;
      case 9:
        return EMapProviderId.MP_SENSIS;
      case 10:
        return EMapProviderId.MP_MICROPARTES;
      case 11:
        return EMapProviderId.MP_RITU;
      case 12:
        return EMapProviderId.MP_OSM;
      case 13:
        return EMapProviderId.MP_KINGWAY;
      case 14:
        return EMapProviderId.MP_VIETMAP;
      case 15:
        return EMapProviderId.MP_LAST;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMapExtendedCapability {
  AvoidUnpavedRoads,
  AvoidCarpoolLanes,
  ElvProfileAndFlags,
  SearchDevelopments,
  SearchOffsets64Bit,
  OrderedAdminIndex,
  AlternativeAdminIndex,
  SplitIndexData,
  UpperLevelData,
  SpeedsExtraAndIncremental,
  TrimmedHeader,
  HighPrecisionBuildings,
}

extension EMapExtendedCapabilityExtension on EMapExtendedCapability {
  int get id {
    switch (this) {
      case EMapExtendedCapability.AvoidUnpavedRoads:
        return 1;
      case EMapExtendedCapability.AvoidCarpoolLanes:
        return 2;
      case EMapExtendedCapability.ElvProfileAndFlags:
        return 4;
      case EMapExtendedCapability.SearchDevelopments:
        return 8;
      case EMapExtendedCapability.SearchOffsets64Bit:
        return 16;
      case EMapExtendedCapability.OrderedAdminIndex:
        return 32;
      case EMapExtendedCapability.AlternativeAdminIndex:
        return 64;
      case EMapExtendedCapability.SplitIndexData:
        return 128;
      case EMapExtendedCapability.UpperLevelData:
        return 256;
      case EMapExtendedCapability.SpeedsExtraAndIncremental:
        return 512;
      case EMapExtendedCapability.TrimmedHeader:
        return 1024;
      case EMapExtendedCapability.HighPrecisionBuildings:
        return 2048;
      default:
        return -1;
    }
  }

  static EMapExtendedCapability fromId(int id) {
    switch (id) {
      case 1:
        return EMapExtendedCapability.AvoidUnpavedRoads;
      case 2:
        return EMapExtendedCapability.AvoidCarpoolLanes;
      case 4:
        return EMapExtendedCapability.ElvProfileAndFlags;
      case 8:
        return EMapExtendedCapability.SearchDevelopments;
      case 16:
        return EMapExtendedCapability.SearchOffsets64Bit;
      case 32:
        return EMapExtendedCapability.OrderedAdminIndex;
      case 64:
        return EMapExtendedCapability.AlternativeAdminIndex;
      case 128:
        return EMapExtendedCapability.SplitIndexData;
      case 256:
        return EMapExtendedCapability.UpperLevelData;
      case 512:
        return EMapExtendedCapability.SpeedsExtraAndIncremental;
      case 1024:
        return EMapExtendedCapability.TrimmedHeader;
      case 2048:
        return EMapExtendedCapability.HighPrecisionBuildings;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class MapDetails {
  static Uint8List getCountryFlag(String countryCode, XyType<int> xy) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "MapDetails",
        'method': "getCountryFlag",
        'args': {'countrycode': countryCode, 'size': xy}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      throw (e.toString());
    }
  }
}
