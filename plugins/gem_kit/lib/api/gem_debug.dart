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
import "gem_calllogger.dart";
import "gem_apilists.dart";
import "gem_progresslistener.dart";
import "gem_time.dart";
import "gem_transferstatistics.dart";
import "gem_exceptions.dart";
import "gem_databuffer.dart";
import "gem_parameters.dart";
import "gem_weather.dart";
import "gem_rendercontext.dart";
import "gem_markers.dart";
import "gem_routingservice.dart";
import "gem_mapview.dart";
import "gem_types.dart";

enum ERoutingAlgoModifiers {
  DisableUFLayer,
  DisableLayering,
  DisableAStar,
  DisableOfflineCalc,
  DisableFallbacks,
}

extension ERoutingAlgoModifiersExtension on ERoutingAlgoModifiers {
  int get id {
    switch (this) {
      case ERoutingAlgoModifiers.DisableUFLayer:
        return 1;
      case ERoutingAlgoModifiers.DisableLayering:
        return 2;
      case ERoutingAlgoModifiers.DisableAStar:
        return 4;
      case ERoutingAlgoModifiers.DisableOfflineCalc:
        return 8;
      case ERoutingAlgoModifiers.DisableFallbacks:
        return 16;
      default:
        return -1;
    }
  }

  static ERoutingAlgoModifiers fromId(int id) {
    switch (id) {
      case 1:
        return ERoutingAlgoModifiers.DisableUFLayer;
      case 2:
        return ERoutingAlgoModifiers.DisableLayering;
      case 4:
        return ERoutingAlgoModifiers.DisableAStar;
      case 8:
        return ERoutingAlgoModifiers.DisableOfflineCalc;
      case 16:
        return ERoutingAlgoModifiers.DisableFallbacks;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ENavigationModifiers {
  NM_InvalidLocation,
  NM_UntrustedLocation,
  NM_InvalidMatchedLink,
  NM_InvalidMatchedRouteLink,
  NM_UnlockUTurn,
}

extension ENavigationModifiersExtension on ENavigationModifiers {
  int get id {
    switch (this) {
      case ENavigationModifiers.NM_InvalidLocation:
        return 1;
      case ENavigationModifiers.NM_UntrustedLocation:
        return 2;
      case ENavigationModifiers.NM_InvalidMatchedLink:
        return 4;
      case ENavigationModifiers.NM_InvalidMatchedRouteLink:
        return 8;
      case ENavigationModifiers.NM_UnlockUTurn:
        return 16;
      default:
        return -1;
    }
  }

  static ENavigationModifiers fromId(int id) {
    switch (id) {
      case 1:
        return ENavigationModifiers.NM_InvalidLocation;
      case 2:
        return ENavigationModifiers.NM_UntrustedLocation;
      case 4:
        return ENavigationModifiers.NM_InvalidMatchedLink;
      case 8:
        return ENavigationModifiers.NM_InvalidMatchedRouteLink;
      case 16:
        return ENavigationModifiers.NM_UnlockUTurn;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ENavigationStateInfo {
  NSI_Uturn,
  NSI_RouteMatch,
}

extension ENavigationStateInfoExtension on ENavigationStateInfo {
  int get id {
    switch (this) {
      case ENavigationStateInfo.NSI_Uturn:
        return 0;
      case ENavigationStateInfo.NSI_RouteMatch:
        return 1;
      default:
        return -1;
    }
  }

  static ENavigationStateInfo fromId(int id) {
    switch (id) {
      case 0:
        return ENavigationStateInfo.NSI_Uturn;
      case 1:
        return ENavigationStateInfo.NSI_RouteMatch;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EDijkstraLinkType {
  DLT_MapLinkFwd,
  DLT_MapLinkBck,
  DLT_UfLinkFwd,
  DLT_UfLinkBck,
}

extension EDijkstraLinkTypeExtension on EDijkstraLinkType {
  int get id {
    switch (this) {
      case EDijkstraLinkType.DLT_MapLinkFwd:
        return 0;
      case EDijkstraLinkType.DLT_MapLinkBck:
        return 1;
      case EDijkstraLinkType.DLT_UfLinkFwd:
        return 2;
      case EDijkstraLinkType.DLT_UfLinkBck:
        return 3;
      default:
        return -1;
    }
  }

  static EDijkstraLinkType fromId(int id) {
    switch (id) {
      case 0:
        return EDijkstraLinkType.DLT_MapLinkFwd;
      case 1:
        return EDijkstraLinkType.DLT_MapLinkBck;
      case 2:
        return EDijkstraLinkType.DLT_UfLinkFwd;
      case 3:
        return EDijkstraLinkType.DLT_UfLinkBck;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETestRerouteStartDirection {
  TRSD_Unspecified,
  TRSD_Both,
  TRSD_Forward,
  TRSD_Backward,
}

extension ETestRerouteStartDirectionExtension on ETestRerouteStartDirection {
  int get id {
    switch (this) {
      case ETestRerouteStartDirection.TRSD_Unspecified:
        return 0;
      case ETestRerouteStartDirection.TRSD_Both:
        return 1;
      case ETestRerouteStartDirection.TRSD_Forward:
        return 2;
      case ETestRerouteStartDirection.TRSD_Backward:
        return 3;
      default:
        return -1;
    }
  }

  static ETestRerouteStartDirection fromId(int id) {
    switch (id) {
      case 0:
        return ETestRerouteStartDirection.TRSD_Unspecified;
      case 1:
        return ETestRerouteStartDirection.TRSD_Both;
      case 2:
        return ETestRerouteStartDirection.TRSD_Forward;
      case 3:
        return ETestRerouteStartDirection.TRSD_Backward;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Debug {
  int? usedmemory;
  int? totalmemory;
  int? freememory;
  int? maxusedmemory;
  List<MountInfo>? appioinfo;
  Version? worldmapver;
  TransferStatistics? dataacquisitiontransferstats;
  TransferStatistics? resourceupdatertransferstats;
  TransferStatistics? statisticstransferstats;
  dynamic? stylebuilderurls;
  int? routingalgomodifiers;
  int? navigationmodifiers;
  Time? authorizationexpiredate;
  dynamic? servicesids;
  Debug({
    this.usedmemory,
    this.totalmemory,
    this.freememory,
    this.maxusedmemory,
    this.appioinfo,
    this.worldmapver,
    this.dataacquisitiontransferstats,
    this.resourceupdatertransferstats,
    this.statisticstransferstats,
    this.stylebuilderurls,
    this.routingalgomodifiers,
    this.navigationmodifiers,
    this.authorizationexpiredate,
    this.servicesids,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (usedmemory != null) {
      json['usedmemory'] = usedmemory;
    }
    if (totalmemory != null) {
      json['totalmemory'] = totalmemory;
    }
    if (freememory != null) {
      json['freememory'] = freememory;
    }
    if (maxusedmemory != null) {
      json['maxusedmemory'] = maxusedmemory;
    }
    if (appioinfo != null) {
      json['appioinfo'] = appioinfo;
    }
    if (worldmapver != null) {
      json['worldmapver'] = worldmapver;
    }
    if (dataacquisitiontransferstats != null) {
      json['dataacquisitiontransferstats'] = dataacquisitiontransferstats;
    }
    if (resourceupdatertransferstats != null) {
      json['resourceupdatertransferstats'] = resourceupdatertransferstats;
    }
    if (statisticstransferstats != null) {
      json['statisticstransferstats'] = statisticstransferstats;
    }
    if (stylebuilderurls != null) {
      json['stylebuilderurls'] = stylebuilderurls;
    }
    if (routingalgomodifiers != null) {
      json['routingalgomodifiers'] = routingalgomodifiers;
    }
    if (navigationmodifiers != null) {
      json['navigationmodifiers'] = navigationmodifiers;
    }
    if (authorizationexpiredate != null) {
      json['authorizationexpiredate'] = authorizationexpiredate;
    }
    if (servicesids != null) {
      json['servicesids'] = servicesids;
    }
    return json;
  }

  factory Debug.fromJson(Map<String, dynamic> json) {
    return Debug(
      usedmemory: json['usedmemory'],
      totalmemory: json['totalmemory'],
      freememory: json['freememory'],
      maxusedmemory: json['maxusedmemory'],
      appioinfo: json['appioinfo'],
      worldmapver: json['worldmapver'],
      dataacquisitiontransferstats: json['dataacquisitiontransferstats'],
      resourceupdatertransferstats: json['resourceupdatertransferstats'],
      statisticstransferstats: json['statisticstransferstats'],
      stylebuilderurls: json['stylebuilderurls'],
      routingalgomodifiers: json['routingalgomodifiers'],
      navigationmodifiers: json['navigationmodifiers'],
      authorizationexpiredate: json['authorizationexpiredate'],
      servicesids: json['servicesids'],
    );
  }
}

class MountInfo {
  String? path;
  int? freeSpace;
  int? totalSpace;
  bool? internalPath;
  bool? onlineCachePath;
  MountInfo({
    this.path,
    this.freeSpace,
    this.totalSpace,
    this.internalPath,
    this.onlineCachePath,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (path != null) {
      json['path'] = path;
    }
    if (freeSpace != null) {
      json['freeSpace'] = freeSpace;
    }
    if (totalSpace != null) {
      json['totalSpace'] = totalSpace;
    }
    if (internalPath != null) {
      json['internalPath'] = internalPath;
    }
    if (onlineCachePath != null) {
      json['onlineCachePath'] = onlineCachePath;
    }
    return json;
  }

  factory MountInfo.fromJson(Map<String, dynamic> json) {
    return MountInfo(
      path: json['path'],
      freeSpace: json['freeSpace'],
      totalSpace: json['totalSpace'],
      internalPath: json['internalPath'],
      onlineCachePath: json['onlineCachePath'],
    );
  }
}
