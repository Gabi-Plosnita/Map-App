// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_rendercontext.dart";
import "gem_apilists.dart";
import "gem_time.dart";
import "gem_sensedatatypes.dart";
import "gem_addressinfo.dart";
import "gem_parameters.dart";

enum Enum {
  UNKNOWN,
  SD_480p,
  HD_720p,
  FullHD_1080p,
  WQHD_1440p,
  UHD_4K_2160p,
  UHD_8K_4320p,
}

extension EnumExtension on Enum {
  int get id {
    switch (this) {
      case Enum.UNKNOWN:
        return 0;
      case Enum.SD_480p:
        return 1;
      case Enum.HD_720p:
        return 2;
      case Enum.FullHD_1080p:
        return 3;
      case Enum.WQHD_1440p:
        return 4;
      case Enum.UHD_4K_2160p:
        return 5;
      case Enum.UHD_8K_4320p:
        return 6;
      default:
        return -1;
    }
  }

  static Enum fromId(int id) {
    switch (id) {
      case 0:
        return Enum.UNKNOWN;
      case 1:
        return Enum.SD_480p;
      case 2:
        return Enum.HD_720p;
      case 3:
        return Enum.FullHD_1080p;
      case 4:
        return Enum.WQHD_1440p;
      case 5:
        return Enum.UHD_4K_2160p;
      case 6:
        return Enum.UHD_8K_4320p;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERoadModifier {
  None,
  Tunnel,
  Bridge,
  Ramp,
  Tollway,
  Roundabout,
  OneWay,
  NoUTurn,
  LeftDriveSide,
  Motorway,
  MotorwayLink,
}

extension ERoadModifierExtension on ERoadModifier {
  int get id {
    switch (this) {
      case ERoadModifier.None:
        return 0;
      case ERoadModifier.Tunnel:
        return 1;
      case ERoadModifier.Bridge:
        return 2;
      case ERoadModifier.Ramp:
        return 4;
      case ERoadModifier.Tollway:
        return 8;
      case ERoadModifier.Roundabout:
        return 16;
      case ERoadModifier.OneWay:
        return 32;
      case ERoadModifier.NoUTurn:
        return 64;
      case ERoadModifier.LeftDriveSide:
        return 128;
      case ERoadModifier.Motorway:
        return 256;
      case ERoadModifier.MotorwayLink:
        return 512;
      default:
        return -1;
    }
  }

  static ERoadModifier fromId(int id) {
    switch (id) {
      case 0:
        return ERoadModifier.None;
      case 1:
        return ERoadModifier.Tunnel;
      case 2:
        return ERoadModifier.Bridge;
      case 4:
        return ERoadModifier.Ramp;
      case 8:
        return ERoadModifier.Tollway;
      case 16:
        return ERoadModifier.Roundabout;
      case 32:
        return ERoadModifier.OneWay;
      case 64:
        return ERoadModifier.NoUTurn;
      case 128:
        return ERoadModifier.LeftDriveSide;
      case 256:
        return ERoadModifier.Motorway;
      case 512:
        return ERoadModifier.MotorwayLink;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EDirectBufferType {
  EUnknown,
  EUINT8_PTR,
  ECVPixelBufferRef,
  ECMSampleBufferRef,
  EByteBuffer,
  EMediaImage,
}

extension EDirectBufferTypeExtension on EDirectBufferType {
  int get id {
    switch (this) {
      case EDirectBufferType.EUnknown:
        return 0;
      case EDirectBufferType.EUINT8_PTR:
        return 1;
      case EDirectBufferType.ECVPixelBufferRef:
        return 2;
      case EDirectBufferType.ECMSampleBufferRef:
        return 3;
      case EDirectBufferType.EByteBuffer:
        return 5;
      case EDirectBufferType.EMediaImage:
        return 6;
      default:
        return -1;
    }
  }

  static EDirectBufferType fromId(int id) {
    switch (id) {
      case 0:
        return EDirectBufferType.EUnknown;
      case 1:
        return EDirectBufferType.EUINT8_PTR;
      case 2:
        return EDirectBufferType.ECVPixelBufferRef;
      case 3:
        return EDirectBufferType.ECMSampleBufferRef;
      case 5:
        return EDirectBufferType.EByteBuffer;
      case 6:
        return EDirectBufferType.EMediaImage;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EUnitOfMeasurement {
  MeterPerSecond2,
}

extension EUnitOfMeasurementExtension on EUnitOfMeasurement {
  int get id {
    switch (this) {
      case EUnitOfMeasurement.MeterPerSecond2:
        return 1;
      default:
        return -1;
    }
  }

  static EUnitOfMeasurement fromId(int id) {
    switch (id) {
      case 1:
        return EUnitOfMeasurement.MeterPerSecond2;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EType {
  Unknown,
  InVehicle,
  OnBicycle,
  OnFoot,
  Still,
  Tilting,
  Walking,
  Running,
  AutomotiveStationary,
  VehicleMoving,
  Cycling,
  PedestrianStationary,
  PedestrianWalking,
  PedestrianRunning,
  VehicleStationary,
}

extension ETypeExtension on EType {
  int get id {
    switch (this) {
      case EType.Unknown:
        return 0;
      case EType.InVehicle:
        return 1;
      case EType.OnBicycle:
        return 2;
      case EType.OnFoot:
        return 3;
      case EType.Still:
        return 4;
      case EType.Tilting:
        return 5;
      case EType.Walking:
        return 6;
      case EType.Running:
        return 7;
      case EType.AutomotiveStationary:
        return 8;
      default:
        return -1;
    }
  }

  static EType fromId(int id) {
    switch (id) {
      case 0:
        return EType.Unknown;
      case 1:
        return EType.InVehicle;
      case 2:
        return EType.OnBicycle;
      case 3:
        return EType.OnFoot;
      case 4:
        return EType.Still;
      case 5:
        return EType.Tilting;
      case 6:
        return EType.Walking;
      case 7:
        return EType.Running;
      case 8:
        return EType.AutomotiveStationary;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EConfidence {
  Unknown,
  Low,
  Medium,
  High,
}

extension EConfidenceExtension on EConfidence {
  int get id {
    switch (this) {
      case EConfidence.Unknown:
        return 0;
      case EConfidence.Low:
        return 1;
      case EConfidence.Medium:
        return 2;
      case EConfidence.High:
        return 3;
      default:
        return -1;
    }
  }

  static EConfidence fromId(int id) {
    switch (id) {
      case 0:
        return EConfidence.Unknown;
      case 1:
        return EConfidence.Low;
      case 2:
        return EConfidence.Medium;
      case 3:
        return EConfidence.High;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EState {
  Unknown,
  Charging,
  Discharging,
  NotCharging,
  Full,
}

extension EStateExtension on EState {
  int get id {
    switch (this) {
      case EState.Unknown:
        return 0;
      case EState.Charging:
        return 1;
      case EState.Discharging:
        return 2;
      case EState.NotCharging:
        return 3;
      case EState.Full:
        return 4;
      default:
        return -1;
    }
  }

  static EState fromId(int id) {
    switch (id) {
      case 0:
        return EState.Unknown;
      case 1:
        return EState.Charging;
      case 2:
        return EState.Discharging;
      case 3:
        return EState.NotCharging;
      case 4:
        return EState.Full;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EHealth {
  Unknown,
  Good,
  Overheat,
  Dead,
  OverVoltage,
  Unspecified,
  Cold,
}

extension EHealthExtension on EHealth {
  int get id {
    switch (this) {
      case EHealth.Unknown:
        return 0;
      case EHealth.Good:
        return 1;
      case EHealth.Overheat:
        return 2;
      case EHealth.Dead:
        return 3;
      case EHealth.OverVoltage:
        return 4;
      case EHealth.Unspecified:
        return 5;
      case EHealth.Cold:
        return 6;
      default:
        return -1;
    }
  }

  static EHealth fromId(int id) {
    switch (id) {
      case 0:
        return EHealth.Unknown;
      case 1:
        return EHealth.Good;
      case 2:
        return EHealth.Overheat;
      case 3:
        return EHealth.Dead;
      case 4:
        return EHealth.OverVoltage;
      case 5:
        return EHealth.Unspecified;
      case 6:
        return EHealth.Cold;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EPluggedType {
  Unknown,
  Usb,
  Wireless,
}

extension EPluggedTypeExtension on EPluggedType {
  int get id {
    switch (this) {
      case EPluggedType.Unknown:
        return 0;
      case EPluggedType.Usb:
        return 2;
      case EPluggedType.Wireless:
        return 3;
      default:
        return -1;
    }
  }

  static EPluggedType fromId(int id) {
    switch (id) {
      case 0:
        return EPluggedType.Unknown;
      case 2:
        return EPluggedType.Usb;
      case 3:
        return EPluggedType.Wireless;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAccuracy {
  Unknown,
  Low,
  Medium,
  High,
}

extension EAccuracyExtension on EAccuracy {
  int get id {
    switch (this) {
      case EAccuracy.Unknown:
        return 0;
      case EAccuracy.Low:
        return 1;
      case EAccuracy.Medium:
        return 2;
      case EAccuracy.High:
        return 3;
      default:
        return -1;
    }
  }

  static EAccuracy fromId(int id) {
    switch (id) {
      case 0:
        return EAccuracy.Unknown;
      case 1:
        return EAccuracy.Low;
      case 2:
        return EAccuracy.Medium;
      case 3:
        return EAccuracy.High;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EOrientationType {
  Unknown,
  Portrait,
  UpsideDown,
  LandscapeLeft,
  LandscapeRight,
}

extension EOrientationTypeExtension on EOrientationType {
  int get id {
    switch (this) {
      case EOrientationType.Unknown:
        return 0;
      case EOrientationType.Portrait:
        return 1;
      case EOrientationType.UpsideDown:
        return 2;
      case EOrientationType.LandscapeLeft:
        return 3;
      case EOrientationType.LandscapeRight:
        return 4;
      default:
        return -1;
    }
  }

  static EOrientationType fromId(int id) {
    switch (id) {
      case 0:
        return EOrientationType.Unknown;
      case 1:
        return EOrientationType.Portrait;
      case 2:
        return EOrientationType.UpsideDown;
      case 3:
        return EOrientationType.LandscapeLeft;
      case 4:
        return EOrientationType.LandscapeRight;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EFaceType {
  Unknown,
  FaceUp,
  FaceDown,
}

extension EFaceTypeExtension on EFaceType {
  int get id {
    switch (this) {
      case EFaceType.Unknown:
        return 0;
      case EFaceType.FaceUp:
        return 1;
      case EFaceType.FaceDown:
        return 2;
      default:
        return -1;
    }
  }

  static EFaceType fromId(int id) {
    switch (id) {
      case 0:
        return EFaceType.Unknown;
      case 1:
        return EFaceType.FaceUp;
      case 2:
        return EFaceType.FaceDown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EProvider {
  GPS,
  Network,
  Other,
}

extension EProviderExtension on EProvider {
  int get id {
    switch (this) {
      case EProvider.GPS:
        return 0;
      case EProvider.Network:
        return 1;
      case EProvider.Other:
        return 2;
      default:
        return -1;
    }
  }

  static EProvider fromId(int id) {
    switch (id) {
      case 0:
        return EProvider.GPS;
      case 1:
        return EProvider.Network;
      case 2:
        return EProvider.Other;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EFixQuality {
  Invalid,
  Inertial,
  Low,
  High,
}

extension EFixQualityExtension on EFixQuality {
  int get id {
    switch (this) {
      case EFixQuality.Invalid:
        return 0;
      case EFixQuality.Inertial:
        return 1;
      case EFixQuality.Low:
        return 2;
      case EFixQuality.High:
        return 3;
      default:
        return -1;
    }
  }

  static EFixQuality fromId(int id) {
    switch (id) {
      case 0:
        return EFixQuality.Invalid;
      case 1:
        return EFixQuality.Inertial;
      case 2:
        return EFixQuality.Low;
      case 3:
        return EFixQuality.High;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ELevel {
  Unknown,
  Normal,
  Fair,
  Serious,
  Critical,
  ShuttingDown,
}

extension ELevelExtension on ELevel {
  int get id {
    switch (this) {
      case ELevel.Unknown:
        return 0;
      case ELevel.Normal:
        return 1;
      case ELevel.Fair:
        return 2;
      case ELevel.Serious:
        return 3;
      case ELevel.Critical:
        return 4;
      case ELevel.ShuttingDown:
        return 5;
      default:
        return -1;
    }
  }

  static ELevel fromId(int id) {
    switch (id) {
      case 0:
        return ELevel.Unknown;
      case 1:
        return ELevel.Normal;
      case 2:
        return ELevel.Fair;
      case 3:
        return ELevel.Serious;
      case 4:
        return ELevel.Critical;
      case 5:
        return ELevel.ShuttingDown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EDataInterruptionReason {
  Unknown,
  SensorStopped,
  AppSentToBackground,
  LocationProvidersChanged,
  SensorConfigurationChanged,
  DeviceOrientationChanged,
  InUseByAnotherClient,
  NotAvailableWithMultipleForegroundApps,
  NotAvailableDueToSystemPressure,
  NotAvailableInBackground,
  AudioDeviceInUseByAnotherClient,
  VideoDeviceInUseByAnotherClient,
}

extension EDataInterruptionReasonExtension on EDataInterruptionReason {
  int get id {
    switch (this) {
      case EDataInterruptionReason.Unknown:
        return 0;
      case EDataInterruptionReason.SensorStopped:
        return 1;
      case EDataInterruptionReason.AppSentToBackground:
        return 2;
      case EDataInterruptionReason.LocationProvidersChanged:
        return 3;
      case EDataInterruptionReason.SensorConfigurationChanged:
        return 4;
      case EDataInterruptionReason.DeviceOrientationChanged:
        return 5;
      case EDataInterruptionReason.InUseByAnotherClient:
        return 6;
      case EDataInterruptionReason.NotAvailableWithMultipleForegroundApps:
        return 7;
      case EDataInterruptionReason.NotAvailableDueToSystemPressure:
        return 8;
      case EDataInterruptionReason.NotAvailableInBackground:
        return 9;
      case EDataInterruptionReason.AudioDeviceInUseByAnotherClient:
        return 10;
      case EDataInterruptionReason.VideoDeviceInUseByAnotherClient:
        return 11;
      default:
        return -1;
    }
  }

  static EDataInterruptionReason fromId(int id) {
    switch (id) {
      case 0:
        return EDataInterruptionReason.Unknown;
      case 1:
        return EDataInterruptionReason.SensorStopped;
      case 2:
        return EDataInterruptionReason.AppSentToBackground;
      case 3:
        return EDataInterruptionReason.LocationProvidersChanged;
      case 4:
        return EDataInterruptionReason.SensorConfigurationChanged;
      case 5:
        return EDataInterruptionReason.DeviceOrientationChanged;
      case 6:
        return EDataInterruptionReason.InUseByAnotherClient;
      case 7:
        return EDataInterruptionReason.NotAvailableWithMultipleForegroundApps;
      case 8:
        return EDataInterruptionReason.NotAvailableDueToSystemPressure;
      case 9:
        return EDataInterruptionReason.NotAvailableInBackground;
      case 10:
        return EDataInterruptionReason.AudioDeviceInUseByAnotherClient;
      case 11:
        return EDataInterruptionReason.VideoDeviceInUseByAnotherClient;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EPlayingStatus {
  Unknown,
  Stopped,
  Paused,
  Playing,
}

extension EPlayingStatusExtension on EPlayingStatus {
  int get id {
    switch (this) {
      case EPlayingStatus.Unknown:
        return 0;
      case EPlayingStatus.Stopped:
        return 1;
      case EPlayingStatus.Paused:
        return 2;
      case EPlayingStatus.Playing:
        return 3;
      default:
        return -1;
    }
  }

  static EPlayingStatus fromId(int id) {
    switch (id) {
      case 0:
        return EPlayingStatus.Unknown;
      case 1:
        return EPlayingStatus.Stopped;
      case 2:
        return EPlayingStatus.Paused;
      case 3:
        return EPlayingStatus.Playing;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EDataSourceType {
  Unknown,
  Live,
  Playback,
}

extension EDataSourceTypeExtension on EDataSourceType {
  int get id {
    switch (this) {
      case EDataSourceType.Unknown:
        return 0;
      case EDataSourceType.Live:
        return 1;
      case EDataSourceType.Playback:
        return 2;
      default:
        return -1;
    }
  }

  static EDataSourceType fromId(int id) {
    switch (id) {
      case 0:
        return EDataSourceType.Unknown;
      case 1:
        return EDataSourceType.Live;
      case 2:
        return EDataSourceType.Playback;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EOrigin {
  Unknown,
  External,
}

extension EOriginExtension on EOrigin {
  int get id {
    switch (this) {
      case EOrigin.Unknown:
        return 0;
      case EOrigin.External:
        return 2;
      default:
        return -1;
    }
  }

  static EOrigin fromId(int id) {
    switch (id) {
      case 0:
        return EOrigin.Unknown;
      case 2:
        return EOrigin.External;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Route extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  Route()
      : _id = -1,
        _mapId = -1;
  Route.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
}

class CameraConfiguration {
  double? horizontalFOV;
  double? verticalFOV;
  int? frameWidth;
  int? frameHeight;
  dynamic pixelFormat;
  double? framerate;
  double? focalLengthHorizontal;
  double? focalLengthVertical;
  double? focalLengthMinimum;
  double? physicalSensorWidth;
  double? physicalSensorHeight;
  double? exposure;
  double? minExposure;
  double? maxExposure;
  double? exposureTargetOffset;
  double? isoValue;
  double? minIso;
  double? maxIso;
  CameraConfiguration({
    this.horizontalFOV,
    this.verticalFOV,
    this.frameWidth,
    this.frameHeight,
    this.pixelFormat,
    this.framerate,
    this.focalLengthHorizontal,
    this.focalLengthVertical,
    this.focalLengthMinimum,
    this.physicalSensorWidth,
    this.physicalSensorHeight,
    this.exposure,
    this.minExposure,
    this.maxExposure,
    this.exposureTargetOffset,
    this.isoValue,
    this.minIso,
    this.maxIso,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (horizontalFOV != null) {
      json['horizontalFOV'] = horizontalFOV;
    }
    if (verticalFOV != null) {
      json['verticalFOV'] = verticalFOV;
    }
    if (frameWidth != null) {
      json['frameWidth'] = frameWidth;
    }
    if (frameHeight != null) {
      json['frameHeight'] = frameHeight;
    }
    if (pixelFormat != null) {
      json['pixelFormat'] = pixelFormat;
    }
    if (framerate != null) {
      json['framerate'] = framerate;
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
    if (exposure != null) {
      json['exposure'] = exposure;
    }
    if (minExposure != null) {
      json['minExposure'] = minExposure;
    }
    if (maxExposure != null) {
      json['maxExposure'] = maxExposure;
    }
    if (exposureTargetOffset != null) {
      json['exposureTargetOffset'] = exposureTargetOffset;
    }
    if (isoValue != null) {
      json['isoValue'] = isoValue;
    }
    if (minIso != null) {
      json['minIso'] = minIso;
    }
    if (maxIso != null) {
      json['maxIso'] = maxIso;
    }
    return json;
  }

  factory CameraConfiguration.fromJson(Map<String, dynamic> json) {
    return CameraConfiguration(
      horizontalFOV: json['horizontalFOV'],
      verticalFOV: json['verticalFOV'],
      frameWidth: json['frameWidth'],
      frameHeight: json['frameHeight'],
      pixelFormat: json['pixelFormat'],
      framerate: json['framerate'],
      focalLengthHorizontal: json['focalLengthHorizontal'],
      focalLengthVertical: json['focalLengthVertical'],
      focalLengthMinimum: json['focalLengthMinimum'],
      physicalSensorWidth: json['physicalSensorWidth'],
      physicalSensorHeight: json['physicalSensorHeight'],
      exposure: json['exposure'],
      minExposure: json['minExposure'],
      maxExposure: json['maxExposure'],
      exposureTargetOffset: json['exposureTargetOffset'],
      isoValue: json['isoValue'],
      minIso: json['minIso'],
      maxIso: json['maxIso'],
    );
  }
}
