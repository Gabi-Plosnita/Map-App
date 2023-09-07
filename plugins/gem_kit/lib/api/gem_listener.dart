// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/api/gem_mapviewpreferences.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_types.dart";
import "gem_progresslistener.dart";

class Listener {
  ProgressListener? safepointer;
  ProgressListener? safepointerholder;
  int? uid;
  Listener({
    this.safepointer,
    this.safepointerholder,
    this.uid,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (safepointer != null) {
      json['safepointer'] = safepointer;
    }
    if (safepointerholder != null) {
      json['safepointerholder'] = safepointerholder;
    }
    if (uid != null) {
      json['uid'] = uid;
    }
    return json;
  }

  factory Listener.fromJson(Map<String, dynamic> json) {
    return Listener(
      safepointer: json['safepointer'],
      safepointerholder: json['safepointerholder'],
      uid: json['uid'],
    );
  }
}
