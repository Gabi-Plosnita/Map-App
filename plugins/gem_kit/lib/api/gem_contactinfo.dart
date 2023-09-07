// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import 'dart:convert';
import "gem_sdk.dart";

enum EContactInfoFieldType {
  FT_Phone,
  FT_Email,
  FT_Url,
  FT_Booking_Url,
  FT_Opening_hours,
  FT_Last,
}

extension EContactInfoFieldTypeExtension on EContactInfoFieldType {
  int get id {
    switch (this) {
      case EContactInfoFieldType.FT_Phone:
        return 0;
      case EContactInfoFieldType.FT_Email:
        return 1;
      case EContactInfoFieldType.FT_Url:
        return 2;
      case EContactInfoFieldType.FT_Booking_Url:
        return 3;
      case EContactInfoFieldType.FT_Opening_hours:
        return 4;
      case EContactInfoFieldType.FT_Last:
        return 5;
      default:
        return -1;
    }
  }

  static EContactInfoFieldType fromId(int id) {
    switch (id) {
      case 0:
        return EContactInfoFieldType.FT_Phone;
      case 1:
        return EContactInfoFieldType.FT_Email;
      case 2:
        return EContactInfoFieldType.FT_Url;
      case 3:
        return EContactInfoFieldType.FT_Booking_Url;
      case 4:
        return EContactInfoFieldType.FT_Opening_hours;
      case 5:
        return EContactInfoFieldType.FT_Last;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class ContactInfo extends IGemEventHandler {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  ContactInfo()
      : _id = -1,
        _mapId = -1;
  ContactInfo.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<int> getFieldsCount() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "ContactInfo",
                'method': "getFieldsCount",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<EContactInfoFieldType> getFieldType(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "ContactInfo",
                'method': "getFieldType",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return EContactInfoFieldTypeExtension.fromId(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getFieldName(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "ContactInfo",
                'method': "getFieldName",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<String> getFieldValue(int index) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "ContactInfo",
                'method': "getFieldValue",
                'args': index
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

// Future<bool> iterateFields(TCollector collector,{EContactInfoFieldType? type,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"ContactInfo",
// 'method':"iterateFields",
// 'args':{'collector':collector,if(type != null) 'type':type}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  Future<void> setField(
      int index, EContactInfoFieldType type, String value, String name) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "ContactInfo",
                'method': "setField",
                'args': {
                  'index': index,
                  'type': type,
                  'value': value,
                  'name': name
                }
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> addField(
      EContactInfoFieldType type, String value, String name) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "ContactInfo",
                'method': "addField",
                'args': {'type': type, 'value': value, 'name': name}
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> removeField(int index) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "ContactInfo",
                'method': "removeField",
                'args': index
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
