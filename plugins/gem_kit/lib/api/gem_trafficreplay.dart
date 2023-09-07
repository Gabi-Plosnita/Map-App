// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_progresslistener.dart";
import "gem_apilists.dart";
import "gem_featureids.dart";
import "gem_time.dart";

class TrafficReplay {
  String? failedroadblocksurl;
  int? id;
  String? failedroadblocksurl_;
  TrafficReplay({
    this.failedroadblocksurl,
    this.id,
    this.failedroadblocksurl_,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (failedroadblocksurl != null) {
      json['failedroadblocksurl'] = failedroadblocksurl;
    }
    if (id != null) {
      json['id'] = id;
    }
    if (failedroadblocksurl_ != null) {
      json['failedroadblocksurl_'] = failedroadblocksurl_;
    }
    return json;
  }

  factory TrafficReplay.fromJson(Map<String, dynamic> json) {
    return TrafficReplay(
      failedroadblocksurl: json['failedroadblocksurl'],
      id: json['id'],
      failedroadblocksurl_: json['failedroadblocksurl_'],
    );
  }
}
