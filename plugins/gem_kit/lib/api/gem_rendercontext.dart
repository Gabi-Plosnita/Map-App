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
import "gem_listener.dart";

enum EDisplayType {
  DT_Common,
  DT_LcdH,
  DT_LcdV,
}

extension EDisplayTypeExtension on EDisplayType {
  int get id {
    switch (this) {
      case EDisplayType.DT_Common:
        return 0;
      case EDisplayType.DT_LcdH:
        return 1;
      case EDisplayType.DT_LcdV:
        return 2;
      default:
        return -1;
    }
  }

  static EDisplayType fromId(int id) {
    switch (id) {
      case 0:
        return EDisplayType.DT_Common;
      case 1:
        return EDisplayType.DT_LcdH;
      case 2:
        return EDisplayType.DT_LcdV;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EOutputBufferType {
  RenderBuffer,
  FrameBuffer,
}

extension EOutputBufferTypeExtension on EOutputBufferType {
  int get id {
    switch (this) {
      case EOutputBufferType.RenderBuffer:
        return 0;
      case EOutputBufferType.FrameBuffer:
        return 1;
      default:
        return -1;
    }
  }

  static EOutputBufferType fromId(int id) {
    switch (id) {
      case 0:
        return EOutputBufferType.RenderBuffer;
      case 1:
        return EOutputBufferType.FrameBuffer;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ECapability {
  MSAA_PixelFormat,
  MSAA_FBO,
}

extension ECapabilityExtension on ECapability {
  int get id {
    switch (this) {
      case ECapability.MSAA_PixelFormat:
        return 0;
      case ECapability.MSAA_FBO:
        return 1;
      default:
        return -1;
    }
  }

  static ECapability fromId(int id) {
    switch (id) {
      case 0:
        return ECapability.MSAA_PixelFormat;
      case 1:
        return ECapability.MSAA_FBO;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAction {
  FBODownSample,
  FBOMultiSample,
}

extension EActionExtension on EAction {
  int get id {
    switch (this) {
      case EAction.FBODownSample:
        return 0;
      case EAction.FBOMultiSample:
        return 1;
      default:
        return -1;
    }
  }

  static EAction fromId(int id) {
    switch (id) {
      case 0:
        return EAction.FBODownSample;
      case 1:
        return EAction.FBOMultiSample;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EImagePixelFormat {
  UNKNOWN,
  RGB_888,
  BGR_888,
  ABGR_8888,
  ALPHA_8,
  RGB_565,
  ARGB_8888,
  YUV_420_888,
  YV12,
  NV21,
  NV12,
  kCVPixelFormatType_420YpCbCr8BiPlanarFullRange,
}

extension EImagePixelFormatExtension on EImagePixelFormat {
  int get id {
    switch (this) {
      case EImagePixelFormat.UNKNOWN:
        return 0;
      case EImagePixelFormat.RGB_888:
        return 1;
      case EImagePixelFormat.BGR_888:
        return 2;
      case EImagePixelFormat.ABGR_8888:
        return 3;
      case EImagePixelFormat.ALPHA_8:
        return 4;
      case EImagePixelFormat.RGB_565:
        return 5;
      case EImagePixelFormat.ARGB_8888:
        return 6;
      case EImagePixelFormat.YUV_420_888:
        return 7;
      case EImagePixelFormat.YV12:
        return 8;
      case EImagePixelFormat.NV21:
        return 9;
      case EImagePixelFormat.NV12:
        return 10;
      case EImagePixelFormat.kCVPixelFormatType_420YpCbCr8BiPlanarFullRange:
        return 11;
      default:
        return -1;
    }
  }

  static EImagePixelFormat fromId(int id) {
    switch (id) {
      case 0:
        return EImagePixelFormat.UNKNOWN;
      case 1:
        return EImagePixelFormat.RGB_888;
      case 2:
        return EImagePixelFormat.BGR_888;
      case 3:
        return EImagePixelFormat.ABGR_8888;
      case 4:
        return EImagePixelFormat.ALPHA_8;
      case 5:
        return EImagePixelFormat.RGB_565;
      case 6:
        return EImagePixelFormat.ARGB_8888;
      case 7:
        return EImagePixelFormat.YUV_420_888;
      case 8:
        return EImagePixelFormat.YV12;
      case 9:
        return EImagePixelFormat.NV21;
      case 10:
        return EImagePixelFormat.NV12;
      case 11:
        return EImagePixelFormat.kCVPixelFormatType_420YpCbCr8BiPlanarFullRange;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
