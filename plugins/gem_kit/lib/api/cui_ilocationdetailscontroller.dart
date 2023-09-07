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

enum TLocationDetailsButtonType {
  EUnknown,
  EDriveTo,
  ETruckTo,
  EPublicTransportTo,
  EWalkTo,
  EBikeTo,
  EAddWaypoint,
  EDirections,
  EFavourite,
  EPhoneCall,
  EOpenWebPage,
  EOpenBooking,
  EShowWeather,
  EShare,
  EWhatsNearby,
  ESearchAround,
  ECount,
}

extension TLocationDetailsButtonTypeExtension on TLocationDetailsButtonType {
  int get id {
    switch (this) {
      case TLocationDetailsButtonType.EUnknown:
        return 0;
      case TLocationDetailsButtonType.EDriveTo:
        return 1;
      case TLocationDetailsButtonType.ETruckTo:
        return 2;
      case TLocationDetailsButtonType.EPublicTransportTo:
        return 3;
      case TLocationDetailsButtonType.EWalkTo:
        return 4;
      case TLocationDetailsButtonType.EBikeTo:
        return 5;
      case TLocationDetailsButtonType.EAddWaypoint:
        return 6;
      case TLocationDetailsButtonType.EDirections:
        return 7;
      case TLocationDetailsButtonType.EFavourite:
        return 8;
      case TLocationDetailsButtonType.EPhoneCall:
        return 9;
      case TLocationDetailsButtonType.EOpenWebPage:
        return 10;
      case TLocationDetailsButtonType.EOpenBooking:
        return 11;
      case TLocationDetailsButtonType.EShowWeather:
        return 12;
      case TLocationDetailsButtonType.EShare:
        return 13;
      case TLocationDetailsButtonType.EWhatsNearby:
        return 14;
      case TLocationDetailsButtonType.ESearchAround:
        return 15;
      case TLocationDetailsButtonType.ECount:
        return 16;
      default:
        return -1;
    }
  }

  static TLocationDetailsButtonType fromId(int id) {
    switch (id) {
      case 0:
        return TLocationDetailsButtonType.EUnknown;
      case 1:
        return TLocationDetailsButtonType.EDriveTo;
      case 2:
        return TLocationDetailsButtonType.ETruckTo;
      case 3:
        return TLocationDetailsButtonType.EPublicTransportTo;
      case 4:
        return TLocationDetailsButtonType.EWalkTo;
      case 5:
        return TLocationDetailsButtonType.EBikeTo;
      case 6:
        return TLocationDetailsButtonType.EAddWaypoint;
      case 7:
        return TLocationDetailsButtonType.EDirections;
      case 8:
        return TLocationDetailsButtonType.EFavourite;
      case 9:
        return TLocationDetailsButtonType.EPhoneCall;
      case 10:
        return TLocationDetailsButtonType.EOpenWebPage;
      case 11:
        return TLocationDetailsButtonType.EOpenBooking;
      case 12:
        return TLocationDetailsButtonType.EShowWeather;
      case 13:
        return TLocationDetailsButtonType.EShare;
      case 14:
        return TLocationDetailsButtonType.EWhatsNearby;
      case 15:
        return TLocationDetailsButtonType.ESearchAround;
      case 16:
        return TLocationDetailsButtonType.ECount;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TPublicTransportVehicleType {
  EBus,
  EUnderground,
  ERailway,
  ETram,
  EWaterTransport,
  EOther,
}

extension TPublicTransportVehicleTypeExtension on TPublicTransportVehicleType {
  int get id {
    switch (this) {
      case TPublicTransportVehicleType.EBus:
        return 0;
      case TPublicTransportVehicleType.EUnderground:
        return 1;
      case TPublicTransportVehicleType.ERailway:
        return 2;
      case TPublicTransportVehicleType.ETram:
        return 3;
      case TPublicTransportVehicleType.EWaterTransport:
        return 4;
      case TPublicTransportVehicleType.EOther:
        return 5;
      default:
        return -1;
    }
  }

  static TPublicTransportVehicleType fromId(int id) {
    switch (id) {
      case 0:
        return TPublicTransportVehicleType.EBus;
      case 1:
        return TPublicTransportVehicleType.EUnderground;
      case 2:
        return TPublicTransportVehicleType.ERailway;
      case 3:
        return TPublicTransportVehicleType.ETram;
      case 4:
        return TPublicTransportVehicleType.EWaterTransport;
      case 5:
        return TPublicTransportVehicleType.EOther;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TPublicTransportVehicleTimeStatusColor {
  EDefault,
  EBlue,
  EGreen,
  ERed,
}

extension TPublicTransportVehicleTimeStatusColorExtension
    on TPublicTransportVehicleTimeStatusColor {
  int get id {
    switch (this) {
      case TPublicTransportVehicleTimeStatusColor.EDefault:
        return 0;
      case TPublicTransportVehicleTimeStatusColor.EBlue:
        return 1;
      case TPublicTransportVehicleTimeStatusColor.EGreen:
        return 2;
      case TPublicTransportVehicleTimeStatusColor.ERed:
        return 3;
      default:
        return -1;
    }
  }

  static TPublicTransportVehicleTimeStatusColor fromId(int id) {
    switch (id) {
      case 0:
        return TPublicTransportVehicleTimeStatusColor.EDefault;
      case 1:
        return TPublicTransportVehicleTimeStatusColor.EBlue;
      case 2:
        return TPublicTransportVehicleTimeStatusColor.EGreen;
      case 3:
        return TPublicTransportVehicleTimeStatusColor.ERed;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
