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
import "gem_landmark.dart";
import "gem_overlays.dart";
import "gem_traffic.dart";
import "gem_markers.dart";
import "gem_routingservice.dart";
import "gem_apilists.dart";

enum EViewDataTransitionStatus {
  VD_Complete,
  VD_IncompleteOnline,
}

extension EViewDataTransitionStatusExtension on EViewDataTransitionStatus {
  int get id {
    switch (this) {
      case EViewDataTransitionStatus.VD_Complete:
        return 0;
      case EViewDataTransitionStatus.VD_IncompleteOnline:
        return 1;
      default:
        return -1;
    }
  }

  static EViewDataTransitionStatus fromId(int id) {
    switch (id) {
      case 0:
        return EViewDataTransitionStatus.VD_Complete;
      case 1:
        return EViewDataTransitionStatus.VD_IncompleteOnline;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EViewCameraTransitionStatus {
  CT_Stationary,
  CT_Moving,
}

extension EViewCameraTransitionStatusExtension on EViewCameraTransitionStatus {
  int get id {
    switch (this) {
      case EViewCameraTransitionStatus.CT_Stationary:
        return 0;
      case EViewCameraTransitionStatus.CT_Moving:
        return 1;
      default:
        return -1;
    }
  }

  static EViewCameraTransitionStatus fromId(int id) {
    switch (id) {
      case 0:
        return EViewCameraTransitionStatus.CT_Stationary;
      case 1:
        return EViewCameraTransitionStatus.CT_Moving;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
