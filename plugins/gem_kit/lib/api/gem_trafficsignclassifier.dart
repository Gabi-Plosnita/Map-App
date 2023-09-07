// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_error.dart";
import "gem_progresslistener.dart";
import "gem_rendercontext.dart";
import "gem_list.dart";

enum ETrafficSignType {
  Unknown,
  Speed5,
  Speed10,
  Speed20,
  Speed25,
  Speed30,
  Speed35,
  Speed40,
  Speed45,
  Speed50,
  Speed55,
  Speed60,
  Speed65,
  Speed70,
  Speed80,
  Speed90,
  Speed100,
  Speed110,
  Speed120,
  Speed130,
  SpeedEndOf,
  SpeedLimitOvertakeEndOf,
  DontOvertakeCars,
  DontOvertakeTrucks,
  DontOvertakeCarsEndOf,
  DontOvertakeTrucksEndOf,
  GeneralCaution,
  BumpyRoad,
  SlipperyRoad,
  BewareIceSnow,
  RoadWork,
  TrafficSignals,
  PedestriansCrossing,
  ChildrenCrossing,
  BicyclesCrossing,
  AnimalsCrossing,
  PriorityRoad,
  Yield,
  Stop,
  RightOfWayNextIntersection,
  NoAccess,
  NoTrucks,
  NoEntry,
  NoStopping,
  AheadOnly,
  RoundaboutMandatory,
  DoubleCurve,
  RoadNarrows,
  DangerousCurveToLeft,
  DangerousCurveToRight,
  DontTurn,
  TurnLeftAhead,
  TurnRightAhead,
  GoStraightOrLeft,
  GoStraightOrRight,
  KeepLeft,
  KeepRight,
  KeepLeftOrRight,
  GivePriority,
  ForbiddenAccess,
  EntryCity,
  ExitCity,
}

extension ETrafficSignTypeExtension on ETrafficSignType {
  int get id {
    switch (this) {
      case ETrafficSignType.Unknown:
        return 0;
      case ETrafficSignType.Speed5:
        return 1;
      case ETrafficSignType.Speed10:
        return 2;
      case ETrafficSignType.Speed20:
        return 3;
      case ETrafficSignType.Speed25:
        return 4;
      case ETrafficSignType.Speed30:
        return 5;
      case ETrafficSignType.Speed35:
        return 6;
      case ETrafficSignType.Speed40:
        return 7;
      case ETrafficSignType.Speed45:
        return 8;
      case ETrafficSignType.Speed50:
        return 9;
      case ETrafficSignType.Speed55:
        return 10;
      case ETrafficSignType.Speed60:
        return 11;
      case ETrafficSignType.Speed65:
        return 12;
      case ETrafficSignType.Speed70:
        return 13;
      case ETrafficSignType.Speed80:
        return 14;
      case ETrafficSignType.Speed90:
        return 15;
      case ETrafficSignType.Speed100:
        return 16;
      case ETrafficSignType.Speed110:
        return 17;
      case ETrafficSignType.Speed120:
        return 18;
      case ETrafficSignType.Speed130:
        return 19;
      case ETrafficSignType.SpeedEndOf:
        return 20;
      case ETrafficSignType.SpeedLimitOvertakeEndOf:
        return 21;
      case ETrafficSignType.DontOvertakeCars:
        return 22;
      case ETrafficSignType.DontOvertakeTrucks:
        return 23;
      case ETrafficSignType.DontOvertakeCarsEndOf:
        return 24;
      case ETrafficSignType.DontOvertakeTrucksEndOf:
        return 25;
      case ETrafficSignType.GeneralCaution:
        return 26;
      case ETrafficSignType.BumpyRoad:
        return 27;
      case ETrafficSignType.SlipperyRoad:
        return 28;
      case ETrafficSignType.BewareIceSnow:
        return 29;
      case ETrafficSignType.RoadWork:
        return 30;
      case ETrafficSignType.TrafficSignals:
        return 31;
      case ETrafficSignType.PedestriansCrossing:
        return 32;
      case ETrafficSignType.ChildrenCrossing:
        return 33;
      case ETrafficSignType.BicyclesCrossing:
        return 34;
      case ETrafficSignType.AnimalsCrossing:
        return 35;
      case ETrafficSignType.PriorityRoad:
        return 36;
      case ETrafficSignType.Yield:
        return 37;
      case ETrafficSignType.Stop:
        return 38;
      case ETrafficSignType.RightOfWayNextIntersection:
        return 39;
      case ETrafficSignType.NoAccess:
        return 40;
      case ETrafficSignType.NoTrucks:
        return 41;
      case ETrafficSignType.NoEntry:
        return 42;
      case ETrafficSignType.NoStopping:
        return 43;
      case ETrafficSignType.AheadOnly:
        return 44;
      case ETrafficSignType.RoundaboutMandatory:
        return 45;
      case ETrafficSignType.DoubleCurve:
        return 46;
      case ETrafficSignType.RoadNarrows:
        return 47;
      case ETrafficSignType.DangerousCurveToLeft:
        return 48;
      case ETrafficSignType.DangerousCurveToRight:
        return 49;
      case ETrafficSignType.DontTurn:
        return 50;
      case ETrafficSignType.TurnLeftAhead:
        return 51;
      case ETrafficSignType.TurnRightAhead:
        return 52;
      case ETrafficSignType.GoStraightOrLeft:
        return 53;
      case ETrafficSignType.GoStraightOrRight:
        return 54;
      case ETrafficSignType.KeepLeft:
        return 55;
      case ETrafficSignType.KeepRight:
        return 56;
      case ETrafficSignType.KeepLeftOrRight:
        return 57;
      case ETrafficSignType.GivePriority:
        return 58;
      case ETrafficSignType.ForbiddenAccess:
        return 59;
      case ETrafficSignType.EntryCity:
        return 60;
      case ETrafficSignType.ExitCity:
        return 61;
      default:
        return -1;
    }
  }

  static ETrafficSignType fromId(int id) {
    switch (id) {
      case 0:
        return ETrafficSignType.Unknown;
      case 1:
        return ETrafficSignType.Speed5;
      case 2:
        return ETrafficSignType.Speed10;
      case 3:
        return ETrafficSignType.Speed20;
      case 4:
        return ETrafficSignType.Speed25;
      case 5:
        return ETrafficSignType.Speed30;
      case 6:
        return ETrafficSignType.Speed35;
      case 7:
        return ETrafficSignType.Speed40;
      case 8:
        return ETrafficSignType.Speed45;
      case 9:
        return ETrafficSignType.Speed50;
      case 10:
        return ETrafficSignType.Speed55;
      case 11:
        return ETrafficSignType.Speed60;
      case 12:
        return ETrafficSignType.Speed65;
      case 13:
        return ETrafficSignType.Speed70;
      case 14:
        return ETrafficSignType.Speed80;
      case 15:
        return ETrafficSignType.Speed90;
      case 16:
        return ETrafficSignType.Speed100;
      case 17:
        return ETrafficSignType.Speed110;
      case 18:
        return ETrafficSignType.Speed120;
      case 19:
        return ETrafficSignType.Speed130;
      case 20:
        return ETrafficSignType.SpeedEndOf;
      case 21:
        return ETrafficSignType.SpeedLimitOvertakeEndOf;
      case 22:
        return ETrafficSignType.DontOvertakeCars;
      case 23:
        return ETrafficSignType.DontOvertakeTrucks;
      case 24:
        return ETrafficSignType.DontOvertakeCarsEndOf;
      case 25:
        return ETrafficSignType.DontOvertakeTrucksEndOf;
      case 26:
        return ETrafficSignType.GeneralCaution;
      case 27:
        return ETrafficSignType.BumpyRoad;
      case 28:
        return ETrafficSignType.SlipperyRoad;
      case 29:
        return ETrafficSignType.BewareIceSnow;
      case 30:
        return ETrafficSignType.RoadWork;
      case 31:
        return ETrafficSignType.TrafficSignals;
      case 32:
        return ETrafficSignType.PedestriansCrossing;
      case 33:
        return ETrafficSignType.ChildrenCrossing;
      case 34:
        return ETrafficSignType.BicyclesCrossing;
      case 35:
        return ETrafficSignType.AnimalsCrossing;
      case 36:
        return ETrafficSignType.PriorityRoad;
      case 37:
        return ETrafficSignType.Yield;
      case 38:
        return ETrafficSignType.Stop;
      case 39:
        return ETrafficSignType.RightOfWayNextIntersection;
      case 40:
        return ETrafficSignType.NoAccess;
      case 41:
        return ETrafficSignType.NoTrucks;
      case 42:
        return ETrafficSignType.NoEntry;
      case 43:
        return ETrafficSignType.NoStopping;
      case 44:
        return ETrafficSignType.AheadOnly;
      case 45:
        return ETrafficSignType.RoundaboutMandatory;
      case 46:
        return ETrafficSignType.DoubleCurve;
      case 47:
        return ETrafficSignType.RoadNarrows;
      case 48:
        return ETrafficSignType.DangerousCurveToLeft;
      case 49:
        return ETrafficSignType.DangerousCurveToRight;
      case 50:
        return ETrafficSignType.DontTurn;
      case 51:
        return ETrafficSignType.TurnLeftAhead;
      case 52:
        return ETrafficSignType.TurnRightAhead;
      case 53:
        return ETrafficSignType.GoStraightOrLeft;
      case 54:
        return ETrafficSignType.GoStraightOrRight;
      case 55:
        return ETrafficSignType.KeepLeft;
      case 56:
        return ETrafficSignType.KeepRight;
      case 57:
        return ETrafficSignType.KeepLeftOrRight;
      case 58:
        return ETrafficSignType.GivePriority;
      case 59:
        return ETrafficSignType.ForbiddenAccess;
      case 60:
        return ETrafficSignType.EntryCity;
      case 61:
        return ETrafficSignType.ExitCity;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
