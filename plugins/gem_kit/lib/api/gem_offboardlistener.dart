// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_listener.dart";
import "gem_network.dart";

enum EReason {
  NoDiskSpace,
  ExpiredSDK,
}

extension EReasonExtension on EReason {
  int get id {
    switch (this) {
      case EReason.NoDiskSpace:
        return 0;
      case EReason.ExpiredSDK:
        return 1;
      default:
        return -1;
    }
  }

  static EReason fromId(int id) {
    switch (id) {
      case 0:
        return EReason.NoDiskSpace;
      case 1:
        return EReason.ExpiredSDK;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EStatus {
  OldData,
  ExpiredData,
  UpToDate,
}

extension EStatusExtension on EStatus {
  int get id {
    switch (this) {
      case EStatus.OldData:
        return 0;
      case EStatus.ExpiredData:
        return 1;
      case EStatus.UpToDate:
        return 2;
      default:
        return -1;
    }
  }

  static EStatus fromId(int id) {
    switch (id) {
      case 0:
        return EStatus.OldData;
      case 1:
        return EStatus.ExpiredData;
      case 2:
        return EStatus.UpToDate;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EServiceGroupType {
  MapDataService,
  TrafficService,
  TerrainService,
  ContentService,
}

extension EServiceGroupTypeExtension on EServiceGroupType {
  int get id {
    switch (this) {
      case EServiceGroupType.MapDataService:
        return 0;
      case EServiceGroupType.TrafficService:
        return 1;
      case EServiceGroupType.TerrainService:
        return 2;
      case EServiceGroupType.ContentService:
        return 3;
      default:
        return -1;
    }
  }

  static EServiceGroupType fromId(int id) {
    switch (id) {
      case 0:
        return EServiceGroupType.MapDataService;
      case 1:
        return EServiceGroupType.TrafficService;
      case 2:
        return EServiceGroupType.TerrainService;
      case 3:
        return EServiceGroupType.ContentService;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
