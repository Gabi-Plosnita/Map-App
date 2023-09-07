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

class TransferStatistics {
  int? upload;
  int? download;
  int? requests;
  TransferStatistics({
    this.upload,
    this.download,
    this.requests,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (upload != null) {
      json['upload'] = upload;
    }
    if (download != null) {
      json['download'] = download;
    }
    if (requests != null) {
      json['requests'] = requests;
    }
    return json;
  }

  factory TransferStatistics.fromJson(Map<String, dynamic> json) {
    return TransferStatistics(
      upload: json['upload'],
      download: json['download'],
      requests: json['requests'],
    );
  }
}
