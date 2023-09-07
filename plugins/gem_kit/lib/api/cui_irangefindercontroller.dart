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

enum TRangeFinderText {
  ETitle,
  ETransportMode,
  ERangeType,
  ERangeValue,
  EBikeType,
  ERoad,
  ECross,
  ECity,
  EMountain,
  EBikeWeight,
  EBikerWeight,
  ECar,
  ELorry,
  EPedestrian,
  EBicycle,
  EFastest,
  EShortest,
  EEconomic,
  EAvoidFerries,
  EAvoidMotorways,
  EAvoidUnpavedRoads,
  EAvoidTollRoads,
  EAvoidTraffic,
  EHills,
  EAdd,
  EAvoid,
}

extension TRangeFinderTextExtension on TRangeFinderText {
  int get id {
    switch (this) {
      case TRangeFinderText.ETitle:
        return 0;
      case TRangeFinderText.ETransportMode:
        return 1;
      case TRangeFinderText.ERangeType:
        return 2;
      case TRangeFinderText.ERangeValue:
        return 3;
      case TRangeFinderText.EBikeType:
        return 4;
      case TRangeFinderText.ERoad:
        return 5;
      case TRangeFinderText.ECross:
        return 6;
      case TRangeFinderText.ECity:
        return 7;
      case TRangeFinderText.EMountain:
        return 8;
      case TRangeFinderText.EBikeWeight:
        return 9;
      case TRangeFinderText.EBikerWeight:
        return 10;
      case TRangeFinderText.ECar:
        return 11;
      case TRangeFinderText.ELorry:
        return 12;
      case TRangeFinderText.EPedestrian:
        return 13;
      case TRangeFinderText.EBicycle:
        return 14;
      case TRangeFinderText.EFastest:
        return 15;
      case TRangeFinderText.EShortest:
        return 16;
      case TRangeFinderText.EEconomic:
        return 17;
      case TRangeFinderText.EAvoidFerries:
        return 18;
      case TRangeFinderText.EAvoidMotorways:
        return 19;
      case TRangeFinderText.EAvoidUnpavedRoads:
        return 20;
      case TRangeFinderText.EAvoidTollRoads:
        return 21;
      case TRangeFinderText.EAvoidTraffic:
        return 22;
      case TRangeFinderText.EHills:
        return 23;
      case TRangeFinderText.EAdd:
        return 24;
      case TRangeFinderText.EAvoid:
        return 25;
      default:
        return -1;
    }
  }

  static TRangeFinderText fromId(int id) {
    switch (id) {
      case 0:
        return TRangeFinderText.ETitle;
      case 1:
        return TRangeFinderText.ETransportMode;
      case 2:
        return TRangeFinderText.ERangeType;
      case 3:
        return TRangeFinderText.ERangeValue;
      case 4:
        return TRangeFinderText.EBikeType;
      case 5:
        return TRangeFinderText.ERoad;
      case 6:
        return TRangeFinderText.ECross;
      case 7:
        return TRangeFinderText.ECity;
      case 8:
        return TRangeFinderText.EMountain;
      case 9:
        return TRangeFinderText.EBikeWeight;
      case 10:
        return TRangeFinderText.EBikerWeight;
      case 11:
        return TRangeFinderText.ECar;
      case 12:
        return TRangeFinderText.ELorry;
      case 13:
        return TRangeFinderText.EPedestrian;
      case 14:
        return TRangeFinderText.EBicycle;
      case 15:
        return TRangeFinderText.EFastest;
      case 16:
        return TRangeFinderText.EShortest;
      case 17:
        return TRangeFinderText.EEconomic;
      case 18:
        return TRangeFinderText.EAvoidFerries;
      case 19:
        return TRangeFinderText.EAvoidMotorways;
      case 20:
        return TRangeFinderText.EAvoidUnpavedRoads;
      case 21:
        return TRangeFinderText.EAvoidTollRoads;
      case 22:
        return TRangeFinderText.EAvoidTraffic;
      case 23:
        return TRangeFinderText.EHills;
      case 24:
        return TRangeFinderText.EAdd;
      case 25:
        return TRangeFinderText.EAvoid;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TTransportMode {
  ECar,
  ELorry,
  EPedestrian,
  EBicycle,
}

extension TTransportModeExtension on TTransportMode {
  int get id {
    switch (this) {
      case TTransportMode.ECar:
        return 0;
      case TTransportMode.ELorry:
        return 1;
      case TTransportMode.EPedestrian:
        return 2;
      case TTransportMode.EBicycle:
        return 3;
      default:
        return -1;
    }
  }

  static TTransportMode fromId(int id) {
    switch (id) {
      case 0:
        return TTransportMode.ECar;
      case 1:
        return TTransportMode.ELorry;
      case 2:
        return TTransportMode.EPedestrian;
      case 3:
        return TTransportMode.EBicycle;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TRangeType {
  EFastest,
  EShortest,
  EEconomic,
}

extension TRangeTypeExtension on TRangeType {
  int get id {
    switch (this) {
      case TRangeType.EFastest:
        return 0;
      case TRangeType.EShortest:
        return 1;
      case TRangeType.EEconomic:
        return 2;
      default:
        return -1;
    }
  }

  static TRangeType fromId(int id) {
    switch (id) {
      case 0:
        return TRangeType.EFastest;
      case 1:
        return TRangeType.EShortest;
      case 2:
        return TRangeType.EEconomic;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TBikeType {
  ERoad,
  ECross,
  ECity,
  EMountain,
}

extension TBikeTypeExtension on TBikeType {
  int get id {
    switch (this) {
      case TBikeType.ERoad:
        return 0;
      case TBikeType.ECross:
        return 1;
      case TBikeType.ECity:
        return 2;
      case TBikeType.EMountain:
        return 3;
      default:
        return -1;
    }
  }

  static TBikeType fromId(int id) {
    switch (id) {
      case 0:
        return TBikeType.ERoad;
      case 1:
        return TBikeType.ECross;
      case 2:
        return TBikeType.ECity;
      case 3:
        return TBikeType.EMountain;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
