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

class CameraCharacteristics {
  int? resolutionWidth;
  int? resolutionHeight;
  double? frameRate;
  double? focalLengthHorizontal;
  double? focalLengthVertical;
  double? focalLengthMinimum;
  double? physicalSensorWidth;
  double? physicalSensorHeight;
  double? minExposure;
  double? maxExposure;
  double? minISO;
  double? maxISO;
  CameraCharacteristics({
    this.resolutionWidth,
    this.resolutionHeight,
    this.frameRate,
    this.focalLengthHorizontal,
    this.focalLengthVertical,
    this.focalLengthMinimum,
    this.physicalSensorWidth,
    this.physicalSensorHeight,
    this.minExposure,
    this.maxExposure,
    this.minISO,
    this.maxISO,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (resolutionWidth != null) {
      json['resolutionWidth'] = resolutionWidth;
    }
    if (resolutionHeight != null) {
      json['resolutionHeight'] = resolutionHeight;
    }
    if (frameRate != null) {
      json['frameRate'] = frameRate;
    }
    if (focalLengthHorizontal != null) {
      json['focalLengthHorizontal'] = focalLengthHorizontal;
    }
    if (focalLengthVertical != null) {
      json['focalLengthVertical'] = focalLengthVertical;
    }
    if (focalLengthMinimum != null) {
      json['focalLengthMinimum'] = focalLengthMinimum;
    }
    if (physicalSensorWidth != null) {
      json['physicalSensorWidth'] = physicalSensorWidth;
    }
    if (physicalSensorHeight != null) {
      json['physicalSensorHeight'] = physicalSensorHeight;
    }
    if (minExposure != null) {
      json['minExposure'] = minExposure;
    }
    if (maxExposure != null) {
      json['maxExposure'] = maxExposure;
    }
    if (minISO != null) {
      json['minISO'] = minISO;
    }
    if (maxISO != null) {
      json['maxISO'] = maxISO;
    }
    return json;
  }

  factory CameraCharacteristics.fromJson(Map<String, dynamic> json) {
    return CameraCharacteristics(
      resolutionWidth: json['resolutionWidth'],
      resolutionHeight: json['resolutionHeight'],
      frameRate: json['frameRate'],
      focalLengthHorizontal: json['focalLengthHorizontal'],
      focalLengthVertical: json['focalLengthVertical'],
      focalLengthMinimum: json['focalLengthMinimum'],
      physicalSensorWidth: json['physicalSensorWidth'],
      physicalSensorHeight: json['physicalSensorHeight'],
      minExposure: json['minExposure'],
      maxExposure: json['maxExposure'],
      minISO: json['minISO'],
      maxISO: json['maxISO'],
    );
  }
}
