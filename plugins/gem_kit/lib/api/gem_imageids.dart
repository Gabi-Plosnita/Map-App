// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum GemIcon {
  BlueBall,
  FavoriteHeart,
  GreenBall,
  Menu_MoreDotsCircle,
  RedBall,
  Search_Results_Pin,
  Waypoint_Finish,
  Waypoint_Intermediary,
  Waypoint_Start,
  YellowBall,
  CoreCount,
  CoreBase,
}

extension GemIconExtension on GemIcon {
  int get id {
    switch (this) {
      case GemIcon.BlueBall:
        return 54000;
      case GemIcon.FavoriteHeart:
        return 54009;
      case GemIcon.GreenBall:
        return 54001;
      case GemIcon.Menu_MoreDotsCircle:
        return 54005;
      case GemIcon.RedBall:
        return 54002;
      case GemIcon.Search_Results_Pin:
        return 54003;
      case GemIcon.Waypoint_Finish:
        return 54006;
      case GemIcon.Waypoint_Intermediary:
        return 54007;
      case GemIcon.Waypoint_Start:
        return 54008;
      case GemIcon.YellowBall:
        return 54004;
      case GemIcon.CoreCount:
        return 10;
      case GemIcon.CoreBase:
        return 54000;
      default:
        return -1;
    }
  }

  static GemIcon fromId(int id) {
    switch (id) {
      case 54000:
        return GemIcon.BlueBall;
      case 54009:
        return GemIcon.FavoriteHeart;
      case 54001:
        return GemIcon.GreenBall;
      case 54005:
        return GemIcon.Menu_MoreDotsCircle;
      case 54002:
        return GemIcon.RedBall;
      case 54003:
        return GemIcon.Search_Results_Pin;
      case 54006:
        return GemIcon.Waypoint_Finish;
      case 54007:
        return GemIcon.Waypoint_Intermediary;
      case 54008:
        return GemIcon.Waypoint_Start;
      case 54004:
        return GemIcon.YellowBall;
      case 10:
        return GemIcon.CoreCount;
      case 54000:
        return GemIcon.CoreBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
