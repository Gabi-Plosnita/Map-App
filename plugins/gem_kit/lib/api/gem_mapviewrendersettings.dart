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

class Options<T> {}

class RenderSettings {
  Options? m_options;
  Rgba? m_innerColor;
  Rgba? m_outerColor;
  double? m_innerSz;
  double? m_outerSz;
  double? m_imgSz;
  double? m_textSz;
  Rgba? m_textColor;
  RenderSettings({
    this.m_options,
    this.m_innerColor,
    this.m_outerColor,
    this.m_innerSz,
    this.m_outerSz,
    this.m_imgSz,
    this.m_textSz,
    this.m_textColor,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (m_options != null) {
      json['m_options'] = m_options;
    }
    if (m_innerColor != null) {
      json['m_innerColor'] = m_innerColor;
    }
    if (m_outerColor != null) {
      json['m_outerColor'] = m_outerColor;
    }
    if (m_innerSz != null) {
      json['m_innerSz'] = m_innerSz;
    }
    if (m_outerSz != null) {
      json['m_outerSz'] = m_outerSz;
    }
    if (m_imgSz != null) {
      json['m_imgSz'] = m_imgSz;
    }
    if (m_textSz != null) {
      json['m_textSz'] = m_textSz;
    }
    if (m_textColor != null) {
      json['m_textColor'] = m_textColor;
    }
    return json;
  }

  factory RenderSettings.fromJson(Map<String, dynamic> json) {
    return RenderSettings(
      m_options: json['m_options'],
      m_innerColor: json['m_innerColor'],
      m_outerColor: json['m_outerColor'],
      m_innerSz: json['m_innerSz'],
      m_outerSz: json['m_outerSz'],
      m_imgSz: json['m_imgSz'],
      m_textSz: json['m_textSz'],
      m_textColor: json['m_textColor'],
    );
  }
}
