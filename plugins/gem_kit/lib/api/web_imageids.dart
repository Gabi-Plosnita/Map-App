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
