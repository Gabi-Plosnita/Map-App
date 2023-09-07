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
import "gem_coordinates.dart";

enum ETZStatus {
  TZ_Success,
  TZ_InvalidCoordinate,
  TZ_WrongTimezoneId,
  TZ_WrongTimestamp,
  TZ_TimezoneNotFound,
}

extension ETZStatusExtension on ETZStatus {
  int get id {
    switch (this) {
      case ETZStatus.TZ_Success:
        return 0;
      case ETZStatus.TZ_InvalidCoordinate:
        return 1;
      case ETZStatus.TZ_WrongTimezoneId:
        return 2;
      case ETZStatus.TZ_WrongTimestamp:
        return 3;
      case ETZStatus.TZ_TimezoneNotFound:
        return 4;
      default:
        return -1;
    }
  }

  static ETZStatus fromId(int id) {
    switch (id) {
      case 0:
        return ETZStatus.TZ_Success;
      case 1:
        return ETZStatus.TZ_InvalidCoordinate;
      case 2:
        return ETZStatus.TZ_WrongTimezoneId;
      case 3:
        return ETZStatus.TZ_WrongTimestamp;
      case 4:
        return ETZStatus.TZ_TimezoneNotFound;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class TimezoneResult {
  int? dstoffset;
  int? offset;
  int? utcoffset;
  ETZStatus? status;
  String? timezoneid;
  Time? localtime;
  TimezoneResult({
    this.dstoffset,
    this.offset,
    this.utcoffset,
    this.status,
    this.timezoneid,
    this.localtime,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (dstoffset != null) {
      json['dstoffset'] = dstoffset;
    }
    if (offset != null) {
      json['offset'] = offset;
    }
    if (utcoffset != null) {
      json['utcoffset'] = utcoffset;
    }
    if (status != null) {
      json['status'] = status!.id;
    }
    if (timezoneid != null) {
      json['timezoneid'] = timezoneid;
    }
    if (localtime != null) {
      json['localtime'] = localtime;
    }
    return json;
  }

  factory TimezoneResult.fromJson(Map<String, dynamic> json) {
    return TimezoneResult(
      dstoffset: json['dstoffset'],
      offset: json['offset'],
      utcoffset: json['utcoffset'],
      status: json['status'],
      timezoneid: json['timezoneid'],
      localtime: json['localtime'],
    );
  }
}
