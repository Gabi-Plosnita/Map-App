// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_configuration.dart";
import "gem_error.dart";

class TypedApiError {
  dynamic? error;
  TypedApiError({
    this.error,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (error != null) {
      json['error'] = error;
    }
    return json;
  }

  factory TypedApiError.fromJson(Map<String, dynamic> json) {
    return TypedApiError(
      error: json['error'],
    );
  }
}
