// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_mapviewlistener.dart";
import "gem_rendercontext.dart";
import "gem_keyboard.dart";
import "gem_string.dart";
import "gem_databuffer.dart";
import "gem_images.dart";

enum ERenderRule {
  RR_NoRender,
  RR_Automatic,
  RR_OnDemand,
}

extension ERenderRuleExtension on ERenderRule {
  int get id {
    switch (this) {
      case ERenderRule.RR_NoRender:
        return 0;
      case ERenderRule.RR_Automatic:
        return 1;
      case ERenderRule.RR_OnDemand:
        return 2;
      default:
        return -1;
    }
  }

  static ERenderRule fromId(int id) {
    switch (id) {
      case 0:
        return ERenderRule.RR_NoRender;
      case 1:
        return ERenderRule.RR_Automatic;
      case 2:
        return ERenderRule.RR_OnDemand;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETouchEvent {
  TE_Down,
  TE_Move,
  TE_Up,
  TE_Cancel,
}

extension ETouchEventExtension on ETouchEvent {
  int get id {
    switch (this) {
      case ETouchEvent.TE_Down:
        return 0;
      case ETouchEvent.TE_Move:
        return 1;
      case ETouchEvent.TE_Up:
        return 2;
      case ETouchEvent.TE_Cancel:
        return 3;
      default:
        return -1;
    }
  }

  static ETouchEvent fromId(int id) {
    switch (id) {
      case 0:
        return ETouchEvent.TE_Down;
      case 1:
        return ETouchEvent.TE_Move;
      case 2:
        return ETouchEvent.TE_Up;
      case 3:
        return ETouchEvent.TE_Cancel;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
