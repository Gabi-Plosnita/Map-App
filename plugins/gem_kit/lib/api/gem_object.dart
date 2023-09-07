// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_types.dart";

enum TPointerManagement {
  EServices,
  EHeap,
}

extension TPointerManagementExtension on TPointerManagement {
  int get id {
    switch (this) {
      case TPointerManagement.EServices:
        return 0;
      case TPointerManagement.EHeap:
        return 1;
      default:
        return -1;
    }
  }

  static TPointerManagement fromId(int id) {
    switch (id) {
      case 0:
        return TPointerManagement.EServices;
      case 1:
        return TPointerManagement.EHeap;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class ApiObjectBase {
  int? oid;
  ApiObjectBase({
    this.oid,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (oid != null) {
      json['oid'] = oid;
    }
    return json;
  }

  factory ApiObjectBase.fromJson(Map<String, dynamic> json) {
    return ApiObjectBase(
      oid: json['oid'],
    );
  }
}
