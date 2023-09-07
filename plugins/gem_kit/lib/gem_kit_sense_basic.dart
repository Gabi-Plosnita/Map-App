// Copyright (C) 2019-2023, General Magic B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of General Magic
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with General Magic.

import 'dart:convert';

import 'gem_kit_basic.dart';
import 'api/gem_coordinates.dart';

enum gemSenseDataType {
  Acceleration,

  ///< Acceleration
  Activity,

  ///< Activity
  Attitude,

  ///< Attitude
  Battery,

  ///< Battery
  Camera,

  ///< Camera
  Compass,

  ///< Compass
  MagneticField,

  ///< MagneticField
  Orientation,

  ///< Orientation
  Position,

  ///< Position
  ImprovedPosition,

  ///< ImprovedPosition
  RotationRate,

  ///< RotationRate
  Temperature,

  ///< Temperature
  Notification,

  ///< Notification
  MountInformation,

  ///< MountInformation
  Unknown,

  ///< Must always be the last value
}

enum gemPositionFixQuality {
  ///< Invalid
  Invalid,

  ///< Low
  Low,

  ///< High
  High
}

enum gemPositionRoadModifier {
  None,
  Tunnel,
  Bridge,
  Ramp,
  Tollway,
  Roundabout,
  OneWay,
  NoUTurn,
  LeftDriveSide
}

/// position class
class gemPosition {
  Coordinates _coords = Coordinates(latitude: 0.0, longitude: 0.0);
  gemSenseDataType _type = gemSenseDataType.Unknown;
  double _alt = 0;
  double _speed = 0;
  double _course = 0;
  double _accuracyH = 0;
  double _accuracyV = 0;
  gemPositionFixQuality _fixQuality = gemPositionFixQuality.Invalid;
  Set<gemPositionRoadModifier> _roadModifiers = Set();
  double _speedLimit = 0;
  DateTime _stamp = DateTime.fromMicrosecondsSinceEpoch(0);

  gemPosition();

  gemPosition.fromJson(Map<String, dynamic> json)
      : _coords = Coordinates.fromJson(json['coordinates']),
        _alt = json['alt'],
        _speed = json['speed'],
        _course = json['course'],
        _accuracyH = json['accuracyH'],
        _accuracyV = json['accuracyV'] {
    if (json['senseDataType'] == 'position')
      _type = gemSenseDataType.Position;
    else if (json['senseDataType'] == 'improvedPosition')
      _type = gemSenseDataType.ImprovedPosition;

    if (json['fixQuality'] == 'invalid')
      _fixQuality = gemPositionFixQuality.Invalid;
    else if (json['fixQuality'] == 'low')
      _fixQuality = gemPositionFixQuality.Low;
    else if (json['fixQuality'] == 'high')
      _fixQuality = gemPositionFixQuality.High;

    _stamp = DateTime.fromMicrosecondsSinceEpoch(json['timestamp'] * 1000,
        isUtc: true);

    //var addr = json['addr'];
    //if (addr != null) _addr = gemAddress.fromJson(addr);

    var speedLimit = json['speedLimit'];
    if (speedLimit != null) _speedLimit = speedLimit;

    var modifiers = json['roadModifiers'];
    if (modifiers != null) {
      if (modifiers.indexOf("tunnel") != -1) {
        _roadModifiers.add(gemPositionRoadModifier.Tunnel);
      }
      if (modifiers.indexOf("bridge") != -1) {
        _roadModifiers.add(gemPositionRoadModifier.Bridge);
      }
      if (modifiers.indexOf("ramp") != -1) {
        _roadModifiers.add(gemPositionRoadModifier.Ramp);
      }
      if (modifiers.indexOf("tollway") != -1) {
        _roadModifiers.add(gemPositionRoadModifier.Tollway);
      }
      if (modifiers.indexOf("roundabout") != -1) {
        _roadModifiers.add(gemPositionRoadModifier.Roundabout);
      }
      if (modifiers.indexOf("oneWay") != -1) {
        _roadModifiers.add(gemPositionRoadModifier.OneWay);
      }
      if (modifiers.indexOf("noUTurn") != -1) {
        _roadModifiers.add(gemPositionRoadModifier.NoUTurn);
      }
      if (modifiers.indexOf("leftDriveSide") != -1) {
        _roadModifiers.add(gemPositionRoadModifier.LeftDriveSide);
      }
    }
  }

  Coordinates get coordinates => _coords;
  gemSenseDataType get type => _type;
  double get altitude => _alt;
  double get speed => _speed;
  double get course => _course;
  double get accuracyH => _accuracyH;
  double get accuracyV => _accuracyV;
  gemPositionFixQuality get fixQuality => _fixQuality;
  //gemAddress get roadAddress => _addr;
  Set<gemPositionRoadModifier> get roadModifiers => _roadModifiers;
  double get speedLimit => _speedLimit;
  DateTime get timestamp => _stamp;
}
