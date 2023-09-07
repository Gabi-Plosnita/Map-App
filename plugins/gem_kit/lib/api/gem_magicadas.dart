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

enum EFeature {
  HeadwayWarning,
  ForwardCollisionWarning,
  StopAndGoAssist,
  PedestrianCollisionWarning,
  SolidLaneDepartureWarning,
  DashedLaneDepartureWarning,
  TrafficSignRecognition,
  All,
}

extension EFeatureExtension on EFeature {
  int get id {
    switch (this) {
      case EFeature.HeadwayWarning:
        return 0;
      case EFeature.ForwardCollisionWarning:
        return 1;
      case EFeature.StopAndGoAssist:
        return 2;
      case EFeature.PedestrianCollisionWarning:
        return 3;
      case EFeature.SolidLaneDepartureWarning:
        return 4;
      case EFeature.DashedLaneDepartureWarning:
        return 5;
      case EFeature.TrafficSignRecognition:
        return 6;
      case EFeature.All:
        return 7;
      default:
        return -1;
    }
  }

  static EFeature fromId(int id) {
    switch (id) {
      case 0:
        return EFeature.HeadwayWarning;
      case 1:
        return EFeature.ForwardCollisionWarning;
      case 2:
        return EFeature.StopAndGoAssist;
      case 3:
        return EFeature.PedestrianCollisionWarning;
      case 4:
        return EFeature.SolidLaneDepartureWarning;
      case 5:
        return EFeature.DashedLaneDepartureWarning;
      case 6:
        return EFeature.TrafficSignRecognition;
      case 7:
        return EFeature.All;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAlertTiming {
  Early,
  Normal,
  Late,
}

extension EAlertTimingExtension on EAlertTiming {
  int get id {
    switch (this) {
      case EAlertTiming.Early:
        return 0;
      case EAlertTiming.Normal:
        return 1;
      case EAlertTiming.Late:
        return 2;
      default:
        return -1;
    }
  }

  static EAlertTiming fromId(int id) {
    switch (id) {
      case 0:
        return EAlertTiming.Early;
      case 1:
        return EAlertTiming.Normal;
      case 2:
        return EAlertTiming.Late;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EEvent {
  ScreenTouched,
}

extension EEventExtension on EEvent {
  int get id {
    switch (this) {
      case EEvent.ScreenTouched:
        return 0;
      default:
        return -1;
    }
  }

  static EEvent fromId(int id) {
    switch (id) {
      case 0:
        return EEvent.ScreenTouched;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESystemWarning {
  MissingFrameData,
  MissingPositionData,
  MissingGyroscopeData,
  MissingAccelerometerData,
  ObjectDetectorCouldNotBeInitialized,
  LaneDetectorCouldNotBeInitialized,
  TrafficSignClassifierCouldNotBeInitialized,
  InvalidInput,
  WrongSensorAxisOrDeviceOrientation,
  LowCameraFramerate,
  ADASEnabled,
  ADASDisabled,
  HeadwayWarningDisabled,
  ForwardCollisionWarningDisabled,
  StopAndGoDisabled,
  SolidLaneDepartureWarningDisabled,
  DashedLaneDepartureWarningDisabled,
  TrafficSignRecognitionDisabled,
}

extension ESystemWarningExtension on ESystemWarning {
  int get id {
    switch (this) {
      case ESystemWarning.MissingFrameData:
        return 0;
      case ESystemWarning.MissingPositionData:
        return 1;
      case ESystemWarning.MissingGyroscopeData:
        return 2;
      case ESystemWarning.MissingAccelerometerData:
        return 3;
      case ESystemWarning.ObjectDetectorCouldNotBeInitialized:
        return 4;
      case ESystemWarning.LaneDetectorCouldNotBeInitialized:
        return 5;
      case ESystemWarning.TrafficSignClassifierCouldNotBeInitialized:
        return 6;
      case ESystemWarning.InvalidInput:
        return 7;
      case ESystemWarning.WrongSensorAxisOrDeviceOrientation:
        return 8;
      case ESystemWarning.LowCameraFramerate:
        return 9;
      case ESystemWarning.ADASEnabled:
        return 10;
      case ESystemWarning.ADASDisabled:
        return 11;
      case ESystemWarning.HeadwayWarningDisabled:
        return 12;
      case ESystemWarning.ForwardCollisionWarningDisabled:
        return 13;
      case ESystemWarning.StopAndGoDisabled:
        return 14;
      case ESystemWarning.SolidLaneDepartureWarningDisabled:
        return 15;
      case ESystemWarning.DashedLaneDepartureWarningDisabled:
        return 16;
      case ESystemWarning.TrafficSignRecognitionDisabled:
        return 17;
      default:
        return -1;
    }
  }

  static ESystemWarning fromId(int id) {
    switch (id) {
      case 0:
        return ESystemWarning.MissingFrameData;
      case 1:
        return ESystemWarning.MissingPositionData;
      case 2:
        return ESystemWarning.MissingGyroscopeData;
      case 3:
        return ESystemWarning.MissingAccelerometerData;
      case 4:
        return ESystemWarning.ObjectDetectorCouldNotBeInitialized;
      case 5:
        return ESystemWarning.LaneDetectorCouldNotBeInitialized;
      case 6:
        return ESystemWarning.TrafficSignClassifierCouldNotBeInitialized;
      case 7:
        return ESystemWarning.InvalidInput;
      case 8:
        return ESystemWarning.WrongSensorAxisOrDeviceOrientation;
      case 9:
        return ESystemWarning.LowCameraFramerate;
      case 10:
        return ESystemWarning.ADASEnabled;
      case 11:
        return ESystemWarning.ADASDisabled;
      case 12:
        return ESystemWarning.HeadwayWarningDisabled;
      case 13:
        return ESystemWarning.ForwardCollisionWarningDisabled;
      case 14:
        return ESystemWarning.StopAndGoDisabled;
      case 15:
        return ESystemWarning.SolidLaneDepartureWarningDisabled;
      case 16:
        return ESystemWarning.DashedLaneDepartureWarningDisabled;
      case 17:
        return ESystemWarning.TrafficSignRecognitionDisabled;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ECalibrationEvent {
  SystemCalibrationStarted,
  SystemCalibrationWaitingForSensorInput,
  SystemCalibrationWaitingForSpeed,
  ExcessiveMovement,
  SystemCalibrationWaitingForStraightForwardMotion,
  SystemCalibrating,
  SystemCalibrated,
}

extension ECalibrationEventExtension on ECalibrationEvent {
  int get id {
    switch (this) {
      case ECalibrationEvent.SystemCalibrationStarted:
        return 0;
      case ECalibrationEvent.SystemCalibrationWaitingForSensorInput:
        return 1;
      case ECalibrationEvent.SystemCalibrationWaitingForSpeed:
        return 2;
      case ECalibrationEvent.ExcessiveMovement:
        return 3;
      case ECalibrationEvent.SystemCalibrationWaitingForStraightForwardMotion:
        return 4;
      case ECalibrationEvent.SystemCalibrating:
        return 5;
      case ECalibrationEvent.SystemCalibrated:
        return 6;
      default:
        return -1;
    }
  }

  static ECalibrationEvent fromId(int id) {
    switch (id) {
      case 0:
        return ECalibrationEvent.SystemCalibrationStarted;
      case 1:
        return ECalibrationEvent.SystemCalibrationWaitingForSensorInput;
      case 2:
        return ECalibrationEvent.SystemCalibrationWaitingForSpeed;
      case 3:
        return ECalibrationEvent.ExcessiveMovement;
      case 4:
        return ECalibrationEvent
            .SystemCalibrationWaitingForStraightForwardMotion;
      case 5:
        return ECalibrationEvent.SystemCalibrating;
      case 6:
        return ECalibrationEvent.SystemCalibrated;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EDiagnosticsEvent {
  HeavyRain,
  LowVisibility,
  LowImageQuality,
  Clear,
}

extension EDiagnosticsEventExtension on EDiagnosticsEvent {
  int get id {
    switch (this) {
      case EDiagnosticsEvent.HeavyRain:
        return 0;
      case EDiagnosticsEvent.LowVisibility:
        return 1;
      case EDiagnosticsEvent.LowImageQuality:
        return 2;
      case EDiagnosticsEvent.Clear:
        return 3;
      default:
        return -1;
    }
  }

  static EDiagnosticsEvent fromId(int id) {
    switch (id) {
      case 0:
        return EDiagnosticsEvent.HeavyRain;
      case 1:
        return EDiagnosticsEvent.LowVisibility;
      case 2:
        return EDiagnosticsEvent.LowImageQuality;
      case 3:
        return EDiagnosticsEvent.Clear;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAlertSeverity {
  Information,
  Caution,
  Danger,
  Collision,
}

extension EAlertSeverityExtension on EAlertSeverity {
  int get id {
    switch (this) {
      case EAlertSeverity.Information:
        return 0;
      case EAlertSeverity.Caution:
        return 1;
      case EAlertSeverity.Danger:
        return 2;
      case EAlertSeverity.Collision:
        return 3;
      default:
        return -1;
    }
  }

  static EAlertSeverity fromId(int id) {
    switch (id) {
      case 0:
        return EAlertSeverity.Information;
      case 1:
        return EAlertSeverity.Caution;
      case 2:
        return EAlertSeverity.Danger;
      case 3:
        return EAlertSeverity.Collision;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ELaneAlertType {
  DashedLeftLaneDeparture,
  DashedRightLaneDeparture,
  SolidLeftLaneDeparture,
  SolidRightLaneDeparture,
}

extension ELaneAlertTypeExtension on ELaneAlertType {
  int get id {
    switch (this) {
      case ELaneAlertType.DashedLeftLaneDeparture:
        return 0;
      case ELaneAlertType.DashedRightLaneDeparture:
        return 1;
      case ELaneAlertType.SolidLeftLaneDeparture:
        return 2;
      case ELaneAlertType.SolidRightLaneDeparture:
        return 3;
      default:
        return -1;
    }
  }

  static ELaneAlertType fromId(int id) {
    switch (id) {
      case 0:
        return ELaneAlertType.DashedLeftLaneDeparture;
      case 1:
        return ELaneAlertType.DashedRightLaneDeparture;
      case 2:
        return ELaneAlertType.SolidLeftLaneDeparture;
      case 3:
        return ELaneAlertType.SolidRightLaneDeparture;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETrafficSignRecognitionEvent {
  SpeedLimit20,
  SpeedLimit25,
  SpeedLimit30,
  SpeedLimit35,
  SpeedLimit40,
  SpeedLimit45,
  SpeedLimit50,
  SpeedLimit55,
  SpeedLimit60,
  SpeedLimit65,
  SpeedLimit70,
  SpeedLimit75,
  SpeedLimit80,
  SpeedLimit85,
  SpeedLimit90,
  SpeedLimit95,
  SpeedLimit100,
  SpeedLimit110,
  SpeedLimit120,
  SpeedLimit130,
  SpeedLimit140,
  DontOvertakeCars,
  DontOvertakeTrucks,
  EndOfSpeed,
  EndOfDontOvertakeCars,
  EndOfDontOvertakeTrucks,
  EndOfAllRestrictions,
}

extension ETrafficSignRecognitionEventExtension
    on ETrafficSignRecognitionEvent {
  int get id {
    switch (this) {
      case ETrafficSignRecognitionEvent.SpeedLimit20:
        return 0;
      case ETrafficSignRecognitionEvent.SpeedLimit25:
        return 1;
      case ETrafficSignRecognitionEvent.SpeedLimit30:
        return 2;
      case ETrafficSignRecognitionEvent.SpeedLimit35:
        return 3;
      case ETrafficSignRecognitionEvent.SpeedLimit40:
        return 4;
      case ETrafficSignRecognitionEvent.SpeedLimit45:
        return 5;
      case ETrafficSignRecognitionEvent.SpeedLimit50:
        return 6;
      case ETrafficSignRecognitionEvent.SpeedLimit55:
        return 7;
      case ETrafficSignRecognitionEvent.SpeedLimit60:
        return 8;
      case ETrafficSignRecognitionEvent.SpeedLimit65:
        return 9;
      case ETrafficSignRecognitionEvent.SpeedLimit70:
        return 10;
      case ETrafficSignRecognitionEvent.SpeedLimit75:
        return 11;
      case ETrafficSignRecognitionEvent.SpeedLimit80:
        return 12;
      case ETrafficSignRecognitionEvent.SpeedLimit85:
        return 13;
      case ETrafficSignRecognitionEvent.SpeedLimit90:
        return 14;
      case ETrafficSignRecognitionEvent.SpeedLimit95:
        return 15;
      case ETrafficSignRecognitionEvent.SpeedLimit100:
        return 16;
      case ETrafficSignRecognitionEvent.SpeedLimit110:
        return 17;
      case ETrafficSignRecognitionEvent.SpeedLimit120:
        return 18;
      case ETrafficSignRecognitionEvent.SpeedLimit130:
        return 19;
      case ETrafficSignRecognitionEvent.SpeedLimit140:
        return 20;
      case ETrafficSignRecognitionEvent.DontOvertakeCars:
        return 21;
      case ETrafficSignRecognitionEvent.DontOvertakeTrucks:
        return 22;
      case ETrafficSignRecognitionEvent.EndOfSpeed:
        return 23;
      case ETrafficSignRecognitionEvent.EndOfDontOvertakeCars:
        return 24;
      case ETrafficSignRecognitionEvent.EndOfDontOvertakeTrucks:
        return 25;
      case ETrafficSignRecognitionEvent.EndOfAllRestrictions:
        return 26;
      default:
        return -1;
    }
  }

  static ETrafficSignRecognitionEvent fromId(int id) {
    switch (id) {
      case 0:
        return ETrafficSignRecognitionEvent.SpeedLimit20;
      case 1:
        return ETrafficSignRecognitionEvent.SpeedLimit25;
      case 2:
        return ETrafficSignRecognitionEvent.SpeedLimit30;
      case 3:
        return ETrafficSignRecognitionEvent.SpeedLimit35;
      case 4:
        return ETrafficSignRecognitionEvent.SpeedLimit40;
      case 5:
        return ETrafficSignRecognitionEvent.SpeedLimit45;
      case 6:
        return ETrafficSignRecognitionEvent.SpeedLimit50;
      case 7:
        return ETrafficSignRecognitionEvent.SpeedLimit55;
      case 8:
        return ETrafficSignRecognitionEvent.SpeedLimit60;
      case 9:
        return ETrafficSignRecognitionEvent.SpeedLimit65;
      case 10:
        return ETrafficSignRecognitionEvent.SpeedLimit70;
      case 11:
        return ETrafficSignRecognitionEvent.SpeedLimit75;
      case 12:
        return ETrafficSignRecognitionEvent.SpeedLimit80;
      case 13:
        return ETrafficSignRecognitionEvent.SpeedLimit85;
      case 14:
        return ETrafficSignRecognitionEvent.SpeedLimit90;
      case 15:
        return ETrafficSignRecognitionEvent.SpeedLimit95;
      case 16:
        return ETrafficSignRecognitionEvent.SpeedLimit100;
      case 17:
        return ETrafficSignRecognitionEvent.SpeedLimit110;
      case 18:
        return ETrafficSignRecognitionEvent.SpeedLimit120;
      case 19:
        return ETrafficSignRecognitionEvent.SpeedLimit130;
      case 20:
        return ETrafficSignRecognitionEvent.SpeedLimit140;
      case 21:
        return ETrafficSignRecognitionEvent.DontOvertakeCars;
      case 22:
        return ETrafficSignRecognitionEvent.DontOvertakeTrucks;
      case 23:
        return ETrafficSignRecognitionEvent.EndOfSpeed;
      case 24:
        return ETrafficSignRecognitionEvent.EndOfDontOvertakeCars;
      case 25:
        return ETrafficSignRecognitionEvent.EndOfDontOvertakeTrucks;
      case 26:
        return ETrafficSignRecognitionEvent.EndOfAllRestrictions;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EVehicleAlertType {
  Undefined,
  OutOfCollision,
  Safe,
  LowDistance,
  Nearby,
  Collision,
  LowSpeedCollision,
  MovingAway,
}

extension EVehicleAlertTypeExtension on EVehicleAlertType {
  int get id {
    switch (this) {
      case EVehicleAlertType.Undefined:
        return 0;
      case EVehicleAlertType.OutOfCollision:
        return 1;
      case EVehicleAlertType.Safe:
        return 2;
      case EVehicleAlertType.LowDistance:
        return 3;
      case EVehicleAlertType.Nearby:
        return 4;
      case EVehicleAlertType.Collision:
        return 5;
      case EVehicleAlertType.LowSpeedCollision:
        return 6;
      case EVehicleAlertType.MovingAway:
        return 7;
      default:
        return -1;
    }
  }

  static EVehicleAlertType fromId(int id) {
    switch (id) {
      case 0:
        return EVehicleAlertType.Undefined;
      case 1:
        return EVehicleAlertType.OutOfCollision;
      case 2:
        return EVehicleAlertType.Safe;
      case 3:
        return EVehicleAlertType.LowDistance;
      case 4:
        return EVehicleAlertType.Nearby;
      case 5:
        return EVehicleAlertType.Collision;
      case 6:
        return EVehicleAlertType.LowSpeedCollision;
      case 7:
        return EVehicleAlertType.MovingAway;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EPedestrianAlertType {
  Undefined,
  OutOfCollision,
  Safe,
  Collision,
}

extension EPedestrianAlertTypeExtension on EPedestrianAlertType {
  int get id {
    switch (this) {
      case EPedestrianAlertType.Undefined:
        return 0;
      case EPedestrianAlertType.OutOfCollision:
        return 1;
      case EPedestrianAlertType.Safe:
        return 2;
      case EPedestrianAlertType.Collision:
        return 3;
      default:
        return -1;
    }
  }

  static EPedestrianAlertType fromId(int id) {
    switch (id) {
      case 0:
        return EPedestrianAlertType.Undefined;
      case 1:
        return EPedestrianAlertType.OutOfCollision;
      case 2:
        return EPedestrianAlertType.Safe;
      case 3:
        return EPedestrianAlertType.Collision;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERenderMode {
  Off,
  Debug,
  Demo,
  Driver,
  Lane,
}

extension ERenderModeExtension on ERenderMode {
  int get id {
    switch (this) {
      case ERenderMode.Off:
        return 0;
      case ERenderMode.Debug:
        return 1;
      case ERenderMode.Demo:
        return 2;
      case ERenderMode.Driver:
        return 3;
      case ERenderMode.Lane:
        return 4;
      default:
        return -1;
    }
  }

  static ERenderMode fromId(int id) {
    switch (id) {
      case 0:
        return ERenderMode.Off;
      case 1:
        return ERenderMode.Debug;
      case 2:
        return ERenderMode.Demo;
      case 3:
        return ERenderMode.Driver;
      case 4:
        return ERenderMode.Lane;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EObstacleType {
  Vehicle,
  Pedestrian,
  Other,
}

extension EObstacleTypeExtension on EObstacleType {
  int get id {
    switch (this) {
      case EObstacleType.Vehicle:
        return 0;
      case EObstacleType.Pedestrian:
        return 1;
      case EObstacleType.Other:
        return 2;
      default:
        return -1;
    }
  }

  static EObstacleType fromId(int id) {
    switch (id) {
      case 0:
        return EObstacleType.Vehicle;
      case 1:
        return EObstacleType.Pedestrian;
      case 2:
        return EObstacleType.Other;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAlertType {
  System,
  Calibration,
  Vehicle,
  Pedestrian,
  Lane,
  TrafficSign,
  Unknown,
}

extension EAlertTypeExtension on EAlertType {
  int get id {
    switch (this) {
      case EAlertType.System:
        return 0;
      case EAlertType.Calibration:
        return 1;
      case EAlertType.Vehicle:
        return 2;
      case EAlertType.Pedestrian:
        return 3;
      case EAlertType.Lane:
        return 4;
      case EAlertType.TrafficSign:
        return 5;
      case EAlertType.Unknown:
        return 6;
      default:
        return -1;
    }
  }

  static EAlertType fromId(int id) {
    switch (id) {
      case 0:
        return EAlertType.System;
      case 1:
        return EAlertType.Calibration;
      case 2:
        return EAlertType.Vehicle;
      case 3:
        return EAlertType.Pedestrian;
      case 4:
        return EAlertType.Lane;
      case 5:
        return EAlertType.TrafficSign;
      case 6:
        return EAlertType.Unknown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EIconType {
  None,
  ADAS_Calibrating_01,
  ADAS_Calibrating_02,
  ADAS_Calibrating_03,
  ADAS_Calibrating_04,
  ADAS_Calibrating_05,
  ADAS_Calibrating_06,
  ADAS_Calibrating_07,
  ADAS_Calibrating_08,
  ADAS_Calibrating_09,
  ADAS_Calibrating_10,
  ADAS_Calibrating_11,
  ADAS_Calibrating_12,
  ADAS_Calibrating_13,
  ADAS_Calibrating_14,
  ADAS_Calibrating_15,
  ADAS_ExcessiveMovement,
  ADAS_HeavyRain,
  ADAS_LowImageQuality,
  ADAS_LowVisibility,
  ADAS_Enabled,
  LaneDepartureLeftDashed_Flash,
  LaneDepartureLeftDashed_NoFlash,
  LaneDepartureLeftSolid_Flash,
  LaneDepartureLeftSolid_NoFlash,
  LaneDepartureRightDashed_Flash,
  LaneDepartureRightDashed_NoFlash,
  LaneDepartureRightSolid_Flash,
  LaneDepartureRightSolid_NoFlash,
  Vehicle_Collision,
  Vehicle_Collision_NoFlash,
  Vehicle_DangerousHeadway,
  Vehicle_MovingTraffic_00_Watch,
  Vehicle_MovingTraffic_01_Watch,
  Vehicle_MovingTraffic_02_Watch,
  Vehicle_MovingTraffic_03_Watch,
  Vehicle_MovingTraffic_04_Watch,
  Vehicle_MovingTraffic_05_Watch,
  Vehicle_MovingTraffic_06_Watch,
  Vehicle_MovingTraffic_07_Watch,
  Vehicle_MovingTraffic_08_Watch,
  Vehicle_MovingTraffic_09_Watch,
  Vehicle_MovingTraffic_10_Watch,
  Vehicle_NearbyVehicle,
  Pedestrian_Collision,
  Pedestrian_Collision_NoFlash,
  TrafficSign_EUR_AllEndOf,
  TrafficSign_EUR_DontOvertakeCars,
  TrafficSign_EUR_DontOvertakeCarsEndOf,
  TrafficSign_EUR_DontOvertakeTrucks,
  TrafficSign_EUR_DontOvertakeTrucksEndOf,
  TrafficSign_EUR_Speed100,
  TrafficSign_EUR_Speed110,
  TrafficSign_EUR_Speed120,
  TrafficSign_EUR_Speed130,
  TrafficSign_EUR_Speed140,
  TrafficSign_EUR_Speed20,
  TrafficSign_EUR_Speed25,
  TrafficSign_EUR_Speed30,
  TrafficSign_EUR_Speed35,
  TrafficSign_EUR_Speed40,
  TrafficSign_EUR_Speed45,
  TrafficSign_EUR_Speed50,
  TrafficSign_EUR_Speed55,
  TrafficSign_EUR_Speed60,
  TrafficSign_EUR_Speed65,
  TrafficSign_EUR_Speed70,
  TrafficSign_EUR_Speed75,
  TrafficSign_EUR_Speed80,
  TrafficSign_EUR_Speed85,
  TrafficSign_EUR_Speed90,
  TrafficSign_EUR_SpeedEndOf,
}

extension EIconTypeExtension on EIconType {
  int get id {
    switch (this) {
      case EIconType.None:
        return 0;
      case EIconType.ADAS_Calibrating_01:
        return 48151;
      case EIconType.ADAS_Calibrating_02:
        return 48152;
      case EIconType.ADAS_Calibrating_03:
        return 48153;
      case EIconType.ADAS_Calibrating_04:
        return 48154;
      case EIconType.ADAS_Calibrating_05:
        return 48155;
      case EIconType.ADAS_Calibrating_06:
        return 48156;
      case EIconType.ADAS_Calibrating_07:
        return 48157;
      case EIconType.ADAS_Calibrating_08:
        return 48158;
      case EIconType.ADAS_Calibrating_09:
        return 48159;
      case EIconType.ADAS_Calibrating_10:
        return 48160;
      case EIconType.ADAS_Calibrating_11:
        return 48161;
      case EIconType.ADAS_Calibrating_12:
        return 48162;
      case EIconType.ADAS_Calibrating_13:
        return 48163;
      case EIconType.ADAS_Calibrating_14:
        return 48164;
      case EIconType.ADAS_Calibrating_15:
        return 48165;
      case EIconType.ADAS_ExcessiveMovement:
        return 48071;
      case EIconType.ADAS_HeavyRain:
        return 48009;
      case EIconType.ADAS_LowImageQuality:
        return 48010;
      case EIconType.ADAS_LowVisibility:
        return 48011;
      case EIconType.ADAS_Enabled:
        return 48127;
      case EIconType.LaneDepartureLeftDashed_Flash:
        return 48013;
      case EIconType.LaneDepartureLeftDashed_NoFlash:
        return 48072;
      case EIconType.LaneDepartureLeftSolid_Flash:
        return 48015;
      case EIconType.LaneDepartureLeftSolid_NoFlash:
        return 48073;
      case EIconType.LaneDepartureRightDashed_Flash:
        return 48017;
      case EIconType.LaneDepartureRightDashed_NoFlash:
        return 48074;
      case EIconType.LaneDepartureRightSolid_Flash:
        return 48019;
      case EIconType.LaneDepartureRightSolid_NoFlash:
        return 48075;
      case EIconType.Vehicle_Collision:
        return 48021;
      case EIconType.Vehicle_Collision_NoFlash:
        return 48124;
      case EIconType.Vehicle_DangerousHeadway:
        return 48022;
      case EIconType.Vehicle_MovingTraffic_00_Watch:
        return 48130;
      case EIconType.Vehicle_MovingTraffic_01_Watch:
        return 48132;
      case EIconType.Vehicle_MovingTraffic_02_Watch:
        return 48134;
      case EIconType.Vehicle_MovingTraffic_03_Watch:
        return 48136;
      case EIconType.Vehicle_MovingTraffic_04_Watch:
        return 48138;
      case EIconType.Vehicle_MovingTraffic_05_Watch:
        return 48140;
      case EIconType.Vehicle_MovingTraffic_06_Watch:
        return 48142;
      case EIconType.Vehicle_MovingTraffic_07_Watch:
        return 48144;
      case EIconType.Vehicle_MovingTraffic_08_Watch:
        return 48146;
      case EIconType.Vehicle_MovingTraffic_09_Watch:
        return 48148;
      case EIconType.Vehicle_MovingTraffic_10_Watch:
        return 48150;
      case EIconType.Vehicle_NearbyVehicle:
        return 48128;
      case EIconType.Pedestrian_Collision:
        return 48020;
      case EIconType.Pedestrian_Collision_NoFlash:
        return 48123;
      case EIconType.TrafficSign_EUR_AllEndOf:
        return 48023;
      case EIconType.TrafficSign_EUR_DontOvertakeCars:
        return 48024;
      case EIconType.TrafficSign_EUR_DontOvertakeCarsEndOf:
        return 48025;
      case EIconType.TrafficSign_EUR_DontOvertakeTrucks:
        return 48026;
      case EIconType.TrafficSign_EUR_DontOvertakeTrucksEndOf:
        return 48027;
      case EIconType.TrafficSign_EUR_Speed100:
        return 48028;
      case EIconType.TrafficSign_EUR_Speed110:
        return 48029;
      case EIconType.TrafficSign_EUR_Speed120:
        return 48030;
      case EIconType.TrafficSign_EUR_Speed130:
        return 48031;
      case EIconType.TrafficSign_EUR_Speed140:
        return 48032;
      case EIconType.TrafficSign_EUR_Speed20:
        return 48034;
      case EIconType.TrafficSign_EUR_Speed25:
        return 48035;
      case EIconType.TrafficSign_EUR_Speed30:
        return 48036;
      case EIconType.TrafficSign_EUR_Speed35:
        return 48037;
      case EIconType.TrafficSign_EUR_Speed40:
        return 48038;
      case EIconType.TrafficSign_EUR_Speed45:
        return 48039;
      case EIconType.TrafficSign_EUR_Speed50:
        return 48040;
      case EIconType.TrafficSign_EUR_Speed55:
        return 48041;
      case EIconType.TrafficSign_EUR_Speed60:
        return 48042;
      case EIconType.TrafficSign_EUR_Speed65:
        return 48043;
      case EIconType.TrafficSign_EUR_Speed70:
        return 48044;
      case EIconType.TrafficSign_EUR_Speed75:
        return 48045;
      case EIconType.TrafficSign_EUR_Speed80:
        return 48046;
      case EIconType.TrafficSign_EUR_Speed85:
        return 48047;
      case EIconType.TrafficSign_EUR_Speed90:
        return 48048;
      case EIconType.TrafficSign_EUR_SpeedEndOf:
        return 48049;
      default:
        return -1;
    }
  }

  static EIconType fromId(int id) {
    switch (id) {
      case 0:
        return EIconType.None;
      case 48151:
        return EIconType.ADAS_Calibrating_01;
      case 48152:
        return EIconType.ADAS_Calibrating_02;
      case 48153:
        return EIconType.ADAS_Calibrating_03;
      case 48154:
        return EIconType.ADAS_Calibrating_04;
      case 48155:
        return EIconType.ADAS_Calibrating_05;
      case 48156:
        return EIconType.ADAS_Calibrating_06;
      case 48157:
        return EIconType.ADAS_Calibrating_07;
      case 48158:
        return EIconType.ADAS_Calibrating_08;
      case 48159:
        return EIconType.ADAS_Calibrating_09;
      case 48160:
        return EIconType.ADAS_Calibrating_10;
      case 48161:
        return EIconType.ADAS_Calibrating_11;
      case 48162:
        return EIconType.ADAS_Calibrating_12;
      case 48163:
        return EIconType.ADAS_Calibrating_13;
      case 48164:
        return EIconType.ADAS_Calibrating_14;
      case 48165:
        return EIconType.ADAS_Calibrating_15;
      case 48071:
        return EIconType.ADAS_ExcessiveMovement;
      case 48009:
        return EIconType.ADAS_HeavyRain;
      case 48010:
        return EIconType.ADAS_LowImageQuality;
      case 48011:
        return EIconType.ADAS_LowVisibility;
      case 48127:
        return EIconType.ADAS_Enabled;
      case 48013:
        return EIconType.LaneDepartureLeftDashed_Flash;
      case 48072:
        return EIconType.LaneDepartureLeftDashed_NoFlash;
      case 48015:
        return EIconType.LaneDepartureLeftSolid_Flash;
      case 48073:
        return EIconType.LaneDepartureLeftSolid_NoFlash;
      case 48017:
        return EIconType.LaneDepartureRightDashed_Flash;
      case 48074:
        return EIconType.LaneDepartureRightDashed_NoFlash;
      case 48019:
        return EIconType.LaneDepartureRightSolid_Flash;
      case 48075:
        return EIconType.LaneDepartureRightSolid_NoFlash;
      case 48021:
        return EIconType.Vehicle_Collision;
      case 48124:
        return EIconType.Vehicle_Collision_NoFlash;
      case 48022:
        return EIconType.Vehicle_DangerousHeadway;
      case 48130:
        return EIconType.Vehicle_MovingTraffic_00_Watch;
      case 48132:
        return EIconType.Vehicle_MovingTraffic_01_Watch;
      case 48134:
        return EIconType.Vehicle_MovingTraffic_02_Watch;
      case 48136:
        return EIconType.Vehicle_MovingTraffic_03_Watch;
      case 48138:
        return EIconType.Vehicle_MovingTraffic_04_Watch;
      case 48140:
        return EIconType.Vehicle_MovingTraffic_05_Watch;
      case 48142:
        return EIconType.Vehicle_MovingTraffic_06_Watch;
      case 48144:
        return EIconType.Vehicle_MovingTraffic_07_Watch;
      case 48146:
        return EIconType.Vehicle_MovingTraffic_08_Watch;
      case 48148:
        return EIconType.Vehicle_MovingTraffic_09_Watch;
      case 48150:
        return EIconType.Vehicle_MovingTraffic_10_Watch;
      case 48128:
        return EIconType.Vehicle_NearbyVehicle;
      case 48020:
        return EIconType.Pedestrian_Collision;
      case 48123:
        return EIconType.Pedestrian_Collision_NoFlash;
      case 48023:
        return EIconType.TrafficSign_EUR_AllEndOf;
      case 48024:
        return EIconType.TrafficSign_EUR_DontOvertakeCars;
      case 48025:
        return EIconType.TrafficSign_EUR_DontOvertakeCarsEndOf;
      case 48026:
        return EIconType.TrafficSign_EUR_DontOvertakeTrucks;
      case 48027:
        return EIconType.TrafficSign_EUR_DontOvertakeTrucksEndOf;
      case 48028:
        return EIconType.TrafficSign_EUR_Speed100;
      case 48029:
        return EIconType.TrafficSign_EUR_Speed110;
      case 48030:
        return EIconType.TrafficSign_EUR_Speed120;
      case 48031:
        return EIconType.TrafficSign_EUR_Speed130;
      case 48032:
        return EIconType.TrafficSign_EUR_Speed140;
      case 48034:
        return EIconType.TrafficSign_EUR_Speed20;
      case 48035:
        return EIconType.TrafficSign_EUR_Speed25;
      case 48036:
        return EIconType.TrafficSign_EUR_Speed30;
      case 48037:
        return EIconType.TrafficSign_EUR_Speed35;
      case 48038:
        return EIconType.TrafficSign_EUR_Speed40;
      case 48039:
        return EIconType.TrafficSign_EUR_Speed45;
      case 48040:
        return EIconType.TrafficSign_EUR_Speed50;
      case 48041:
        return EIconType.TrafficSign_EUR_Speed55;
      case 48042:
        return EIconType.TrafficSign_EUR_Speed60;
      case 48043:
        return EIconType.TrafficSign_EUR_Speed65;
      case 48044:
        return EIconType.TrafficSign_EUR_Speed70;
      case 48045:
        return EIconType.TrafficSign_EUR_Speed75;
      case 48046:
        return EIconType.TrafficSign_EUR_Speed80;
      case 48047:
        return EIconType.TrafficSign_EUR_Speed85;
      case 48048:
        return EIconType.TrafficSign_EUR_Speed90;
      case 48049:
        return EIconType.TrafficSign_EUR_SpeedEndOf;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESoundType {
  LeavingLane,
  KeepLane,
  MovingTraffic,
  KeepDistance,
  WatchOutForVehicle,
  SingleBeep,
  HighPitchedBeeps,
  ADASDisabled,
  ADASEnabled,
  ObjectDetectorCouldNotBeInitialized,
  LaneDetectorCouldNotBeInitialized,
  TrafficSignClassifierCouldNotBeInitialized,
  None,
}

extension ESoundTypeExtension on ESoundType {
  int get id {
    switch (this) {
      case ESoundType.LeavingLane:
        return 0;
      case ESoundType.KeepLane:
        return 1;
      case ESoundType.MovingTraffic:
        return 2;
      case ESoundType.KeepDistance:
        return 3;
      case ESoundType.WatchOutForVehicle:
        return 4;
      case ESoundType.SingleBeep:
        return 5;
      case ESoundType.HighPitchedBeeps:
        return 6;
      case ESoundType.ADASDisabled:
        return 7;
      case ESoundType.ADASEnabled:
        return 8;
      case ESoundType.ObjectDetectorCouldNotBeInitialized:
        return 9;
      case ESoundType.LaneDetectorCouldNotBeInitialized:
        return 10;
      case ESoundType.TrafficSignClassifierCouldNotBeInitialized:
        return 11;
      case ESoundType.None:
        return 12;
      default:
        return -1;
    }
  }

  static ESoundType fromId(int id) {
    switch (id) {
      case 0:
        return ESoundType.LeavingLane;
      case 1:
        return ESoundType.KeepLane;
      case 2:
        return ESoundType.MovingTraffic;
      case 3:
        return ESoundType.KeepDistance;
      case 4:
        return ESoundType.WatchOutForVehicle;
      case 5:
        return ESoundType.SingleBeep;
      case 6:
        return ESoundType.HighPitchedBeeps;
      case 7:
        return ESoundType.ADASDisabled;
      case 8:
        return ESoundType.ADASEnabled;
      case 9:
        return ESoundType.ObjectDetectorCouldNotBeInitialized;
      case 10:
        return ESoundType.LaneDetectorCouldNotBeInitialized;
      case 11:
        return ESoundType.TrafficSignClassifierCouldNotBeInitialized;
      case 12:
        return ESoundType.None;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EModuleType {
  Calibration,
  LaneDetection,
  ObstacleDetection,
  TrafficSignRecognition,
  Diagnostics,
  All,
}

extension EModuleTypeExtension on EModuleType {
  int get id {
    switch (this) {
      case EModuleType.Calibration:
        return 0;
      case EModuleType.LaneDetection:
        return 1;
      case EModuleType.ObstacleDetection:
        return 2;
      case EModuleType.TrafficSignRecognition:
        return 3;
      case EModuleType.Diagnostics:
        return 4;
      case EModuleType.All:
        return 5;
      default:
        return -1;
    }
  }

  static EModuleType fromId(int id) {
    switch (id) {
      case 0:
        return EModuleType.Calibration;
      case 1:
        return EModuleType.LaneDetection;
      case 2:
        return EModuleType.ObstacleDetection;
      case 3:
        return EModuleType.TrafficSignRecognition;
      case 4:
        return EModuleType.Diagnostics;
      case 5:
        return EModuleType.All;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Obstacle {
  int? id;
  RectType<double>? position;
  EObstacleType? type;
  dynamic? subtype;
  double? headway;
  double? ttc;
  double? distance;
  double? confidence;
  Obstacle({
    this.id,
    this.position,
    this.type,
    this.subtype,
    this.headway,
    this.ttc,
    this.distance,
    this.confidence,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (position != null) {
      json['position'] = position;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    if (subtype != null) {
      json['subtype'] = subtype!.id;
    }
    if (headway != null) {
      json['headway'] = headway;
    }
    if (ttc != null) {
      json['ttc'] = ttc;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (confidence != null) {
      json['confidence'] = confidence;
    }
    return json;
  }

  factory Obstacle.fromJson(Map<String, dynamic> json) {
    return Obstacle(
      id: json['id'],
      position: json['position'],
      type: json['type'],
      subtype: json['subtype'],
      headway: json['headway'],
      ttc: json['ttc'],
      distance: json['distance'],
      confidence: json['confidence'],
    );
  }
}

class InitializationConfiguration {
  dynamic tuningParameters;
  InitializationConfiguration({
    this.tuningParameters,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (tuningParameters != null) {
      json['tuningParameters'] = tuningParameters;
    }
    return json;
  }

  factory InitializationConfiguration.fromJson(Map<String, dynamic> json) {
    return InitializationConfiguration(
      tuningParameters: json['tuningParameters'],
    );
  }
}
