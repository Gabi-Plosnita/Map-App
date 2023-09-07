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
import "gem_canvas.dart";
import "gem_types.dart";

enum EColorFormat {
  A8,
  R16,
  R32,
  RG16_8_8,
  RG32_16_16,
  RG64_32_32,
  L8,
  RGB16_5_6_5,
  RGB24_8_8_8,
  RGBA16_4_4_4_4,
  RGBA16_5_5_5_1,
  LA16_8_8,
  RGBA32_8_8_8_8,
}

extension EColorFormatExtension on EColorFormat {
  int get id {
    switch (this) {
      case EColorFormat.A8:
        return 4224;
      case EColorFormat.R16:
        return 4352;
      case EColorFormat.R32:
        return 4608;
      case EColorFormat.RG16_8_8:
        return 8448;
      case EColorFormat.RG32_16_16:
        return 8704;
      case EColorFormat.RG64_32_32:
        return 9216;
      case EColorFormat.L8:
        return 12416;
      case EColorFormat.RGB16_5_6_5:
        return 12544;
      case EColorFormat.RGB24_8_8_8:
        return 12672;
      case EColorFormat.RGBA16_4_4_4_4:
        return 16640;
      case EColorFormat.RGBA16_5_5_5_1:
        return 16641;
      case EColorFormat.LA16_8_8:
        return 16642;
      case EColorFormat.RGBA32_8_8_8_8:
        return 16896;
      default:
        return -1;
    }
  }

  static EColorFormat fromId(int id) {
    switch (id) {
      case 4224:
        return EColorFormat.A8;
      case 4352:
        return EColorFormat.R16;
      case 4608:
        return EColorFormat.R32;
      case 8448:
        return EColorFormat.RG16_8_8;
      case 8704:
        return EColorFormat.RG32_16_16;
      case 9216:
        return EColorFormat.RG64_32_32;
      case 12416:
        return EColorFormat.L8;
      case 12544:
        return EColorFormat.RGB16_5_6_5;
      case 12672:
        return EColorFormat.RGB24_8_8_8;
      case 16640:
        return EColorFormat.RGBA16_4_4_4_4;
      case 16641:
        return EColorFormat.RGBA16_5_5_5_1;
      case 16642:
        return EColorFormat.LA16_8_8;
      case 16896:
        return EColorFormat.RGBA32_8_8_8_8;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETextStyle {
  NormalStyle,
  BoldStyle,
  ItalicStyle,
}

extension ETextStyleExtension on ETextStyle {
  int get id {
    switch (this) {
      case ETextStyle.NormalStyle:
        return 0;
      case ETextStyle.BoldStyle:
        return 1;
      case ETextStyle.ItalicStyle:
        return 2;
      default:
        return -1;
    }
  }

  static ETextStyle fromId(int id) {
    switch (id) {
      case 0:
        return ETextStyle.NormalStyle;
      case 1:
        return ETextStyle.BoldStyle;
      case 2:
        return ETextStyle.ItalicStyle;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETextAlignment {
  LeftTop,
  LeftCenter,
  LeftBottom,
  CenterTop,
  Center,
  CenterBottom,
  RightTop,
  RightCenter,
  RightBottom,
}

extension ETextAlignmentExtension on ETextAlignment {
  int get id {
    switch (this) {
      case ETextAlignment.LeftTop:
        return 0;
      case ETextAlignment.LeftCenter:
        return 1;
      case ETextAlignment.LeftBottom:
        return 2;
      case ETextAlignment.CenterTop:
        return 3;
      case ETextAlignment.Center:
        return 4;
      case ETextAlignment.CenterBottom:
        return 5;
      case ETextAlignment.RightTop:
        return 6;
      case ETextAlignment.RightCenter:
        return 7;
      case ETextAlignment.RightBottom:
        return 8;
      default:
        return -1;
    }
  }

  static ETextAlignment fromId(int id) {
    switch (id) {
      case 0:
        return ETextAlignment.LeftTop;
      case 1:
        return ETextAlignment.LeftCenter;
      case 2:
        return ETextAlignment.LeftBottom;
      case 3:
        return ETextAlignment.CenterTop;
      case 4:
        return ETextAlignment.Center;
      case 5:
        return ETextAlignment.CenterBottom;
      case 6:
        return ETextAlignment.RightTop;
      case 7:
        return ETextAlignment.RightCenter;
      case 8:
        return ETextAlignment.RightBottom;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class TextState {
  Rgba? innerColor;
  Rgba? outerColor;
  double? outerWidth;
  double? scale;
  int? fontSize;
  bool? useComplexScript;
  TextState({
    this.innerColor,
    this.outerColor,
    this.outerWidth,
    this.scale,
    this.fontSize,
    this.useComplexScript,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (innerColor != null) {
      json['innerColor'] = innerColor;
    }
    if (outerColor != null) {
      json['outerColor'] = outerColor;
    }
    if (outerWidth != null) {
      json['outerWidth'] = outerWidth;
    }
    if (scale != null) {
      json['scale'] = scale;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (useComplexScript != null) {
      json['useComplexScript'] = useComplexScript;
    }
    return json;
  }

  factory TextState.fromJson(Map<String, dynamic> json) {
    return TextState(
      innerColor: json['innerColor'],
      outerColor: json['outerColor'],
      outerWidth: json['outerWidth'],
      scale: json['scale'],
      fontSize: json['fontSize'],
      useComplexScript: json['useComplexScript'],
    );
  }
}
