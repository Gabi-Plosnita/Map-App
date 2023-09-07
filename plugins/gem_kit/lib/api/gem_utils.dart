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
import "gem_list.dart";
import "gem_time.dart";
import "gem_rendercontext.dart";

enum ECoordinateFormatType {
  ctDecimal,
  ctDMS,
  ctDDM,
}

extension ECoordinateFormatTypeExtension on ECoordinateFormatType {
  int get id {
    switch (this) {
      case ECoordinateFormatType.ctDecimal:
        return 0;
      case ECoordinateFormatType.ctDMS:
        return 1;
      case ECoordinateFormatType.ctDDM:
        return 2;
      default:
        return -1;
    }
  }

  static ECoordinateFormatType fromId(int id) {
    switch (id) {
      case 0:
        return ECoordinateFormatType.ctDecimal;
      case 1:
        return ECoordinateFormatType.ctDMS;
      case 2:
        return ECoordinateFormatType.ctDDM;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Chronometer {
  int? intervalcount;
  double? currenttime;
  double? totaltime;
  double? averagetime;
  Chronometer({
    this.intervalcount,
    this.currenttime,
    this.totaltime,
    this.averagetime,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (intervalcount != null) {
      json['intervalcount'] = intervalcount;
    }
    if (currenttime != null) {
      json['currenttime'] = currenttime;
    }
    if (totaltime != null) {
      json['totaltime'] = totaltime;
    }
    if (averagetime != null) {
      json['averagetime'] = averagetime;
    }
    return json;
  }

  factory Chronometer.fromJson(Map<String, dynamic> json) {
    return Chronometer(
      intervalcount: json['intervalcount'],
      currenttime: json['currenttime'],
      totaltime: json['totaltime'],
      averagetime: json['averagetime'],
    );
  }
}

class FileSystemFile {
  String? path;
  Time? stamp;
  int? size;
  FileSystemFile({
    this.path,
    this.stamp,
    this.size,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (path != null) {
      json['path'] = path;
    }
    if (stamp != null) {
      json['stamp'] = stamp;
    }
    if (size != null) {
      json['size'] = size;
    }
    return json;
  }

  factory FileSystemFile.fromJson(Map<String, dynamic> json) {
    return FileSystemFile(
      path: json['path'],
      stamp: json['stamp'],
      size: json['size'],
    );
  }
}
