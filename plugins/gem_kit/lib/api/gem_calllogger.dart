// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_listener.dart";

enum ELogLevel {
  LogVerbose,
  LogDebug,
  LogPrivate,
  LogInfo,
  LogWarn,
  LogError,
  LogFatal,
  LogSilent,
}

extension ELogLevelExtension on ELogLevel {
  int get id {
    switch (this) {
      case ELogLevel.LogVerbose:
        return 0;
      case ELogLevel.LogDebug:
        return 1;
      case ELogLevel.LogPrivate:
        return 2;
      case ELogLevel.LogInfo:
        return 3;
      case ELogLevel.LogWarn:
        return 4;
      case ELogLevel.LogError:
        return 5;
      case ELogLevel.LogFatal:
        return 6;
      case ELogLevel.LogSilent:
        return 7;
      default:
        return -1;
    }
  }

  static ELogLevel fromId(int id) {
    switch (id) {
      case 0:
        return ELogLevel.LogVerbose;
      case 1:
        return ELogLevel.LogDebug;
      case 2:
        return ELogLevel.LogPrivate;
      case 3:
        return ELogLevel.LogInfo;
      case 4:
        return ELogLevel.LogWarn;
      case 5:
        return ELogLevel.LogError;
      case 6:
        return ELogLevel.LogFatal;
      case 7:
        return ELogLevel.LogSilent;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class DataBuffer extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  DataBuffer()
      : _id = -1,
        _mapId = -1;
  DataBuffer.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}
