// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum Layout {
  NavigationLayoutBgr_SpeedAlarm,
  NavigationLayout_GreenBall,
  NavigationLayout_RedBall,
  NavigationLayout_TrafficMapRepresentation,
  NavigationLayout_TrafficMapRepresentation_16x64,
  NavigationLayout_YellowBall,
  LayoutCount,
  LayoutBase,
}

extension LayoutExtension on Layout {
  int get id {
    switch (this) {
      case Layout.NavigationLayoutBgr_SpeedAlarm:
        return 20105;
      case Layout.NavigationLayout_GreenBall:
        return 20111;
      case Layout.NavigationLayout_RedBall:
        return 20112;
      case Layout.NavigationLayout_TrafficMapRepresentation:
        return 20177;
      case Layout.NavigationLayout_TrafficMapRepresentation_16x64:
        return 20179;
      case Layout.NavigationLayout_YellowBall:
        return 20113;
      case Layout.LayoutCount:
        return 6;
      case Layout.LayoutBase:
        return 20000;
      default:
        return -1;
    }
  }

  static Layout fromId(int id) {
    switch (id) {
      case 20105:
        return Layout.NavigationLayoutBgr_SpeedAlarm;
      case 20111:
        return Layout.NavigationLayout_GreenBall;
      case 20112:
        return Layout.NavigationLayout_RedBall;
      case 20177:
        return Layout.NavigationLayout_TrafficMapRepresentation;
      case 20179:
        return Layout.NavigationLayout_TrafficMapRepresentation_16x64;
      case 20113:
        return Layout.NavigationLayout_YellowBall;
      case 6:
        return Layout.LayoutCount;
      case 20000:
        return Layout.LayoutBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum Toolbar_NavigationBar_Icons {
  Button_Chart,
  Button_DayColors,
  Button_DefineRoadBlock,
  Button_DownloadMaps,
  Button_DownloadMaps_Animation_01,
  Button_DownloadMaps_Animation_02,
  Button_DownloadMaps_Animation_03,
  Button_DownloadMaps_Animation_04,
  Button_DownloadMaps_Animation_05,
  Button_DownloadMaps_Animation_06,
  Button_DownloadMaps_Animation_07,
  Button_DownloadMaps_Animation_08,
  Button_DownloadMaps_Animation_09,
  Button_DownloadMaps_Animation_10,
  Button_DownloadMaps_Animation_11,
  Button_DownloadMaps_Animation_12,
  Button_DownloadMaps_Animation_13,
  Button_DownloadMaps_Animation_14,
  Button_DownloadMaps_Animation_15,
  Button_DownloadMaps_Animation_16,
  Button_DownloadMaps_Animation_17,
  Button_DownloadMaps_Animation_18,
  Button_GetDirections,
  Button_GetDirectionsWithPin,
  Button_Layers,
  Button_NightColors,
  Button_Settings,
  Button_Share,
  Button_Share_White,
  Button_SoundOff,
  Button_SoundOn,
  DashCamera,
  Toolbar_NavigationBar_IconsCount,
  Toolbar_NavigationBar_IconsBase,
}

extension Toolbar_NavigationBar_IconsExtension on Toolbar_NavigationBar_Icons {
  int get id {
    switch (this) {
      case Toolbar_NavigationBar_Icons.Button_Chart:
        return 34068;
      case Toolbar_NavigationBar_Icons.Button_DayColors:
        return 34001;
      case Toolbar_NavigationBar_Icons.Button_DefineRoadBlock:
        return 34014;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps:
        return 34003;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_01:
        return 34045;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_02:
        return 34046;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_03:
        return 34047;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_04:
        return 34048;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_05:
        return 34049;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_06:
        return 34050;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_07:
        return 34051;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_08:
        return 34052;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_09:
        return 34053;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_10:
        return 34054;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_11:
        return 34055;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_12:
        return 34056;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_13:
        return 34057;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_14:
        return 34058;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_15:
        return 34059;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_16:
        return 34060;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_17:
        return 34061;
      case Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_18:
        return 34062;
      case Toolbar_NavigationBar_Icons.Button_GetDirections:
        return 34017;
      case Toolbar_NavigationBar_Icons.Button_GetDirectionsWithPin:
        return 34066;
      case Toolbar_NavigationBar_Icons.Button_Layers:
        return 34004;
      case Toolbar_NavigationBar_Icons.Button_NightColors:
        return 34005;
      case Toolbar_NavigationBar_Icons.Button_Settings:
        return 34008;
      case Toolbar_NavigationBar_Icons.Button_Share:
        return 34009;
      case Toolbar_NavigationBar_Icons.Button_Share_White:
        return 34065;
      case Toolbar_NavigationBar_Icons.Button_SoundOff:
        return 34010;
      case Toolbar_NavigationBar_Icons.Button_SoundOn:
        return 34011;
      case Toolbar_NavigationBar_Icons.DashCamera:
        return 34069;
      case Toolbar_NavigationBar_Icons.Toolbar_NavigationBar_IconsCount:
        return 32;
      case Toolbar_NavigationBar_Icons.Toolbar_NavigationBar_IconsBase:
        return 34000;
      default:
        return -1;
    }
  }

  static Toolbar_NavigationBar_Icons fromId(int id) {
    switch (id) {
      case 34068:
        return Toolbar_NavigationBar_Icons.Button_Chart;
      case 34001:
        return Toolbar_NavigationBar_Icons.Button_DayColors;
      case 34014:
        return Toolbar_NavigationBar_Icons.Button_DefineRoadBlock;
      case 34003:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps;
      case 34045:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_01;
      case 34046:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_02;
      case 34047:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_03;
      case 34048:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_04;
      case 34049:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_05;
      case 34050:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_06;
      case 34051:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_07;
      case 34052:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_08;
      case 34053:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_09;
      case 34054:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_10;
      case 34055:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_11;
      case 34056:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_12;
      case 34057:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_13;
      case 34058:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_14;
      case 34059:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_15;
      case 34060:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_16;
      case 34061:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_17;
      case 34062:
        return Toolbar_NavigationBar_Icons.Button_DownloadMaps_Animation_18;
      case 34017:
        return Toolbar_NavigationBar_Icons.Button_GetDirections;
      case 34066:
        return Toolbar_NavigationBar_Icons.Button_GetDirectionsWithPin;
      case 34004:
        return Toolbar_NavigationBar_Icons.Button_Layers;
      case 34005:
        return Toolbar_NavigationBar_Icons.Button_NightColors;
      case 34008:
        return Toolbar_NavigationBar_Icons.Button_Settings;
      case 34009:
        return Toolbar_NavigationBar_Icons.Button_Share;
      case 34065:
        return Toolbar_NavigationBar_Icons.Button_Share_White;
      case 34010:
        return Toolbar_NavigationBar_Icons.Button_SoundOff;
      case 34011:
        return Toolbar_NavigationBar_Icons.Button_SoundOn;
      case 34069:
        return Toolbar_NavigationBar_Icons.DashCamera;
      case 32:
        return Toolbar_NavigationBar_Icons.Toolbar_NavigationBar_IconsCount;
      case 34000:
        return Toolbar_NavigationBar_Icons.Toolbar_NavigationBar_IconsBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum PublicTransport {
  PublicTransport_Arrow,
  PublicTransport_Bus,
  PublicTransport_Other,
  PublicTransport_Train,
  PublicTransport_Tram,
  PublicTransport_Underground,
  PublicTransport_Walk,
  PublicTransport_Water,
  PublicTransportCount,
  PublicTransportBase,
}

extension PublicTransportExtension on PublicTransport {
  int get id {
    switch (this) {
      case PublicTransport.PublicTransport_Arrow:
        return 42006;
      case PublicTransport.PublicTransport_Bus:
        return 42000;
      case PublicTransport.PublicTransport_Other:
        return 42008;
      case PublicTransport.PublicTransport_Train:
        return 42001;
      case PublicTransport.PublicTransport_Tram:
        return 42002;
      case PublicTransport.PublicTransport_Underground:
        return 42003;
      case PublicTransport.PublicTransport_Walk:
        return 42004;
      case PublicTransport.PublicTransport_Water:
        return 42005;
      case PublicTransport.PublicTransportCount:
        return 8;
      case PublicTransport.PublicTransportBase:
        return 42000;
      default:
        return -1;
    }
  }

  static PublicTransport fromId(int id) {
    switch (id) {
      case 42006:
        return PublicTransport.PublicTransport_Arrow;
      case 42000:
        return PublicTransport.PublicTransport_Bus;
      case 42008:
        return PublicTransport.PublicTransport_Other;
      case 42001:
        return PublicTransport.PublicTransport_Train;
      case 42002:
        return PublicTransport.PublicTransport_Tram;
      case 42003:
        return PublicTransport.PublicTransport_Underground;
      case 42004:
        return PublicTransport.PublicTransport_Walk;
      case 42005:
        return PublicTransport.PublicTransport_Water;
      case 8:
        return PublicTransport.PublicTransportCount;
      case 42000:
        return PublicTransport.PublicTransportBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum DriverAssistance {
  eMS_Diagnostic_ExcessiveMovement,
  eMS_Diagnostic_HeavyRain,
  eMS_Diagnostic_LowImageQuality,
  eMS_Diagnostic_LowVisibility,
  eMS_Diagnostic_SafetyLensAnimation_01,
  eMS_Diagnostic_SafetyLensAnimation_02,
  eMS_Diagnostic_SafetyLensAnimation_03,
  eMS_Diagnostic_SafetyLensAnimation_04,
  eMS_Diagnostic_SafetyLensAnimation_05,
  eMS_Diagnostic_SafetyLensAnimation_06,
  eMS_Diagnostic_SafetyLensAnimation_07,
  eMS_Diagnostic_SafetyLensAnimation_08,
  eMS_Diagnostic_SafetyLensAnimation_09,
  eMS_Diagnostic_SafetyLensAnimation_10,
  eMS_Diagnostic_SafetyLensAnimation_11,
  eMS_Diagnostic_SafetyLensAnimation_12,
  eMS_Diagnostic_SafetyLensAnimation_13,
  eMS_Diagnostic_SafetyLensAnimation_14,
  eMS_Diagnostic_SafetyLensAnimation_15,
  eMS_Diagnostic_SafetyLensDisabled,
  eMS_Diagnostic_SafetyLensEnabled,
  eMS_Lane_LaneDepartureLeftDashed_Flash,
  eMS_Lane_LaneDepartureLeftDashed_NoFlash,
  eMS_Lane_LaneDepartureLeftSolid_Flash,
  eMS_Lane_LaneDepartureLeftSolid_NoFlash,
  eMS_Lane_LaneDepartureRightDashed_Flash,
  eMS_Lane_LaneDepartureRightDashed_NoFlash,
  eMS_Lane_LaneDepartureRightSolid_Flash,
  eMS_Lane_LaneDepartureRightSolid_NoFlash,
  eMS_Pedestrian_Collision,
  eMS_Pedestrian_Collision_NoFlash,
  eMS_TrafficSign_EUR_AheadOnly,
  eMS_TrafficSign_EUR_AllEndOf,
  eMS_TrafficSign_EUR_BewareIceSnow,
  eMS_TrafficSign_EUR_BumpyRoad,
  eMS_TrafficSign_EUR_ByciclesCrossing,
  eMS_TrafficSign_EUR_ChildrenCrossing,
  eMS_TrafficSign_EUR_DangerousCurveToLeft,
  eMS_TrafficSign_EUR_DangerousCurveToRight,
  eMS_TrafficSign_EUR_DontOvertakeCars,
  eMS_TrafficSign_EUR_DontOvertakeCarsEndOf,
  eMS_TrafficSign_EUR_DontOvertakeTrucks,
  eMS_TrafficSign_EUR_DontOvertakeTrucksEndOf,
  eMS_TrafficSign_EUR_DoubleCurve,
  eMS_TrafficSign_EUR_EndSpeedLimit80Kmh,
  eMS_TrafficSign_EUR_GeneralCaution,
  eMS_TrafficSign_EUR_GoStraightOrLeft,
  eMS_TrafficSign_EUR_GoStraightOrRight,
  eMS_TrafficSign_EUR_KeepLeft,
  eMS_TrafficSign_EUR_KeepRight,
  eMS_TrafficSign_EUR_NoEntry,
  eMS_TrafficSign_EUR_NoTrucks,
  eMS_TrafficSign_EUR_NoVehicles,
  eMS_TrafficSign_EUR_Pedestrians,
  eMS_TrafficSign_EUR_PriorityRoad,
  eMS_TrafficSign_EUR_RightOfWayNextIntersection,
  eMS_TrafficSign_EUR_RoadNarrowsOnRight,
  eMS_TrafficSign_EUR_RoadWork,
  eMS_TrafficSign_EUR_RoundAboutMandatory,
  eMS_TrafficSign_EUR_SlipperyRoad,
  eMS_TrafficSign_EUR_Speed100,
  eMS_TrafficSign_EUR_Speed110,
  eMS_TrafficSign_EUR_Speed120,
  eMS_TrafficSign_EUR_Speed130,
  eMS_TrafficSign_EUR_Speed140,
  eMS_TrafficSign_EUR_Speed20,
  eMS_TrafficSign_EUR_Speed25,
  eMS_TrafficSign_EUR_Speed30,
  eMS_TrafficSign_EUR_Speed35,
  eMS_TrafficSign_EUR_Speed40,
  eMS_TrafficSign_EUR_Speed45,
  eMS_TrafficSign_EUR_Speed50,
  eMS_TrafficSign_EUR_Speed55,
  eMS_TrafficSign_EUR_Speed60,
  eMS_TrafficSign_EUR_Speed65,
  eMS_TrafficSign_EUR_Speed70,
  eMS_TrafficSign_EUR_Speed75,
  eMS_TrafficSign_EUR_Speed80,
  eMS_TrafficSign_EUR_Speed85,
  eMS_TrafficSign_EUR_Speed90,
  eMS_TrafficSign_EUR_SpeedEndOf,
  eMS_TrafficSign_EUR_TrafficSignals,
  eMS_TrafficSign_EUR_TurnLeftAhead,
  eMS_TrafficSign_EUR_TurnRightAhead,
  eMS_TrafficSign_EUR_WildAnimalsCrossing,
  eMS_TrafficSign_Stop,
  eMS_TrafficSign_USA_Speed100,
  eMS_TrafficSign_USA_Speed110,
  eMS_TrafficSign_USA_Speed120,
  eMS_TrafficSign_USA_Speed130,
  eMS_TrafficSign_USA_Speed140,
  eMS_TrafficSign_USA_Speed20,
  eMS_TrafficSign_USA_Speed25,
  eMS_TrafficSign_USA_Speed30,
  eMS_TrafficSign_USA_Speed35,
  eMS_TrafficSign_USA_Speed40,
  eMS_TrafficSign_USA_Speed45,
  eMS_TrafficSign_USA_Speed50,
  eMS_TrafficSign_USA_Speed55,
  eMS_TrafficSign_USA_Speed60,
  eMS_TrafficSign_USA_Speed65,
  eMS_TrafficSign_USA_Speed70,
  eMS_TrafficSign_USA_Speed75,
  eMS_TrafficSign_USA_Speed80,
  eMS_TrafficSign_USA_Speed85,
  eMS_TrafficSign_USA_Speed90,
  eMS_TrafficSign_Yield,
  eMS_Vehicle_Collision,
  eMS_Vehicle_Collision_NoFlash,
  eMS_Vehicle_DangerousHeadway,
  eMS_Vehicle_MovingTraffic,
  eMS_Vehicle_MovingTraffic_00,
  eMS_Vehicle_MovingTraffic_00_Watch,
  eMS_Vehicle_MovingTraffic_01_Watch,
  eMS_Vehicle_MovingTraffic_02_Watch,
  eMS_Vehicle_MovingTraffic_03_Watch,
  eMS_Vehicle_MovingTraffic_04_Watch,
  eMS_Vehicle_MovingTraffic_05_Watch,
  eMS_Vehicle_MovingTraffic_06_Watch,
  eMS_Vehicle_MovingTraffic_07_Watch,
  eMS_Vehicle_MovingTraffic_08_Watch,
  eMS_Vehicle_MovingTraffic_09_Watch,
  eMS_Vehicle_MovingTraffic_10,
  eMS_Vehicle_MovingTraffic_10_Watch,
  eMS_Vehicle_NearbyVehicle,
  DriverAssistanceCount,
  DriverAssistanceBase,
}

extension DriverAssistanceExtension on DriverAssistance {
  int get id {
    switch (this) {
      case DriverAssistance.eMS_Diagnostic_ExcessiveMovement:
        return 48071;
      case DriverAssistance.eMS_Diagnostic_HeavyRain:
        return 48009;
      case DriverAssistance.eMS_Diagnostic_LowImageQuality:
        return 48010;
      case DriverAssistance.eMS_Diagnostic_LowVisibility:
        return 48011;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_01:
        return 48151;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_02:
        return 48152;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_03:
        return 48153;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_04:
        return 48154;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_05:
        return 48155;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_06:
        return 48156;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_07:
        return 48157;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_08:
        return 48158;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_09:
        return 48159;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_10:
        return 48160;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_11:
        return 48161;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_12:
        return 48162;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_13:
        return 48163;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_14:
        return 48164;
      case DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_15:
        return 48165;
      case DriverAssistance.eMS_Diagnostic_SafetyLensDisabled:
        return 48126;
      case DriverAssistance.eMS_Diagnostic_SafetyLensEnabled:
        return 48127;
      case DriverAssistance.eMS_Lane_LaneDepartureLeftDashed_Flash:
        return 48013;
      case DriverAssistance.eMS_Lane_LaneDepartureLeftDashed_NoFlash:
        return 48072;
      case DriverAssistance.eMS_Lane_LaneDepartureLeftSolid_Flash:
        return 48015;
      case DriverAssistance.eMS_Lane_LaneDepartureLeftSolid_NoFlash:
        return 48073;
      case DriverAssistance.eMS_Lane_LaneDepartureRightDashed_Flash:
        return 48017;
      case DriverAssistance.eMS_Lane_LaneDepartureRightDashed_NoFlash:
        return 48074;
      case DriverAssistance.eMS_Lane_LaneDepartureRightSolid_Flash:
        return 48019;
      case DriverAssistance.eMS_Lane_LaneDepartureRightSolid_NoFlash:
        return 48075;
      case DriverAssistance.eMS_Pedestrian_Collision:
        return 48020;
      case DriverAssistance.eMS_Pedestrian_Collision_NoFlash:
        return 48123;
      case DriverAssistance.eMS_TrafficSign_EUR_AheadOnly:
        return 48229;
      case DriverAssistance.eMS_TrafficSign_EUR_AllEndOf:
        return 48023;
      case DriverAssistance.eMS_TrafficSign_EUR_BewareIceSnow:
        return 48230;
      case DriverAssistance.eMS_TrafficSign_EUR_BumpyRoad:
        return 48231;
      case DriverAssistance.eMS_TrafficSign_EUR_ByciclesCrossing:
        return 48232;
      case DriverAssistance.eMS_TrafficSign_EUR_ChildrenCrossing:
        return 48233;
      case DriverAssistance.eMS_TrafficSign_EUR_DangerousCurveToLeft:
        return 48234;
      case DriverAssistance.eMS_TrafficSign_EUR_DangerousCurveToRight:
        return 48235;
      case DriverAssistance.eMS_TrafficSign_EUR_DontOvertakeCars:
        return 48024;
      case DriverAssistance.eMS_TrafficSign_EUR_DontOvertakeCarsEndOf:
        return 48025;
      case DriverAssistance.eMS_TrafficSign_EUR_DontOvertakeTrucks:
        return 48026;
      case DriverAssistance.eMS_TrafficSign_EUR_DontOvertakeTrucksEndOf:
        return 48027;
      case DriverAssistance.eMS_TrafficSign_EUR_DoubleCurve:
        return 48236;
      case DriverAssistance.eMS_TrafficSign_EUR_EndSpeedLimit80Kmh:
        return 48237;
      case DriverAssistance.eMS_TrafficSign_EUR_GeneralCaution:
        return 48238;
      case DriverAssistance.eMS_TrafficSign_EUR_GoStraightOrLeft:
        return 48239;
      case DriverAssistance.eMS_TrafficSign_EUR_GoStraightOrRight:
        return 48240;
      case DriverAssistance.eMS_TrafficSign_EUR_KeepLeft:
        return 48241;
      case DriverAssistance.eMS_TrafficSign_EUR_KeepRight:
        return 48242;
      case DriverAssistance.eMS_TrafficSign_EUR_NoEntry:
        return 48243;
      case DriverAssistance.eMS_TrafficSign_EUR_NoTrucks:
        return 48244;
      case DriverAssistance.eMS_TrafficSign_EUR_NoVehicles:
        return 48245;
      case DriverAssistance.eMS_TrafficSign_EUR_Pedestrians:
        return 48246;
      case DriverAssistance.eMS_TrafficSign_EUR_PriorityRoad:
        return 48247;
      case DriverAssistance.eMS_TrafficSign_EUR_RightOfWayNextIntersection:
        return 48248;
      case DriverAssistance.eMS_TrafficSign_EUR_RoadNarrowsOnRight:
        return 48249;
      case DriverAssistance.eMS_TrafficSign_EUR_RoadWork:
        return 48250;
      case DriverAssistance.eMS_TrafficSign_EUR_RoundAboutMandatory:
        return 48251;
      case DriverAssistance.eMS_TrafficSign_EUR_SlipperyRoad:
        return 48252;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed100:
        return 48028;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed110:
        return 48029;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed120:
        return 48030;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed130:
        return 48031;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed140:
        return 48032;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed20:
        return 48034;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed25:
        return 48035;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed30:
        return 48036;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed35:
        return 48037;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed40:
        return 48038;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed45:
        return 48039;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed50:
        return 48040;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed55:
        return 48041;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed60:
        return 48042;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed65:
        return 48043;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed70:
        return 48044;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed75:
        return 48045;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed80:
        return 48046;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed85:
        return 48047;
      case DriverAssistance.eMS_TrafficSign_EUR_Speed90:
        return 48048;
      case DriverAssistance.eMS_TrafficSign_EUR_SpeedEndOf:
        return 48049;
      case DriverAssistance.eMS_TrafficSign_EUR_TrafficSignals:
        return 48253;
      case DriverAssistance.eMS_TrafficSign_EUR_TurnLeftAhead:
        return 48254;
      case DriverAssistance.eMS_TrafficSign_EUR_TurnRightAhead:
        return 48255;
      case DriverAssistance.eMS_TrafficSign_EUR_WildAnimalsCrossing:
        return 48256;
      case DriverAssistance.eMS_TrafficSign_Stop:
        return 48167;
      case DriverAssistance.eMS_TrafficSign_USA_Speed100:
        return 48050;
      case DriverAssistance.eMS_TrafficSign_USA_Speed110:
        return 48051;
      case DriverAssistance.eMS_TrafficSign_USA_Speed120:
        return 48052;
      case DriverAssistance.eMS_TrafficSign_USA_Speed130:
        return 48053;
      case DriverAssistance.eMS_TrafficSign_USA_Speed140:
        return 48054;
      case DriverAssistance.eMS_TrafficSign_USA_Speed20:
        return 48056;
      case DriverAssistance.eMS_TrafficSign_USA_Speed25:
        return 48057;
      case DriverAssistance.eMS_TrafficSign_USA_Speed30:
        return 48058;
      case DriverAssistance.eMS_TrafficSign_USA_Speed35:
        return 48059;
      case DriverAssistance.eMS_TrafficSign_USA_Speed40:
        return 48060;
      case DriverAssistance.eMS_TrafficSign_USA_Speed45:
        return 48061;
      case DriverAssistance.eMS_TrafficSign_USA_Speed50:
        return 48062;
      case DriverAssistance.eMS_TrafficSign_USA_Speed55:
        return 48063;
      case DriverAssistance.eMS_TrafficSign_USA_Speed60:
        return 48064;
      case DriverAssistance.eMS_TrafficSign_USA_Speed65:
        return 48065;
      case DriverAssistance.eMS_TrafficSign_USA_Speed70:
        return 48066;
      case DriverAssistance.eMS_TrafficSign_USA_Speed75:
        return 48067;
      case DriverAssistance.eMS_TrafficSign_USA_Speed80:
        return 48068;
      case DriverAssistance.eMS_TrafficSign_USA_Speed85:
        return 48069;
      case DriverAssistance.eMS_TrafficSign_USA_Speed90:
        return 48070;
      case DriverAssistance.eMS_TrafficSign_Yield:
        return 48228;
      case DriverAssistance.eMS_Vehicle_Collision:
        return 48021;
      case DriverAssistance.eMS_Vehicle_Collision_NoFlash:
        return 48124;
      case DriverAssistance.eMS_Vehicle_DangerousHeadway:
        return 48022;
      case DriverAssistance.eMS_Vehicle_MovingTraffic:
        return 48125;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_00:
        return 48129;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_00_Watch:
        return 48130;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_01_Watch:
        return 48132;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_02_Watch:
        return 48134;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_03_Watch:
        return 48136;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_04_Watch:
        return 48138;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_05_Watch:
        return 48140;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_06_Watch:
        return 48142;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_07_Watch:
        return 48144;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_08_Watch:
        return 48146;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_09_Watch:
        return 48148;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_10:
        return 48149;
      case DriverAssistance.eMS_Vehicle_MovingTraffic_10_Watch:
        return 48150;
      case DriverAssistance.eMS_Vehicle_NearbyVehicle:
        return 48128;
      case DriverAssistance.DriverAssistanceCount:
        return 125;
      case DriverAssistance.DriverAssistanceBase:
        return 48000;
      default:
        return -1;
    }
  }

  static DriverAssistance fromId(int id) {
    switch (id) {
      case 48071:
        return DriverAssistance.eMS_Diagnostic_ExcessiveMovement;
      case 48009:
        return DriverAssistance.eMS_Diagnostic_HeavyRain;
      case 48010:
        return DriverAssistance.eMS_Diagnostic_LowImageQuality;
      case 48011:
        return DriverAssistance.eMS_Diagnostic_LowVisibility;
      case 48151:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_01;
      case 48152:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_02;
      case 48153:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_03;
      case 48154:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_04;
      case 48155:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_05;
      case 48156:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_06;
      case 48157:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_07;
      case 48158:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_08;
      case 48159:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_09;
      case 48160:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_10;
      case 48161:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_11;
      case 48162:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_12;
      case 48163:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_13;
      case 48164:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_14;
      case 48165:
        return DriverAssistance.eMS_Diagnostic_SafetyLensAnimation_15;
      case 48126:
        return DriverAssistance.eMS_Diagnostic_SafetyLensDisabled;
      case 48127:
        return DriverAssistance.eMS_Diagnostic_SafetyLensEnabled;
      case 48013:
        return DriverAssistance.eMS_Lane_LaneDepartureLeftDashed_Flash;
      case 48072:
        return DriverAssistance.eMS_Lane_LaneDepartureLeftDashed_NoFlash;
      case 48015:
        return DriverAssistance.eMS_Lane_LaneDepartureLeftSolid_Flash;
      case 48073:
        return DriverAssistance.eMS_Lane_LaneDepartureLeftSolid_NoFlash;
      case 48017:
        return DriverAssistance.eMS_Lane_LaneDepartureRightDashed_Flash;
      case 48074:
        return DriverAssistance.eMS_Lane_LaneDepartureRightDashed_NoFlash;
      case 48019:
        return DriverAssistance.eMS_Lane_LaneDepartureRightSolid_Flash;
      case 48075:
        return DriverAssistance.eMS_Lane_LaneDepartureRightSolid_NoFlash;
      case 48020:
        return DriverAssistance.eMS_Pedestrian_Collision;
      case 48123:
        return DriverAssistance.eMS_Pedestrian_Collision_NoFlash;
      case 48229:
        return DriverAssistance.eMS_TrafficSign_EUR_AheadOnly;
      case 48023:
        return DriverAssistance.eMS_TrafficSign_EUR_AllEndOf;
      case 48230:
        return DriverAssistance.eMS_TrafficSign_EUR_BewareIceSnow;
      case 48231:
        return DriverAssistance.eMS_TrafficSign_EUR_BumpyRoad;
      case 48232:
        return DriverAssistance.eMS_TrafficSign_EUR_ByciclesCrossing;
      case 48233:
        return DriverAssistance.eMS_TrafficSign_EUR_ChildrenCrossing;
      case 48234:
        return DriverAssistance.eMS_TrafficSign_EUR_DangerousCurveToLeft;
      case 48235:
        return DriverAssistance.eMS_TrafficSign_EUR_DangerousCurveToRight;
      case 48024:
        return DriverAssistance.eMS_TrafficSign_EUR_DontOvertakeCars;
      case 48025:
        return DriverAssistance.eMS_TrafficSign_EUR_DontOvertakeCarsEndOf;
      case 48026:
        return DriverAssistance.eMS_TrafficSign_EUR_DontOvertakeTrucks;
      case 48027:
        return DriverAssistance.eMS_TrafficSign_EUR_DontOvertakeTrucksEndOf;
      case 48236:
        return DriverAssistance.eMS_TrafficSign_EUR_DoubleCurve;
      case 48237:
        return DriverAssistance.eMS_TrafficSign_EUR_EndSpeedLimit80Kmh;
      case 48238:
        return DriverAssistance.eMS_TrafficSign_EUR_GeneralCaution;
      case 48239:
        return DriverAssistance.eMS_TrafficSign_EUR_GoStraightOrLeft;
      case 48240:
        return DriverAssistance.eMS_TrafficSign_EUR_GoStraightOrRight;
      case 48241:
        return DriverAssistance.eMS_TrafficSign_EUR_KeepLeft;
      case 48242:
        return DriverAssistance.eMS_TrafficSign_EUR_KeepRight;
      case 48243:
        return DriverAssistance.eMS_TrafficSign_EUR_NoEntry;
      case 48244:
        return DriverAssistance.eMS_TrafficSign_EUR_NoTrucks;
      case 48245:
        return DriverAssistance.eMS_TrafficSign_EUR_NoVehicles;
      case 48246:
        return DriverAssistance.eMS_TrafficSign_EUR_Pedestrians;
      case 48247:
        return DriverAssistance.eMS_TrafficSign_EUR_PriorityRoad;
      case 48248:
        return DriverAssistance.eMS_TrafficSign_EUR_RightOfWayNextIntersection;
      case 48249:
        return DriverAssistance.eMS_TrafficSign_EUR_RoadNarrowsOnRight;
      case 48250:
        return DriverAssistance.eMS_TrafficSign_EUR_RoadWork;
      case 48251:
        return DriverAssistance.eMS_TrafficSign_EUR_RoundAboutMandatory;
      case 48252:
        return DriverAssistance.eMS_TrafficSign_EUR_SlipperyRoad;
      case 48028:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed100;
      case 48029:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed110;
      case 48030:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed120;
      case 48031:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed130;
      case 48032:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed140;
      case 48034:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed20;
      case 48035:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed25;
      case 48036:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed30;
      case 48037:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed35;
      case 48038:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed40;
      case 48039:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed45;
      case 48040:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed50;
      case 48041:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed55;
      case 48042:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed60;
      case 48043:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed65;
      case 48044:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed70;
      case 48045:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed75;
      case 48046:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed80;
      case 48047:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed85;
      case 48048:
        return DriverAssistance.eMS_TrafficSign_EUR_Speed90;
      case 48049:
        return DriverAssistance.eMS_TrafficSign_EUR_SpeedEndOf;
      case 48253:
        return DriverAssistance.eMS_TrafficSign_EUR_TrafficSignals;
      case 48254:
        return DriverAssistance.eMS_TrafficSign_EUR_TurnLeftAhead;
      case 48255:
        return DriverAssistance.eMS_TrafficSign_EUR_TurnRightAhead;
      case 48256:
        return DriverAssistance.eMS_TrafficSign_EUR_WildAnimalsCrossing;
      case 48167:
        return DriverAssistance.eMS_TrafficSign_Stop;
      case 48050:
        return DriverAssistance.eMS_TrafficSign_USA_Speed100;
      case 48051:
        return DriverAssistance.eMS_TrafficSign_USA_Speed110;
      case 48052:
        return DriverAssistance.eMS_TrafficSign_USA_Speed120;
      case 48053:
        return DriverAssistance.eMS_TrafficSign_USA_Speed130;
      case 48054:
        return DriverAssistance.eMS_TrafficSign_USA_Speed140;
      case 48056:
        return DriverAssistance.eMS_TrafficSign_USA_Speed20;
      case 48057:
        return DriverAssistance.eMS_TrafficSign_USA_Speed25;
      case 48058:
        return DriverAssistance.eMS_TrafficSign_USA_Speed30;
      case 48059:
        return DriverAssistance.eMS_TrafficSign_USA_Speed35;
      case 48060:
        return DriverAssistance.eMS_TrafficSign_USA_Speed40;
      case 48061:
        return DriverAssistance.eMS_TrafficSign_USA_Speed45;
      case 48062:
        return DriverAssistance.eMS_TrafficSign_USA_Speed50;
      case 48063:
        return DriverAssistance.eMS_TrafficSign_USA_Speed55;
      case 48064:
        return DriverAssistance.eMS_TrafficSign_USA_Speed60;
      case 48065:
        return DriverAssistance.eMS_TrafficSign_USA_Speed65;
      case 48066:
        return DriverAssistance.eMS_TrafficSign_USA_Speed70;
      case 48067:
        return DriverAssistance.eMS_TrafficSign_USA_Speed75;
      case 48068:
        return DriverAssistance.eMS_TrafficSign_USA_Speed80;
      case 48069:
        return DriverAssistance.eMS_TrafficSign_USA_Speed85;
      case 48070:
        return DriverAssistance.eMS_TrafficSign_USA_Speed90;
      case 48228:
        return DriverAssistance.eMS_TrafficSign_Yield;
      case 48021:
        return DriverAssistance.eMS_Vehicle_Collision;
      case 48124:
        return DriverAssistance.eMS_Vehicle_Collision_NoFlash;
      case 48022:
        return DriverAssistance.eMS_Vehicle_DangerousHeadway;
      case 48125:
        return DriverAssistance.eMS_Vehicle_MovingTraffic;
      case 48129:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_00;
      case 48130:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_00_Watch;
      case 48132:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_01_Watch;
      case 48134:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_02_Watch;
      case 48136:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_03_Watch;
      case 48138:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_04_Watch;
      case 48140:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_05_Watch;
      case 48142:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_06_Watch;
      case 48144:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_07_Watch;
      case 48146:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_08_Watch;
      case 48148:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_09_Watch;
      case 48149:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_10;
      case 48150:
        return DriverAssistance.eMS_Vehicle_MovingTraffic_10_Watch;
      case 48128:
        return DriverAssistance.eMS_Vehicle_NearbyVehicle;
      case 125:
        return DriverAssistance.DriverAssistanceCount;
      case 48000:
        return DriverAssistance.DriverAssistanceBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum UI {
  ADAS_Off,
  ADAS_On,
  AutoZoom,
  BatteryCharging,
  BatteryLevelIndicator_0,
  BatteryLevelIndicator_10,
  BatteryLevelIndicator_100,
  BatteryLevelIndicator_20,
  BatteryLevelIndicator_30,
  BatteryLevelIndicator_40,
  BatteryLevelIndicator_50,
  BatteryLevelIndicator_60,
  BatteryLevelIndicator_70,
  BatteryLevelIndicator_80,
  BatteryLevelIndicator_90,
  BikeTo,
  Box,
  Button_AddVia,
  Button_BikeToEnabled,
  Button_DeleteVia,
  Button_DownloadCheckmark,
  Button_DownloadOnDevice,
  Button_DownloadOnDevice_v2,
  Button_DownloadOnServer,
  Button_DownloadOnServer_v2,
  Button_DownloadPause,
  Button_DownloadQueue,
  Button_DownloadRefresh,
  Button_DownloadRefresh_v2,
  Button_PublicTransportEnabled,
  Button_WalkToEnabled,
  CameraMapMode,
  Cars,
  CircleEndRoute,
  DebugTools,
  DefineRoadblock,
  DownloadCloud,
  Download_VoiceFemale,
  Download_VoiceMale,
  Download_VoiceiOS,
  Download_VoicesAndroid,
  DriveTo,
  DriveTo_v2,
  EditDeselectAll,
  EditSelectAll,
  Email,
  GetDirections,
  GuaranteedStamp,
  HeadUpDisplay,
  HeightProfile_Highest_Point,
  HeightProfile_Lowest_Point,
  Help,
  Hud_0_Landscape,
  Hud_1_Landscape,
  Hud_2_Landscape,
  Hud_3_Landscape,
  LocationDetails_AddToFavourites,
  LocationDetails_BuyTickets,
  LocationDetails_FerryTerminal,
  LocationDetails_Home,
  LocationDetails_OpenBooking,
  LocationDetails_OpenWebsite,
  LocationDetails_PhoneCall,
  LocationDetails_RemoveFromFavourites,
  LocationDetails_SaveContact,
  LocationDetails_SearchAround,
  LocationDetails_TollStation,
  LocationDetails_Via,
  LocationDetails_WhatsNearby,
  LocationDetails_Work,
  MoreDotsCircle,
  Notification,
  OfflineSearchIndicator,
  OnlineSearchIndicator,
  Overheated,
  PublicTransportTo,
  RecordingOff,
  RecordingOn,
  RemoveWaypoint,
  RouteDescription,
  RouteDescription_Navigation,
  RouteOverview,
  RouteShape2,
  SaveFile,
  Search,
  SearchAlongRoute,
  SearchForAddress,
  SearchForAlerts,
  SearchForContacts,
  SearchForCurrentLocation,
  SearchForFavourites,
  SearchForLatitudeLongitude,
  SearchForPOIs,
  SearchInHistory,
  SearchLoop,
  SearchOnMap,
  SetAugmentedOff,
  Settings,
  Settings_Navigation,
  Show,
  Show3DBuildings,
  ShowMapStandard,
  ShowMapTerrain,
  ShowMapTerrainAndSatellite,
  ShowTrafficInformation,
  ShowWeather,
  Sort_DistanceDown,
  Sort_DistanceUp,
  Sort_NameDown,
  Sort_NameUp,
  Sort_TimeDown,
  Sort_TimeUp,
  SteepnessDown,
  SteepnessPlain,
  SteepnessUp,
  StopNavigation,
  Store,
  Tracks,
  Traffic_EndOfSection_Square,
  TruckTo,
  UploadSucceeded,
  VideoLock,
  VideoLogs,
  Voices,
  WalkTo,
  UICount,
  UIBase,
}

extension UIExtension on UI {
  int get id {
    switch (this) {
      case UI.ADAS_Off:
        return 22349;
      case UI.ADAS_On:
        return 22350;
      case UI.AutoZoom:
        return 22355;
      case UI.BatteryCharging:
        return 22250;
      case UI.BatteryLevelIndicator_0:
        return 22251;
      case UI.BatteryLevelIndicator_10:
        return 22252;
      case UI.BatteryLevelIndicator_100:
        return 22253;
      case UI.BatteryLevelIndicator_20:
        return 22254;
      case UI.BatteryLevelIndicator_30:
        return 22255;
      case UI.BatteryLevelIndicator_40:
        return 22256;
      case UI.BatteryLevelIndicator_50:
        return 22257;
      case UI.BatteryLevelIndicator_60:
        return 22258;
      case UI.BatteryLevelIndicator_70:
        return 22259;
      case UI.BatteryLevelIndicator_80:
        return 22260;
      case UI.BatteryLevelIndicator_90:
        return 22261;
      case UI.BikeTo:
        return 22246;
      case UI.Box:
        return 22378;
      case UI.Button_AddVia:
        return 22263;
      case UI.Button_BikeToEnabled:
        return 22236;
      case UI.Button_DeleteVia:
        return 22264;
      case UI.Button_DownloadCheckmark:
        return 22014;
      case UI.Button_DownloadOnDevice:
        return 22015;
      case UI.Button_DownloadOnDevice_v2:
        return 22310;
      case UI.Button_DownloadOnServer:
        return 22016;
      case UI.Button_DownloadOnServer_v2:
        return 22311;
      case UI.Button_DownloadPause:
        return 22017;
      case UI.Button_DownloadQueue:
        return 22107;
      case UI.Button_DownloadRefresh:
        return 22018;
      case UI.Button_DownloadRefresh_v2:
        return 22312;
      case UI.Button_PublicTransportEnabled:
        return 22269;
      case UI.Button_WalkToEnabled:
        return 22122;
      case UI.CameraMapMode:
        return 22366;
      case UI.Cars:
        return 22138;
      case UI.CircleEndRoute:
        return 22358;
      case UI.DebugTools:
        return 22356;
      case UI.DefineRoadblock:
        return 22034;
      case UI.DownloadCloud:
        return 22309;
      case UI.Download_VoiceFemale:
        return 22108;
      case UI.Download_VoiceMale:
        return 22109;
      case UI.Download_VoiceiOS:
        return 22160;
      case UI.Download_VoicesAndroid:
        return 22036;
      case UI.DriveTo:
        return 22039;
      case UI.DriveTo_v2:
        return 22322;
      case UI.EditDeselectAll:
        return 22374;
      case UI.EditSelectAll:
        return 22375;
      case UI.Email:
        return 22193;
      case UI.GetDirections:
        return 22041;
      case UI.GuaranteedStamp:
        return 22337;
      case UI.HeadUpDisplay:
        return 22385;
      case UI.HeightProfile_Highest_Point:
        return 22299;
      case UI.HeightProfile_Lowest_Point:
        return 22300;
      case UI.Help:
        return 22042;
      case UI.Hud_0_Landscape:
        return 22304;
      case UI.Hud_1_Landscape:
        return 22305;
      case UI.Hud_2_Landscape:
        return 22306;
      case UI.Hud_3_Landscape:
        return 22307;
      case UI.LocationDetails_AddToFavourites:
        return 22045;
      case UI.LocationDetails_BuyTickets:
        return 22282;
      case UI.LocationDetails_FerryTerminal:
        return 22169;
      case UI.LocationDetails_Home:
        return 22177;
      case UI.LocationDetails_OpenBooking:
        return 22308;
      case UI.LocationDetails_OpenWebsite:
        return 22046;
      case UI.LocationDetails_PhoneCall:
        return 22047;
      case UI.LocationDetails_RemoveFromFavourites:
        return 22048;
      case UI.LocationDetails_SaveContact:
        return 22049;
      case UI.LocationDetails_SearchAround:
        return 22050;
      case UI.LocationDetails_TollStation:
        return 22172;
      case UI.LocationDetails_Via:
        return 22265;
      case UI.LocationDetails_WhatsNearby:
        return 22053;
      case UI.LocationDetails_Work:
        return 22181;
      case UI.MoreDotsCircle:
        return 22345;
      case UI.Notification:
        return 22168;
      case UI.OfflineSearchIndicator:
        return 22283;
      case UI.OnlineSearchIndicator:
        return 22284;
      case UI.Overheated:
        return 22363;
      case UI.PublicTransportTo:
        return 22274;
      case UI.RecordingOff:
        return 22351;
      case UI.RecordingOn:
        return 22352;
      case UI.RemoveWaypoint:
        return 22380;
      case UI.RouteDescription:
        return 22057;
      case UI.RouteDescription_Navigation:
        return 22381;
      case UI.RouteOverview:
        return 22058;
      case UI.RouteShape2:
        return 22379;
      case UI.SaveFile:
        return 22354;
      case UI.Search:
        return 22059;
      case UI.SearchAlongRoute:
        return 22060;
      case UI.SearchForAddress:
        return 22061;
      case UI.SearchForAlerts:
        return 22190;
      case UI.SearchForContacts:
        return 22062;
      case UI.SearchForCurrentLocation:
        return 22123;
      case UI.SearchForFavourites:
        return 22063;
      case UI.SearchForLatitudeLongitude:
        return 22064;
      case UI.SearchForPOIs:
        return 22065;
      case UI.SearchInHistory:
        return 22066;
      case UI.SearchLoop:
        return 22357;
      case UI.SearchOnMap:
        return 22267;
      case UI.SetAugmentedOff:
        return 22067;
      case UI.Settings:
        return 22074;
      case UI.Settings_Navigation:
        return 22382;
      case UI.Show:
        return 22075;
      case UI.Show3DBuildings:
        return 22076;
      case UI.ShowMapStandard:
        return 22079;
      case UI.ShowMapTerrain:
        return 22275;
      case UI.ShowMapTerrainAndSatellite:
        return 22276;
      case UI.ShowTrafficInformation:
        return 22082;
      case UI.ShowWeather:
        return 22084;
      case UI.Sort_DistanceDown:
        return 22368;
      case UI.Sort_DistanceUp:
        return 22369;
      case UI.Sort_NameDown:
        return 22370;
      case UI.Sort_NameUp:
        return 22371;
      case UI.Sort_TimeDown:
        return 22372;
      case UI.Sort_TimeUp:
        return 22373;
      case UI.SteepnessDown:
        return 22338;
      case UI.SteepnessPlain:
        return 22339;
      case UI.SteepnessUp:
        return 22340;
      case UI.StopNavigation:
        return 22090;
      case UI.Store:
        return 22091;
      case UI.Tracks:
        return 22343;
      case UI.Traffic_EndOfSection_Square:
        return 22148;
      case UI.TruckTo:
        return 22390;
      case UI.UploadSucceeded:
        return 22376;
      case UI.VideoLock:
        return 22391;
      case UI.VideoLogs:
        return 22344;
      case UI.Voices:
        return 22139;
      case UI.WalkTo:
        return 22105;
      case UI.UICount:
        return 125;
      case UI.UIBase:
        return 22000;
      default:
        return -1;
    }
  }

  static UI fromId(int id) {
    switch (id) {
      case 22349:
        return UI.ADAS_Off;
      case 22350:
        return UI.ADAS_On;
      case 22355:
        return UI.AutoZoom;
      case 22250:
        return UI.BatteryCharging;
      case 22251:
        return UI.BatteryLevelIndicator_0;
      case 22252:
        return UI.BatteryLevelIndicator_10;
      case 22253:
        return UI.BatteryLevelIndicator_100;
      case 22254:
        return UI.BatteryLevelIndicator_20;
      case 22255:
        return UI.BatteryLevelIndicator_30;
      case 22256:
        return UI.BatteryLevelIndicator_40;
      case 22257:
        return UI.BatteryLevelIndicator_50;
      case 22258:
        return UI.BatteryLevelIndicator_60;
      case 22259:
        return UI.BatteryLevelIndicator_70;
      case 22260:
        return UI.BatteryLevelIndicator_80;
      case 22261:
        return UI.BatteryLevelIndicator_90;
      case 22246:
        return UI.BikeTo;
      case 22378:
        return UI.Box;
      case 22263:
        return UI.Button_AddVia;
      case 22236:
        return UI.Button_BikeToEnabled;
      case 22264:
        return UI.Button_DeleteVia;
      case 22014:
        return UI.Button_DownloadCheckmark;
      case 22015:
        return UI.Button_DownloadOnDevice;
      case 22310:
        return UI.Button_DownloadOnDevice_v2;
      case 22016:
        return UI.Button_DownloadOnServer;
      case 22311:
        return UI.Button_DownloadOnServer_v2;
      case 22017:
        return UI.Button_DownloadPause;
      case 22107:
        return UI.Button_DownloadQueue;
      case 22018:
        return UI.Button_DownloadRefresh;
      case 22312:
        return UI.Button_DownloadRefresh_v2;
      case 22269:
        return UI.Button_PublicTransportEnabled;
      case 22122:
        return UI.Button_WalkToEnabled;
      case 22366:
        return UI.CameraMapMode;
      case 22138:
        return UI.Cars;
      case 22358:
        return UI.CircleEndRoute;
      case 22356:
        return UI.DebugTools;
      case 22034:
        return UI.DefineRoadblock;
      case 22309:
        return UI.DownloadCloud;
      case 22108:
        return UI.Download_VoiceFemale;
      case 22109:
        return UI.Download_VoiceMale;
      case 22160:
        return UI.Download_VoiceiOS;
      case 22036:
        return UI.Download_VoicesAndroid;
      case 22039:
        return UI.DriveTo;
      case 22322:
        return UI.DriveTo_v2;
      case 22374:
        return UI.EditDeselectAll;
      case 22375:
        return UI.EditSelectAll;
      case 22193:
        return UI.Email;
      case 22041:
        return UI.GetDirections;
      case 22337:
        return UI.GuaranteedStamp;
      case 22385:
        return UI.HeadUpDisplay;
      case 22299:
        return UI.HeightProfile_Highest_Point;
      case 22300:
        return UI.HeightProfile_Lowest_Point;
      case 22042:
        return UI.Help;
      case 22304:
        return UI.Hud_0_Landscape;
      case 22305:
        return UI.Hud_1_Landscape;
      case 22306:
        return UI.Hud_2_Landscape;
      case 22307:
        return UI.Hud_3_Landscape;
      case 22045:
        return UI.LocationDetails_AddToFavourites;
      case 22282:
        return UI.LocationDetails_BuyTickets;
      case 22169:
        return UI.LocationDetails_FerryTerminal;
      case 22177:
        return UI.LocationDetails_Home;
      case 22308:
        return UI.LocationDetails_OpenBooking;
      case 22046:
        return UI.LocationDetails_OpenWebsite;
      case 22047:
        return UI.LocationDetails_PhoneCall;
      case 22048:
        return UI.LocationDetails_RemoveFromFavourites;
      case 22049:
        return UI.LocationDetails_SaveContact;
      case 22050:
        return UI.LocationDetails_SearchAround;
      case 22172:
        return UI.LocationDetails_TollStation;
      case 22265:
        return UI.LocationDetails_Via;
      case 22053:
        return UI.LocationDetails_WhatsNearby;
      case 22181:
        return UI.LocationDetails_Work;
      case 22345:
        return UI.MoreDotsCircle;
      case 22168:
        return UI.Notification;
      case 22283:
        return UI.OfflineSearchIndicator;
      case 22284:
        return UI.OnlineSearchIndicator;
      case 22363:
        return UI.Overheated;
      case 22274:
        return UI.PublicTransportTo;
      case 22351:
        return UI.RecordingOff;
      case 22352:
        return UI.RecordingOn;
      case 22380:
        return UI.RemoveWaypoint;
      case 22057:
        return UI.RouteDescription;
      case 22381:
        return UI.RouteDescription_Navigation;
      case 22058:
        return UI.RouteOverview;
      case 22379:
        return UI.RouteShape2;
      case 22354:
        return UI.SaveFile;
      case 22059:
        return UI.Search;
      case 22060:
        return UI.SearchAlongRoute;
      case 22061:
        return UI.SearchForAddress;
      case 22190:
        return UI.SearchForAlerts;
      case 22062:
        return UI.SearchForContacts;
      case 22123:
        return UI.SearchForCurrentLocation;
      case 22063:
        return UI.SearchForFavourites;
      case 22064:
        return UI.SearchForLatitudeLongitude;
      case 22065:
        return UI.SearchForPOIs;
      case 22066:
        return UI.SearchInHistory;
      case 22357:
        return UI.SearchLoop;
      case 22267:
        return UI.SearchOnMap;
      case 22067:
        return UI.SetAugmentedOff;
      case 22074:
        return UI.Settings;
      case 22382:
        return UI.Settings_Navigation;
      case 22075:
        return UI.Show;
      case 22076:
        return UI.Show3DBuildings;
      case 22079:
        return UI.ShowMapStandard;
      case 22275:
        return UI.ShowMapTerrain;
      case 22276:
        return UI.ShowMapTerrainAndSatellite;
      case 22082:
        return UI.ShowTrafficInformation;
      case 22084:
        return UI.ShowWeather;
      case 22368:
        return UI.Sort_DistanceDown;
      case 22369:
        return UI.Sort_DistanceUp;
      case 22370:
        return UI.Sort_NameDown;
      case 22371:
        return UI.Sort_NameUp;
      case 22372:
        return UI.Sort_TimeDown;
      case 22373:
        return UI.Sort_TimeUp;
      case 22338:
        return UI.SteepnessDown;
      case 22339:
        return UI.SteepnessPlain;
      case 22340:
        return UI.SteepnessUp;
      case 22090:
        return UI.StopNavigation;
      case 22091:
        return UI.Store;
      case 22343:
        return UI.Tracks;
      case 22148:
        return UI.Traffic_EndOfSection_Square;
      case 22390:
        return UI.TruckTo;
      case 22376:
        return UI.UploadSucceeded;
      case 22391:
        return UI.VideoLock;
      case 22344:
        return UI.VideoLogs;
      case 22139:
        return UI.Voices;
      case 22105:
        return UI.WalkTo;
      case 125:
        return UI.UICount;
      case 22000:
        return UI.UIBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum Engine_Misc {
  AlertActive,
  AlertInactive,
  CompassEnable_SensorOFF,
  CompassEnable_SensorOFF_night,
  CompassEnable_SensorON,
  CompassEnable_SensorON_night,
  Folder,
  LocationDetails_FavouritePushPin,
  LocationDetails_PlacePushpin,
  LocationDetails_PlaceStreet,
  LocationDetails_PlaceStreetSign,
  LocationDetails_SendDetails,
  MapScale,
  MyLocation,
  Poi_Home,
  Poi_ToLeft,
  Poi_ToRight,
  Poi_Work,
  Position_GPSNavigationAvailable,
  Position_GPSNoNavigationAvailable,
  Position_GPSSlice,
  RoadShield_ExitName,
  RoadShield_ExitNumber,
  Settlement_Island,
  Sorting,
  WaypointFlag_PointFinish,
  WaypointFlag_PointFinish_SearchOnMap,
  WaypointFlag_PointIntermediary,
  WaypointFlag_PointIntermediary_SearchOnMap,
  WaypointFlag_PointStart,
  WaypointFlag_PointStart_SearchOnMap,
  Engine_MiscCount,
  Engine_MiscBase,
}

extension Engine_MiscExtension on Engine_Misc {
  int get id {
    switch (this) {
      case Engine_Misc.AlertActive:
        return 6060;
      case Engine_Misc.AlertInactive:
        return 6061;
      case Engine_Misc.CompassEnable_SensorOFF:
        return 6001;
      case Engine_Misc.CompassEnable_SensorOFF_night:
        return 6071;
      case Engine_Misc.CompassEnable_SensorON:
        return 6003;
      case Engine_Misc.CompassEnable_SensorON_night:
        return 6072;
      case Engine_Misc.Folder:
        return 6096;
      case Engine_Misc.LocationDetails_FavouritePushPin:
        return 6005;
      case Engine_Misc.LocationDetails_PlacePushpin:
        return 6008;
      case Engine_Misc.LocationDetails_PlaceStreet:
        return 6102;
      case Engine_Misc.LocationDetails_PlaceStreetSign:
        return 6103;
      case Engine_Misc.LocationDetails_SendDetails:
        return 6108;
      case Engine_Misc.MapScale:
        return 6010;
      case Engine_Misc.MyLocation:
        return 6078;
      case Engine_Misc.Poi_Home:
        return 6067;
      case Engine_Misc.Poi_ToLeft:
        return 6014;
      case Engine_Misc.Poi_ToRight:
        return 6015;
      case Engine_Misc.Poi_Work:
        return 6068;
      case Engine_Misc.Position_GPSNavigationAvailable:
        return 6019;
      case Engine_Misc.Position_GPSNoNavigationAvailable:
        return 6021;
      case Engine_Misc.Position_GPSSlice:
        return 6023;
      case Engine_Misc.RoadShield_ExitName:
        return 6069;
      case Engine_Misc.RoadShield_ExitNumber:
        return 6070;
      case Engine_Misc.Settlement_Island:
        return 6029;
      case Engine_Misc.Sorting:
        return 6098;
      case Engine_Misc.WaypointFlag_PointFinish:
        return 6034;
      case Engine_Misc.WaypointFlag_PointFinish_SearchOnMap:
        return 6073;
      case Engine_Misc.WaypointFlag_PointIntermediary:
        return 6035;
      case Engine_Misc.WaypointFlag_PointIntermediary_SearchOnMap:
        return 6074;
      case Engine_Misc.WaypointFlag_PointStart:
        return 6036;
      case Engine_Misc.WaypointFlag_PointStart_SearchOnMap:
        return 6075;
      case Engine_Misc.Engine_MiscCount:
        return 31;
      case Engine_Misc.Engine_MiscBase:
        return 6000;
      default:
        return -1;
    }
  }

  static Engine_Misc fromId(int id) {
    switch (id) {
      case 6060:
        return Engine_Misc.AlertActive;
      case 6061:
        return Engine_Misc.AlertInactive;
      case 6001:
        return Engine_Misc.CompassEnable_SensorOFF;
      case 6071:
        return Engine_Misc.CompassEnable_SensorOFF_night;
      case 6003:
        return Engine_Misc.CompassEnable_SensorON;
      case 6072:
        return Engine_Misc.CompassEnable_SensorON_night;
      case 6096:
        return Engine_Misc.Folder;
      case 6005:
        return Engine_Misc.LocationDetails_FavouritePushPin;
      case 6008:
        return Engine_Misc.LocationDetails_PlacePushpin;
      case 6102:
        return Engine_Misc.LocationDetails_PlaceStreet;
      case 6103:
        return Engine_Misc.LocationDetails_PlaceStreetSign;
      case 6108:
        return Engine_Misc.LocationDetails_SendDetails;
      case 6010:
        return Engine_Misc.MapScale;
      case 6078:
        return Engine_Misc.MyLocation;
      case 6067:
        return Engine_Misc.Poi_Home;
      case 6014:
        return Engine_Misc.Poi_ToLeft;
      case 6015:
        return Engine_Misc.Poi_ToRight;
      case 6068:
        return Engine_Misc.Poi_Work;
      case 6019:
        return Engine_Misc.Position_GPSNavigationAvailable;
      case 6021:
        return Engine_Misc.Position_GPSNoNavigationAvailable;
      case 6023:
        return Engine_Misc.Position_GPSSlice;
      case 6069:
        return Engine_Misc.RoadShield_ExitName;
      case 6070:
        return Engine_Misc.RoadShield_ExitNumber;
      case 6029:
        return Engine_Misc.Settlement_Island;
      case 6098:
        return Engine_Misc.Sorting;
      case 6034:
        return Engine_Misc.WaypointFlag_PointFinish;
      case 6073:
        return Engine_Misc.WaypointFlag_PointFinish_SearchOnMap;
      case 6035:
        return Engine_Misc.WaypointFlag_PointIntermediary;
      case 6074:
        return Engine_Misc.WaypointFlag_PointIntermediary_SearchOnMap;
      case 6036:
        return Engine_Misc.WaypointFlag_PointStart;
      case 6075:
        return Engine_Misc.WaypointFlag_PointStart_SearchOnMap;
      case 31:
        return Engine_Misc.Engine_MiscCount;
      case 6000:
        return Engine_Misc.Engine_MiscBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum RoutePreviewBubble {
  Icon_Ferry,
  Icon_Toll,
  RoutePreviewBubble_BottomLeftStraight,
  RoutePreviewBubble_BottomRightStraight,
  RoutePreviewBubble_Left,
  RoutePreviewBubble_Midddle,
  RoutePreviewBubble_Right,
  RoutePreviewBubble_TopLeftStraight,
  RoutePreviewBubble_TopRightStraight,
  RoutePreviewBubbleCount,
  RoutePreviewBubbleBase,
}

extension RoutePreviewBubbleExtension on RoutePreviewBubble {
  int get id {
    switch (this) {
      case RoutePreviewBubble.Icon_Ferry:
        return 44008;
      case RoutePreviewBubble.Icon_Toll:
        return 44000;
      case RoutePreviewBubble.RoutePreviewBubble_BottomLeftStraight:
        return 44001;
      case RoutePreviewBubble.RoutePreviewBubble_BottomRightStraight:
        return 44002;
      case RoutePreviewBubble.RoutePreviewBubble_Left:
        return 44003;
      case RoutePreviewBubble.RoutePreviewBubble_Midddle:
        return 44004;
      case RoutePreviewBubble.RoutePreviewBubble_Right:
        return 44005;
      case RoutePreviewBubble.RoutePreviewBubble_TopLeftStraight:
        return 44006;
      case RoutePreviewBubble.RoutePreviewBubble_TopRightStraight:
        return 44007;
      case RoutePreviewBubble.RoutePreviewBubbleCount:
        return 9;
      case RoutePreviewBubble.RoutePreviewBubbleBase:
        return 44000;
      default:
        return -1;
    }
  }

  static RoutePreviewBubble fromId(int id) {
    switch (id) {
      case 44008:
        return RoutePreviewBubble.Icon_Ferry;
      case 44000:
        return RoutePreviewBubble.Icon_Toll;
      case 44001:
        return RoutePreviewBubble.RoutePreviewBubble_BottomLeftStraight;
      case 44002:
        return RoutePreviewBubble.RoutePreviewBubble_BottomRightStraight;
      case 44003:
        return RoutePreviewBubble.RoutePreviewBubble_Left;
      case 44004:
        return RoutePreviewBubble.RoutePreviewBubble_Midddle;
      case 44005:
        return RoutePreviewBubble.RoutePreviewBubble_Right;
      case 44006:
        return RoutePreviewBubble.RoutePreviewBubble_TopLeftStraight;
      case 44007:
        return RoutePreviewBubble.RoutePreviewBubble_TopRightStraight;
      case 9:
        return RoutePreviewBubble.RoutePreviewBubbleCount;
      case 44000:
        return RoutePreviewBubble.RoutePreviewBubbleBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum SocialReports {
  SR_Reports,
  Social_Thumbs_Down,
  Social_Thumbs_Up,
  SocialReportsCount,
  SocialReportsBase,
}

extension SocialReportsExtension on SocialReports {
  int get id {
    switch (this) {
      case SocialReports.SR_Reports:
        return 50003;
      case SocialReports.Social_Thumbs_Down:
        return 50010;
      case SocialReports.Social_Thumbs_Up:
        return 50011;
      case SocialReports.SocialReportsCount:
        return 3;
      case SocialReports.SocialReportsBase:
        return 50000;
      default:
        return -1;
    }
  }

  static SocialReports fromId(int id) {
    switch (id) {
      case 50003:
        return SocialReports.SR_Reports;
      case 50010:
        return SocialReports.Social_Thumbs_Down;
      case 50011:
        return SocialReports.Social_Thumbs_Up;
      case 3:
        return SocialReports.SocialReportsCount;
      case 50000:
        return SocialReports.SocialReportsBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
