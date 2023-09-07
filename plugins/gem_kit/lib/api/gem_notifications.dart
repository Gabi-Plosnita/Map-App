// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_time.dart";
import "gem_progresslistener.dart";
import "gem_apilists.dart";
import "gem_transferstatistics.dart";
import "gem_databuffer.dart";

class PushNotificationService {
  String? pushnotificationtoken;
  TransferStatistics? transferstatistics;
  PushNotificationService({
    this.pushnotificationtoken,
    this.transferstatistics,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (pushnotificationtoken != null) {
      json['pushnotificationtoken'] = pushnotificationtoken;
    }
    if (transferstatistics != null) {
      json['transferstatistics'] = transferstatistics;
    }
    return json;
  }

  factory PushNotificationService.fromJson(Map<String, dynamic> json) {
    return PushNotificationService(
      pushnotificationtoken: json['pushnotificationtoken'],
      transferstatistics: json['transferstatistics'],
    );
  }
}
