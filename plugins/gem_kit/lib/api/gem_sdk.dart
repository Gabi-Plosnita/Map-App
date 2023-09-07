// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_string.dart";
import "gem_stdstring.dart";
import "gem_exceptions.dart";
import "gem_transferstatistics.dart";
import "gem_calllogger.dart";
import "gem_progresslistener.dart";
import "gem_sensedatatypes.dart";
import "gem_featureids.dart";
import "gem_apifactory.dart";
import "gem_types.dart";

enum EDataSavePolicy {
  UseInternalOnly,
  UseExternalOnly,
  UseBothPreferInternal,
  UseBothPreferExternal,
  UseDefault,
}

extension EDataSavePolicyExtension on EDataSavePolicy {
  int get id {
    switch (this) {
      case EDataSavePolicy.UseInternalOnly:
        return 0;
      case EDataSavePolicy.UseExternalOnly:
        return 1;
      case EDataSavePolicy.UseBothPreferInternal:
        return 2;
      case EDataSavePolicy.UseBothPreferExternal:
        return 3;
      case EDataSavePolicy.UseDefault:
        return 4;
      default:
        return -1;
    }
  }

  static EDataSavePolicy fromId(int id) {
    switch (id) {
      case 0:
        return EDataSavePolicy.UseInternalOnly;
      case 1:
        return EDataSavePolicy.UseExternalOnly;
      case 2:
        return EDataSavePolicy.UseBothPreferInternal;
      case 3:
        return EDataSavePolicy.UseBothPreferExternal;
      case 4:
        return EDataSavePolicy.UseDefault;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMmcEvent {
  MmcInserted,
  MmcRemoved,
}

extension EMmcEventExtension on EMmcEvent {
  int get id {
    switch (this) {
      case EMmcEvent.MmcInserted:
        return 0;
      case EMmcEvent.MmcRemoved:
        return 1;
      default:
        return -1;
    }
  }

  static EMmcEvent fromId(int id) {
    switch (id) {
      case 0:
        return EMmcEvent.MmcInserted;
      case 1:
        return EMmcEvent.MmcRemoved;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EBackgroundEvent {
  EnterBackground,
  LeaveBackground,
}

extension EBackgroundEventExtension on EBackgroundEvent {
  int get id {
    switch (this) {
      case EBackgroundEvent.EnterBackground:
        return 0;
      case EBackgroundEvent.LeaveBackground:
        return 1;
      default:
        return -1;
    }
  }

  static EBackgroundEvent fromId(int id) {
    switch (id) {
      case 0:
        return EBackgroundEvent.EnterBackground;
      case 1:
        return EBackgroundEvent.LeaveBackground;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ENativeConfiguration {
  NC_Android,
  NC_iOS,
  NC_Linux,
  NC_Win,
  NC_Generic,
}

extension ENativeConfigurationExtension on ENativeConfiguration {
  int get id {
    switch (this) {
      case ENativeConfiguration.NC_Android:
        return 0;
      case ENativeConfiguration.NC_iOS:
        return 1;
      case ENativeConfiguration.NC_Linux:
        return 2;
      case ENativeConfiguration.NC_Win:
        return 3;
      case ENativeConfiguration.NC_Generic:
        return 4;
      default:
        return -1;
    }
  }

  static ENativeConfiguration fromId(int id) {
    switch (id) {
      case 0:
        return ENativeConfiguration.NC_Android;
      case 1:
        return ENativeConfiguration.NC_iOS;
      case 2:
        return ENativeConfiguration.NC_Linux;
      case 3:
        return ENativeConfiguration.NC_Win;
      case 4:
        return ENativeConfiguration.NC_Generic;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESdkCapabilities {
  SC_Offline,
  SC_Search,
  SC_Navigation,
  SC_Mapping,
  SC_Social,
  SC_Adas,
  SC_Content,
  SC_Dashcam,
  SC_Weather,
  SC_Vrp,
  SC_Sense,
  SC_Places,
  SC_Timezone,
  SC_Sound,
  SC_Projection,
  SC_Flutter,
  SC_Images,
}

extension ESdkCapabilitiesExtension on ESdkCapabilities {
  int get id {
    switch (this) {
      case ESdkCapabilities.SC_Offline:
        return 1;
      case ESdkCapabilities.SC_Search:
        return 2;
      case ESdkCapabilities.SC_Navigation:
        return 4;
      case ESdkCapabilities.SC_Mapping:
        return 8;
      case ESdkCapabilities.SC_Social:
        return 16;
      case ESdkCapabilities.SC_Adas:
        return 32;
      case ESdkCapabilities.SC_Content:
        return 64;
      case ESdkCapabilities.SC_Dashcam:
        return 128;
      case ESdkCapabilities.SC_Weather:
        return 256;
      case ESdkCapabilities.SC_Vrp:
        return 512;
      case ESdkCapabilities.SC_Sense:
        return 1024;
      case ESdkCapabilities.SC_Places:
        return 2048;
      case ESdkCapabilities.SC_Timezone:
        return 4096;
      case ESdkCapabilities.SC_Sound:
        return 8192;
      case ESdkCapabilities.SC_Projection:
        return 16384;
      case ESdkCapabilities.SC_Flutter:
        return 32768;
      case ESdkCapabilities.SC_Images:
        return 65536;
      default:
        return -1;
    }
  }

  static ESdkCapabilities fromId(int id) {
    switch (id) {
      case 1:
        return ESdkCapabilities.SC_Offline;
      case 2:
        return ESdkCapabilities.SC_Search;
      case 4:
        return ESdkCapabilities.SC_Navigation;
      case 8:
        return ESdkCapabilities.SC_Mapping;
      case 16:
        return ESdkCapabilities.SC_Social;
      case 32:
        return ESdkCapabilities.SC_Adas;
      case 64:
        return ESdkCapabilities.SC_Content;
      case 128:
        return ESdkCapabilities.SC_Dashcam;
      case 256:
        return ESdkCapabilities.SC_Weather;
      case 512:
        return ESdkCapabilities.SC_Vrp;
      case 1024:
        return ESdkCapabilities.SC_Sense;
      case 2048:
        return ESdkCapabilities.SC_Places;
      case 4096:
        return ESdkCapabilities.SC_Timezone;
      case 8192:
        return ESdkCapabilities.SC_Sound;
      case 16384:
        return ESdkCapabilities.SC_Projection;
      case 32768:
        return ESdkCapabilities.SC_Flutter;
      case 65536:
        return ESdkCapabilities.SC_Images;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EOSExceptionType {
  Generic,
  LowMemory,
  UIException,
}

extension EOSExceptionTypeExtension on EOSExceptionType {
  int get id {
    switch (this) {
      case EOSExceptionType.Generic:
        return 0;
      case EOSExceptionType.LowMemory:
        return 1;
      case EOSExceptionType.UIException:
        return 2;
      default:
        return -1;
    }
  }

  static EOSExceptionType fromId(int id) {
    switch (id) {
      case 0:
        return EOSExceptionType.Generic;
      case 1:
        return EOSExceptionType.LowMemory;
      case 2:
        return EOSExceptionType.UIException;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Sdk {
  SdkVersion? sdkversion;
  EDataSavePolicy? datasavepolicy;
  ENativeConfiguration? nativeconfiguration;
  TransferStatistics? transferstatistics;
  int? capabilities;
  Sdk({
    this.sdkversion,
    this.datasavepolicy,
    this.nativeconfiguration,
    this.transferstatistics,
    this.capabilities,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (sdkversion != null) {
      json['sdkversion'] = sdkversion;
    }
    if (datasavepolicy != null) {
      json['datasavepolicy'] = datasavepolicy!.id;
    }
    if (nativeconfiguration != null) {
      json['nativeconfiguration'] = nativeconfiguration!.id;
    }
    if (transferstatistics != null) {
      json['transferstatistics'] = transferstatistics;
    }
    if (capabilities != null) {
      json['capabilities'] = capabilities;
    }
    return json;
  }

  factory Sdk.fromJson(Map<String, dynamic> json) {
    return Sdk(
      sdkversion: json['sdkversion'],
      datasavepolicy: json['datasavepolicy'],
      nativeconfiguration: json['nativeconfiguration'],
      transferstatistics: json['transferstatistics'],
      capabilities: json['capabilities'],
    );
  }
}
