// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum EDataType {
  Acceleration,
  Activity,
  Attitude,
  Battery,
  Camera,
  Compass,
  MagneticField,
  Orientation,
  Position,
  ImprovedPosition,
  RotationRate,
  Temperature,
  Notification,
  MountInformation,
  Unknown,
  Gyroscope,
}

extension EDataTypeExtension on EDataType {
  int get id {
    switch (this) {
      case EDataType.Acceleration:
        return 0;
      case EDataType.Activity:
        return 1;
      case EDataType.Attitude:
        return 2;
      case EDataType.Battery:
        return 3;
      case EDataType.Camera:
        return 4;
      case EDataType.Compass:
        return 5;
      case EDataType.MagneticField:
        return 6;
      case EDataType.Orientation:
        return 7;
      case EDataType.Position:
        return 8;
      case EDataType.ImprovedPosition:
        return 9;
      case EDataType.RotationRate:
        return 10;
      case EDataType.Temperature:
        return 11;
      case EDataType.Notification:
        return 12;
      case EDataType.MountInformation:
        return 13;
      case EDataType.Unknown:
        return 14;
      case EDataType.Gyroscope:
        return 10;
      default:
        return -1;
    }
  }

  static EDataType fromId(int id) {
    switch (id) {
      case 0:
        return EDataType.Acceleration;
      case 1:
        return EDataType.Activity;
      case 2:
        return EDataType.Attitude;
      case 3:
        return EDataType.Battery;
      case 4:
        return EDataType.Camera;
      case 5:
        return EDataType.Compass;
      case 6:
        return EDataType.MagneticField;
      case 7:
        return EDataType.Orientation;
      case 8:
        return EDataType.Position;
      case 9:
        return EDataType.ImprovedPosition;
      case 10:
        return EDataType.RotationRate;
      case 11:
        return EDataType.Temperature;
      case 12:
        return EDataType.Notification;
      case 13:
        return EDataType.MountInformation;
      case 14:
        return EDataType.Unknown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
