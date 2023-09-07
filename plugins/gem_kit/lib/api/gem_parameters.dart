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

enum EValueType {
  V_Invalid,
  V_Bool,
  V_Int,
  V_Real,
  V_String,
  V_List,
}

extension EValueTypeExtension on EValueType {
  int get id {
    switch (this) {
      case EValueType.V_Invalid:
        return 0;
      case EValueType.V_Bool:
        return 1;
      case EValueType.V_Int:
        return 2;
      case EValueType.V_Real:
        return 3;
      case EValueType.V_String:
        return 4;
      case EValueType.V_List:
        return 5;
      default:
        return -1;
    }
  }

  static EValueType fromId(int id) {
    switch (id) {
      case 0:
        return EValueType.V_Invalid;
      case 1:
        return EValueType.V_Bool;
      case 2:
        return EValueType.V_Int;
      case 3:
        return EValueType.V_Real;
      case 4:
        return EValueType.V_String;
      case 5:
        return EValueType.V_List;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class SearchableParameterList {
  EValueType? type;
  String? key;
  String? name;
  SearchableParameterList({
    this.type,
    this.key,
    this.name,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (type != null) {
      json['type'] = type!.id;
    }
    if (key != null) {
      json['key'] = key;
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }

  factory SearchableParameterList.fromJson(Map<String, dynamic> json) {
    return SearchableParameterList(
      type: json['type'],
      key: json['key'],
      name: json['name'],
    );
  }
}
