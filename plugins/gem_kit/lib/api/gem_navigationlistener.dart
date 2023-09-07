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
import "gem_listener.dart";
import "gem_landmark.dart";
import "gem_routingservice.dart";
import "gem_sounds.dart";

enum ENavigationStatus {
  NS_Running,
  NS_WaitingRoute,
  NS_WaitingGPS,
}

extension ENavigationStatusExtension on ENavigationStatus {
  int get id {
    switch (this) {
      case ENavigationStatus.NS_Running:
        return 0;
      case ENavigationStatus.NS_WaitingRoute:
        return 1;
      case ENavigationStatus.NS_WaitingGPS:
        return 2;
      default:
        return -1;
    }
  }

  static ENavigationStatus fromId(int id) {
    switch (id) {
      case 0:
        return ENavigationStatus.NS_Running;
      case 1:
        return ENavigationStatus.NS_WaitingRoute;
      case 2:
        return ENavigationStatus.NS_WaitingGPS;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ENavigationInstructionUpdateEvents {
  NIUE_NextTurnUpdated,
  NIUE_NextTurnImageUpdated,
  NIUE_LaneInfoUpdated,
}

extension ENavigationInstructionUpdateEventsExtension
    on ENavigationInstructionUpdateEvents {
  int get id {
    switch (this) {
      case ENavigationInstructionUpdateEvents.NIUE_NextTurnUpdated:
        return 1;
      case ENavigationInstructionUpdateEvents.NIUE_NextTurnImageUpdated:
        return 2;
      case ENavigationInstructionUpdateEvents.NIUE_LaneInfoUpdated:
        return 4;
      default:
        return -1;
    }
  }

  static ENavigationInstructionUpdateEvents fromId(int id) {
    switch (id) {
      case 1:
        return ENavigationInstructionUpdateEvents.NIUE_NextTurnUpdated;
      case 2:
        return ENavigationInstructionUpdateEvents.NIUE_NextTurnImageUpdated;
      case 4:
        return ENavigationInstructionUpdateEvents.NIUE_LaneInfoUpdated;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
