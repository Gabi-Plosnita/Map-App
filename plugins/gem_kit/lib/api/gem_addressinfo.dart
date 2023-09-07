// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_sdk.dart";
import "gem_apilists.dart";
import "gem_types.dart";
import "dart:convert";

enum EAddressField {
  Extension,
  BuildingFloor,
  BuildingName,
  BuildingRoom,
  BuildingZone,
  StreetName,
  StreetNumber,
  PostalCode,
  Settlement,
  City,
  County,
  State,
  StateCode,
  Country,
  CountryCode,
  District,
  Crossing1,
  Crossing2,
  SegmentName,
  AddrLast,
}

extension EAddressFieldExtension on EAddressField {
  int get id {
    switch (this) {
      case EAddressField.Extension:
        return 0;
      case EAddressField.BuildingFloor:
        return 1;
      case EAddressField.BuildingName:
        return 2;
      case EAddressField.BuildingRoom:
        return 3;
      case EAddressField.BuildingZone:
        return 4;
      case EAddressField.StreetName:
        return 5;
      case EAddressField.StreetNumber:
        return 6;
      case EAddressField.PostalCode:
        return 7;
      case EAddressField.Settlement:
        return 8;
      case EAddressField.City:
        return 9;
      case EAddressField.County:
        return 10;
      case EAddressField.State:
        return 11;
      case EAddressField.StateCode:
        return 12;
      case EAddressField.Country:
        return 13;
      case EAddressField.CountryCode:
        return 14;
      case EAddressField.District:
        return 15;
      case EAddressField.Crossing1:
        return 16;
      case EAddressField.Crossing2:
        return 17;
      case EAddressField.SegmentName:
        return 18;
      case EAddressField.AddrLast:
        return 19;
      default:
        return -1;
    }
  }

  static EAddressField fromId(int id) {
    switch (id) {
      case 0:
        return EAddressField.Extension;
      case 1:
        return EAddressField.BuildingFloor;
      case 2:
        return EAddressField.BuildingName;
      case 3:
        return EAddressField.BuildingRoom;
      case 4:
        return EAddressField.BuildingZone;
      case 5:
        return EAddressField.StreetName;
      case 6:
        return EAddressField.StreetNumber;
      case 7:
        return EAddressField.PostalCode;
      case 8:
        return EAddressField.Settlement;
      case 9:
        return EAddressField.City;
      case 10:
        return EAddressField.County;
      case 11:
        return EAddressField.State;
      case 12:
        return EAddressField.StateCode;
      case 13:
        return EAddressField.Country;
      case 14:
        return EAddressField.CountryCode;
      case 15:
        return EAddressField.District;
      case 16:
        return EAddressField.Crossing1;
      case 17:
        return EAddressField.Crossing2;
      case 18:
        return EAddressField.SegmentName;
      case 19:
        return EAddressField.AddrLast;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class AddressInfo extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  AddressInfo()
      : _id = -1,
        _mapId = -1;
  AddressInfo.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  String getField(EAddressField field) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "AddressInfo",
        'method': "getField",
        'args': field.id
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return throw (e.toString());
    }
  }

  Future<void> setField(String str, EAddressField field) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "AddressInfo",
                'method': "setField",
                'args': {'str': str, 'field': field}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> format({
    dynamic excludeFields,
    dynamic includeFields,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "AddressInfo",
                'method': "format",
                'args': {
                  if (excludeFields != null) 'excludeFields': excludeFields,
                  if (includeFields != null) 'includeFields': includeFields
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
