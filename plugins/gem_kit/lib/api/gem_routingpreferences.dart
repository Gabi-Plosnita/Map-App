// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_timedistancecoordinates.dart";
import 'gem_time.dart';

enum ERouteResultType {
  RRT_Path,
  RRT_Range,
}

extension ERouteResultTypeExtension on ERouteResultType {
  int get id {
    switch (this) {
      case ERouteResultType.RRT_Path:
        return 0;
      case ERouteResultType.RRT_Range:
        return 1;
      default:
        return -1;
    }
  }

  static ERouteResultType fromId(int id) {
    switch (id) {
      case 0:
        return ERouteResultType.RRT_Path;
      case 1:
        return ERouteResultType.RRT_Range;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERouteType {
  RT_Fastest,
  RT_Shortest,
  RT_Economic,
}

extension ERouteTypeExtension on ERouteType {
  int get id {
    switch (this) {
      case ERouteType.RT_Fastest:
        return 0;
      case ERouteType.RT_Shortest:
        return 1;
      case ERouteType.RT_Economic:
        return 2;
      default:
        return -1;
    }
  }

  static ERouteType fromId(int id) {
    switch (id) {
      case 0:
        return ERouteType.RT_Fastest;
      case 1:
        return ERouteType.RT_Shortest;
      case 2:
        return ERouteType.RT_Economic;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERouteTransportMode {
  RTM_Car,
  RTM_Lorry,
  RTM_Pedestrian,
  RTM_Bicycle,
  RTM_Public,
  RTM_Shared_Vehicles,
}

extension ERouteTransportModeExtension on ERouteTransportMode {
  int get id {
    switch (this) {
      case ERouteTransportMode.RTM_Car:
        return 0;
      case ERouteTransportMode.RTM_Lorry:
        return 1;
      case ERouteTransportMode.RTM_Pedestrian:
        return 2;
      case ERouteTransportMode.RTM_Bicycle:
        return 3;
      case ERouteTransportMode.RTM_Public:
        return 4;
      case ERouteTransportMode.RTM_Shared_Vehicles:
        return 5;
      default:
        return -1;
    }
  }

  static ERouteTransportMode fromId(int id) {
    switch (id) {
      case 0:
        return ERouteTransportMode.RTM_Car;
      case 1:
        return ERouteTransportMode.RTM_Lorry;
      case 2:
        return ERouteTransportMode.RTM_Pedestrian;
      case 3:
        return ERouteTransportMode.RTM_Bicycle;
      case 4:
        return ERouteTransportMode.RTM_Public;
      case 5:
        return ERouteTransportMode.RTM_Shared_Vehicles;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETrafficAvoidance {
  TA_None,
  TA_All,
  TA_Roadblocks,
}

extension ETrafficAvoidanceExtension on ETrafficAvoidance {
  int get id {
    switch (this) {
      case ETrafficAvoidance.TA_None:
        return 0;
      case ETrafficAvoidance.TA_All:
        return 1;
      case ETrafficAvoidance.TA_Roadblocks:
        return 2;
      default:
        return -1;
    }
  }

  static ETrafficAvoidance fromId(int id) {
    switch (id) {
      case 0:
        return ETrafficAvoidance.TA_None;
      case 1:
        return ETrafficAvoidance.TA_All;
      case 2:
        return ETrafficAvoidance.TA_Roadblocks;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EPTAlgorithmType {
  PTAT_Departure,
  PTAT_Arrival,
}

extension EPTAlgorithmTypeExtension on EPTAlgorithmType {
  int get id {
    switch (this) {
      case EPTAlgorithmType.PTAT_Departure:
        return 0;
      case EPTAlgorithmType.PTAT_Arrival:
        return 1;
      default:
        return -1;
    }
  }

  static EPTAlgorithmType fromId(int id) {
    switch (id) {
      case 0:
        return EPTAlgorithmType.PTAT_Departure;
      case 1:
        return EPTAlgorithmType.PTAT_Arrival;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EPTSortingStrategy {
  PTSS_Best_Time,
  PTSS_Least_Walk,
  PTSS_Least_Transfers,
}

extension EPTSortingStrategyExtension on EPTSortingStrategy {
  int get id {
    switch (this) {
      case EPTSortingStrategy.PTSS_Best_Time:
        return 0;
      case EPTSortingStrategy.PTSS_Least_Walk:
        return 1;
      case EPTSortingStrategy.PTSS_Least_Transfers:
        return 2;
      default:
        return -1;
    }
  }

  static EPTSortingStrategy fromId(int id) {
    switch (id) {
      case 0:
        return EPTSortingStrategy.PTSS_Best_Time;
      case 1:
        return EPTSortingStrategy.PTSS_Least_Walk;
      case 2:
        return EPTSortingStrategy.PTSS_Least_Transfers;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EPTRouteTypePreference {
  RTP_None,
  RTP_Bus,
  RTP_Underground,
  RTP_Railway,
  RTP_Tram,
  RTP_Water_Transport,
  RTP_Misc,
  RTP_Shared_Bike,
  RTP_Shared_Car,
  RTP_Shared_Scooter,
}

extension EPTRouteTypePreferenceExtension on EPTRouteTypePreference {
  int get id {
    switch (this) {
      case EPTRouteTypePreference.RTP_None:
        return 0;
      case EPTRouteTypePreference.RTP_Bus:
        return 1;
      case EPTRouteTypePreference.RTP_Underground:
        return 2;
      case EPTRouteTypePreference.RTP_Railway:
        return 4;
      case EPTRouteTypePreference.RTP_Tram:
        return 8;
      case EPTRouteTypePreference.RTP_Water_Transport:
        return 16;
      case EPTRouteTypePreference.RTP_Misc:
        return 32;
      case EPTRouteTypePreference.RTP_Shared_Bike:
        return 64;
      case EPTRouteTypePreference.RTP_Shared_Car:
        return 128;
      case EPTRouteTypePreference.RTP_Shared_Scooter:
        return 256;
      default:
        return -1;
    }
  }

  static EPTRouteTypePreference fromId(int id) {
    switch (id) {
      case 0:
        return EPTRouteTypePreference.RTP_None;
      case 1:
        return EPTRouteTypePreference.RTP_Bus;
      case 2:
        return EPTRouteTypePreference.RTP_Underground;
      case 4:
        return EPTRouteTypePreference.RTP_Railway;
      case 8:
        return EPTRouteTypePreference.RTP_Tram;
      case 16:
        return EPTRouteTypePreference.RTP_Water_Transport;
      case 32:
        return EPTRouteTypePreference.RTP_Misc;
      case 64:
        return EPTRouteTypePreference.RTP_Shared_Bike;
      case 128:
        return EPTRouteTypePreference.RTP_Shared_Car;
      case 256:
        return EPTRouteTypePreference.RTP_Shared_Scooter;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESVSortingStrategy {
  SVSS_Best_Time,
  SVSS_Least_Walk,
}

extension ESVSortingStrategyExtension on ESVSortingStrategy {
  int get id {
    switch (this) {
      case ESVSortingStrategy.SVSS_Best_Time:
        return 0;
      case ESVSortingStrategy.SVSS_Least_Walk:
        return 1;
      default:
        return -1;
    }
  }

  static ESVSortingStrategy fromId(int id) {
    switch (id) {
      case 0:
        return ESVSortingStrategy.SVSS_Best_Time;
      case 1:
        return ESVSortingStrategy.SVSS_Least_Walk;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EBikeProfile {
  BP_Road,
  BP_Cross,
  BP_City,
  BP_Mountain,
}

extension EBikeProfileExtension on EBikeProfile {
  int get id {
    switch (this) {
      case EBikeProfile.BP_Road:
        return 0;
      case EBikeProfile.BP_Cross:
        return 1;
      case EBikeProfile.BP_City:
        return 2;
      case EBikeProfile.BP_Mountain:
        return 3;
      default:
        return -1;
    }
  }

  static EBikeProfile fromId(int id) {
    switch (id) {
      case 0:
        return EBikeProfile.BP_Road;
      case 1:
        return EBikeProfile.BP_Cross;
      case 2:
        return EBikeProfile.BP_City;
      case 3:
        return EBikeProfile.BP_Mountain;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EEBikeType {
  EBP_None,
  EBP_Pedelec,
  EBP_PowerOnDemand,
}

extension EEBikeTypeExtension on EEBikeType {
  int get id {
    switch (this) {
      case EEBikeType.EBP_None:
        return 0;
      case EEBikeType.EBP_Pedelec:
        return 1;
      case EEBikeType.EBP_PowerOnDemand:
        return 2;
      default:
        return -1;
    }
  }

  static EEBikeType fromId(int id) {
    switch (id) {
      case 0:
        return EEBikeType.EBP_None;
      case 1:
        return EEBikeType.EBP_Pedelec;
      case 2:
        return EEBikeType.EBP_PowerOnDemand;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EPedestrianProfile {
  PP_Walk,
  PP_Hike,
}

extension EPedestrianProfileExtension on EPedestrianProfile {
  int get id {
    switch (this) {
      case EPedestrianProfile.PP_Walk:
        return 0;
      case EPedestrianProfile.PP_Hike:
        return 1;
      default:
        return -1;
    }
  }

  static EPedestrianProfile fromId(int id) {
    switch (id) {
      case 0:
        return EPedestrianProfile.PP_Walk;
      case 1:
        return EPedestrianProfile.PP_Hike;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERouteResultDetails {
  RD_Full,
  RD_TimeDistance,
  RD_Path,
}

extension ERouteResultDetailsExtension on ERouteResultDetails {
  int get id {
    switch (this) {
      case ERouteResultDetails.RD_Full:
        return 0;
      case ERouteResultDetails.RD_TimeDistance:
        return 1;
      case ERouteResultDetails.RD_Path:
        return 2;
      default:
        return -1;
    }
  }

  static ERouteResultDetails fromId(int id) {
    switch (id) {
      case 0:
        return ERouteResultDetails.RD_Full;
      case 1:
        return ERouteResultDetails.RD_TimeDistance;
      case 2:
        return ERouteResultDetails.RD_Path;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERouteAlternativesSchema {
  AS_Default,
  AS_Never,
  AS_Always,
}

extension ERouteAlternativesSchemaExtension on ERouteAlternativesSchema {
  int get id {
    switch (this) {
      case ERouteAlternativesSchema.AS_Default:
        return 0;
      case ERouteAlternativesSchema.AS_Never:
        return 1;
      case ERouteAlternativesSchema.AS_Always:
        return 2;
      default:
        return -1;
    }
  }

  static ERouteAlternativesSchema fromId(int id) {
    switch (id) {
      case 0:
        return ERouteAlternativesSchema.AS_Default;
      case 1:
        return ERouteAlternativesSchema.AS_Never;
      case 2:
        return ERouteAlternativesSchema.AS_Always;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERoutePathAlgorithm {
  PA_ME,
  PA_ExternalCH,
}

extension ERoutePathAlgorithmExtension on ERoutePathAlgorithm {
  int get id {
    switch (this) {
      case ERoutePathAlgorithm.PA_ME:
        return 0;
      case ERoutePathAlgorithm.PA_ExternalCH:
        return 1;
      default:
        return -1;
    }
  }

  static ERoutePathAlgorithm fromId(int id) {
    switch (id) {
      case 0:
        return ERoutePathAlgorithm.PA_ME;
      case 1:
        return ERoutePathAlgorithm.PA_ExternalCH;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EEmergencyExtraFreedomLevels {
  EEFL_IgnoreCDM,
}

extension EEmergencyExtraFreedomLevelsExtension
    on EEmergencyExtraFreedomLevels {
  int get id {
    switch (this) {
      case EEmergencyExtraFreedomLevels.EEFL_IgnoreCDM:
        return 1;
      default:
        return -1;
    }
  }

  static EEmergencyExtraFreedomLevels fromId(int id) {
    switch (id) {
      case 1:
        return EEmergencyExtraFreedomLevels.EEFL_IgnoreCDM;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class EBikeProfileElectricBikeProfile {
  EBikeProfile? profile;
  ElectricBikeProfile? eprofile;
  EBikeProfileElectricBikeProfile({this.profile, this.eprofile});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (profile != null) {
      json['profile'] = profile!.id;
    }
    if (eprofile != null) {
      json['eprofile'] = eprofile;
    }
    return json;
  }

  factory EBikeProfileElectricBikeProfile.fromJson(Map<String, dynamic> json) {
    return EBikeProfileElectricBikeProfile(
      profile: EBikeProfileExtension.fromId(json['profile']),
      eprofile: json['eprofile'],
    );
  }
}

class BuildTerrainProfile {
  bool? enable;
  double minVariation = -1;
  BuildTerrainProfile({this.enable, this.minVariation = -1});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (enable != null) {
      json['b'] = enable;
    }
    if (enable != null) {
      json['minVariation'] = minVariation;
    }
    return json;
  }

  factory BuildTerrainProfile.fromJson(Map<String, dynamic> json) {
    return BuildTerrainProfile(
        enable: json['b'], minVariation: json['minVariation']);
  }
}

class RoutePreferences {
  bool? avoidmotorways;
  bool? avoidtollroads;
  bool? avoidferries;
  bool? avoidturnaroundinstruction;
  bool? avoidunpavedroads;
  bool? avoidcarpoollanes;
  ERouteResultType? routeresulttype;
  ERouteType? routetype;
  ERouteTransportMode? transportmode;
  EPTAlgorithmType? algorithmtype;
  EPTSortingStrategy? sortingstrategy;
  ESVSortingStrategy? svsortingstrategy;
  Time? timestamp;
  bool? usewheelchair;
  bool? usebikes;
  int? minimumtransfertimeinminutes;
  int? maximumtransfertimeinminutes;
  int? maximumwalkdistance;
  ETrafficAvoidance? avoidtraffic;
  bool? alternativeroutesbalancedsorting;
  int? routetypepreferences;
  dynamic? routegroupidsearlierlater;
  BuildTerrainProfile? buildterrainprofile;
  EBikeProfileElectricBikeProfile? bikeprofile;
  ElectricBikeProfile? defaultebikeprofile;
  double? avoidbikinghillfactor;
  EPedestrianProfile? pedestrianprofile;
  dynamic? routeranges;
  int? routerangesquality;
  ERouteResultDetails? resultdetails;
  ERouteAlternativesSchema? alternativesschema;
  bool? maximumdistanceconstraint;
  bool? ignorerestrictionsovertrack;
  bool? stricttrackfollow;
  bool? accuratetrackmatch;
  bool? emergencyvehiclemode;
  bool? emergencyvehicleextrafreedomlevels;
  ERoutePathAlgorithm? pathalgorithm;
  bool? usecustomwaypointimages;
  RoutePreferences({
    this.avoidmotorways,
    this.avoidtollroads,
    this.avoidferries,
    this.avoidturnaroundinstruction,
    this.avoidunpavedroads,
    this.avoidcarpoollanes,
    this.routeresulttype,
    this.routetype,
    this.transportmode,
    this.algorithmtype,
    this.sortingstrategy,
    this.svsortingstrategy,
    this.timestamp,
    this.usewheelchair,
    this.usebikes,
    this.minimumtransfertimeinminutes,
    this.maximumtransfertimeinminutes,
    this.maximumwalkdistance,
    this.avoidtraffic,
    this.alternativeroutesbalancedsorting,
    this.routetypepreferences,
    this.routegroupidsearlierlater,
    this.buildterrainprofile,
    this.bikeprofile,
    this.defaultebikeprofile,
    this.avoidbikinghillfactor,
    this.pedestrianprofile,
    this.routeranges,
    this.routerangesquality,
    this.resultdetails,
    this.alternativesschema,
    this.maximumdistanceconstraint,
    this.ignorerestrictionsovertrack,
    this.stricttrackfollow,
    this.accuratetrackmatch,
    this.emergencyvehiclemode,
    this.emergencyvehicleextrafreedomlevels,
    this.pathalgorithm,
    this.usecustomwaypointimages,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (avoidmotorways != null) {
      json['avoidmotorways'] = avoidmotorways;
    }
    if (avoidtollroads != null) {
      json['avoidtollroads'] = avoidtollroads;
    }
    if (avoidferries != null) {
      json['avoidferries'] = avoidferries;
    }
    if (avoidturnaroundinstruction != null) {
      json['avoidturnaroundinstruction'] = avoidturnaroundinstruction;
    }
    if (avoidunpavedroads != null) {
      json['avoidunpavedroads'] = avoidunpavedroads;
    }
    if (avoidcarpoollanes != null) {
      json['avoidcarpoollanes'] = avoidcarpoollanes;
    }
    if (routeresulttype != null) {
      json['routeresulttype'] = routeresulttype!.id;
    }
    if (routetype != null) {
      json['routetype'] = routetype!.id;
    }
    if (transportmode != null) {
      json['transportmode'] = transportmode!.id;
    }
    if (algorithmtype != null) {
      json['algorithmtype'] = algorithmtype!.id;
    }
    if (sortingstrategy != null) {
      json['sortingstrategy'] = sortingstrategy!.id;
    }
    if (svsortingstrategy != null) {
      json['svsortingstrategy'] = svsortingstrategy!.id;
    }
    if (timestamp != null) {
      json['timestamp'] = timestamp;
    }
    if (usewheelchair != null) {
      json['usewheelchair'] = usewheelchair;
    }
    if (usebikes != null) {
      json['usebikes'] = usebikes;
    }
    if (minimumtransfertimeinminutes != null) {
      json['minimumtransfertimeinminutes'] = minimumtransfertimeinminutes;
    }
    if (maximumtransfertimeinminutes != null) {
      json['maximumtransfertimeinminutes'] = maximumtransfertimeinminutes;
    }
    if (maximumwalkdistance != null) {
      json['maximumwalkdistance'] = maximumwalkdistance;
    }
    if (avoidtraffic != null) {
      json['avoidtraffic'] = avoidtraffic!.id;
    }
    if (alternativeroutesbalancedsorting != null) {
      json['alternativeroutesbalancedsorting'] =
          alternativeroutesbalancedsorting;
    }
    if (routetypepreferences != null) {
      json['routetypepreferences'] = routetypepreferences;
    }
    if (routegroupidsearlierlater != null) {
      json['routegroupidsearlierlater'] = routegroupidsearlierlater;
    }
    if (buildterrainprofile != null) {
      json['buildterrainprofile'] = buildterrainprofile;
    }
    if (bikeprofile != null) {
      json['bikeprofile'] = bikeprofile;
    }
    if (defaultebikeprofile != null) {
      json['defaultebikeprofile'] = defaultebikeprofile;
    }
    if (avoidbikinghillfactor != null) {
      json['avoidbikinghillfactor'] = avoidbikinghillfactor;
    }
    if (pedestrianprofile != null) {
      json['pedestrianprofile'] = pedestrianprofile!.id;
    }
    if (routeranges != null) {
      json['routeranges'] = routeranges;
    }
    if (routerangesquality != null) {
      json['routerangesquality'] = routerangesquality;
    }
    if (resultdetails != null) {
      json['resultdetails'] = resultdetails!.id;
    }
    if (alternativesschema != null) {
      json['alternativesschema'] = alternativesschema!.id;
    }
    if (maximumdistanceconstraint != null) {
      json['maximumdistanceconstraint'] = maximumdistanceconstraint;
    }
    if (ignorerestrictionsovertrack != null) {
      json['ignorerestrictionsovertrack'] = ignorerestrictionsovertrack;
    }
    if (stricttrackfollow != null) {
      json['stricttrackfollow'] = stricttrackfollow;
    }
    if (accuratetrackmatch != null) {
      json['accuratetrackmatch'] = accuratetrackmatch;
    }
    if (emergencyvehiclemode != null) {
      json['emergencyvehiclemode'] = emergencyvehiclemode;
    }
    if (emergencyvehicleextrafreedomlevels != null) {
      json['emergencyvehicleextrafreedomlevels'] =
          emergencyvehicleextrafreedomlevels;
    }
    if (pathalgorithm != null) {
      json['pathalgorithm'] = pathalgorithm!.id;
    }
    if (usecustomwaypointimages != null) {
      json['usecustomwaypointimages'] = usecustomwaypointimages;
    }
    return json;
  }

  factory RoutePreferences.fromJson(Map<String, dynamic> json) {
    return RoutePreferences(
      avoidmotorways: json['avoidmotorways'],
      avoidtollroads: json['avoidtollroads'],
      avoidferries: json['avoidferries'],
      avoidturnaroundinstruction: json['avoidturnaroundinstruction'],
      avoidunpavedroads: json['avoidunpavedroads'],
      avoidcarpoollanes: json['avoidcarpoollanes'],
      routeresulttype: json['routeresulttype'],
      routetype: json['routetype'],
      transportmode: json['transportmode'],
      algorithmtype: json['algorithmtype'],
      sortingstrategy: json['sortingstrategy'],
      svsortingstrategy: json['svsortingstrategy'],
      timestamp: json['timestamp'],
      usewheelchair: json['usewheelchair'],
      usebikes: json['usebikes'],
      minimumtransfertimeinminutes: json['minimumtransfertimeinminutes'],
      maximumtransfertimeinminutes: json['maximumtransfertimeinminutes'],
      maximumwalkdistance: json['maximumwalkdistance'],
      avoidtraffic: json['avoidtraffic'],
      alternativeroutesbalancedsorting:
          json['alternativeroutesbalancedsorting'],
      routetypepreferences: json['routetypepreferences'],
      routegroupidsearlierlater: json['routegroupidsearlierlater'],
      buildterrainprofile: json['buildterrainprofile'],
      bikeprofile: json['bikeprofile'],
      defaultebikeprofile: json['defaultebikeprofile'],
      avoidbikinghillfactor: json['avoidbikinghillfactor'],
      pedestrianprofile: json['pedestrianprofile'],
      routeranges: json['routeranges'],
      routerangesquality: json['routerangesquality'],
      resultdetails: json['resultdetails'],
      alternativesschema: json['alternativesschema'],
      maximumdistanceconstraint: json['maximumdistanceconstraint'],
      ignorerestrictionsovertrack: json['ignorerestrictionsovertrack'],
      stricttrackfollow: json['stricttrackfollow'],
      accuratetrackmatch: json['accuratetrackmatch'],
      emergencyvehiclemode: json['emergencyvehiclemode'],
      emergencyvehicleextrafreedomlevels:
          json['emergencyvehicleextrafreedomlevels'],
      pathalgorithm: json['pathalgorithm'],
      usecustomwaypointimages: json['usecustomwaypointimages'],
    );
  }
}

class ElectricBikeProfile {
  EEBikeType type;
  double bikeMass;
  double bikerMass;
  double auxConsumptionDay;
  double auxConsumptionNight;
  ElectricBikeProfile({
    this.type = EEBikeType.EBP_Pedelec,
    this.bikeMass = 0.0,
    this.bikerMass = 0.0,
    this.auxConsumptionDay = 0.0,
    this.auxConsumptionNight = 0.0,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (type != null) {
      json['type'] = type!.id;
    }
    if (bikeMass != null) {
      json['bikeMass'] = bikeMass;
    }
    if (bikerMass != null) {
      json['bikerMass'] = bikerMass;
    }
    if (auxConsumptionDay != null) {
      json['auxConsumptionDay'] = auxConsumptionDay;
    }
    if (auxConsumptionNight != null) {
      json['auxConsumptionNight'] = auxConsumptionNight;
    }
    return json;
  }

  factory ElectricBikeProfile.fromJson(Map<String, dynamic> json) {
    return ElectricBikeProfile(
      type: json['type'],
      bikeMass: json['bikeMass'],
      bikerMass: json['bikerMass'],
      auxConsumptionDay: json['auxConsumptionDay'],
      auxConsumptionNight: json['auxConsumptionNight'],
    );
  }
}

class TruckProfile {
  int mass;
  int height;
  int length;
  int width;
  int axleLoad;
  double? maxSpeed;
  TruckProfile({
    this.mass = 0,
    this.height = 0,
    this.length = 0,
    this.width = 0,
    this.axleLoad = 0,
    this.maxSpeed,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (mass != null) {
      json['mass'] = mass;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (length != null) {
      json['length'] = length;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (axleLoad != null) {
      json['axleLoad'] = axleLoad;
    }
    if (maxSpeed != null) {
      json['maxSpeed'] = maxSpeed;
    }
    return json;
  }

  factory TruckProfile.fromJson(Map<String, dynamic> json) {
    return TruckProfile(
      mass: json['mass'],
      height: json['height'],
      length: json['length'],
      width: json['width'],
      axleLoad: json['axleLoad'],
      maxSpeed: json['maxSpeed'],
    );
  }
}
