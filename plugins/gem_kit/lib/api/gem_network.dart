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
import "gem_string.dart";

enum ENetworkType {
  Free,
  ExtraCharged,
}

extension ENetworkTypeExtension on ENetworkType {
  int get id {
    switch (this) {
      case ENetworkType.Free:
        return 0;
      case ENetworkType.ExtraCharged:
        return 1;
      default:
        return -1;
    }
  }

  static ENetworkType fromId(int id) {
    switch (id) {
      case 0:
        return ENetworkType.Free;
      case 1:
        return ENetworkType.ExtraCharged;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EProxyType {
  Direct,
  Http,
  Socks,
  Https,
}

extension EProxyTypeExtension on EProxyType {
  int get id {
    switch (this) {
      case EProxyType.Direct:
        return 0;
      case EProxyType.Http:
        return 1;
      case EProxyType.Socks:
        return 2;
      case EProxyType.Https:
        return 3;
      default:
        return -1;
    }
  }

  static EProxyType fromId(int id) {
    switch (id) {
      case 0:
        return EProxyType.Direct;
      case 1:
        return EProxyType.Http;
      case 2:
        return EProxyType.Socks;
      case 3:
        return EProxyType.Https;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class ProxyDetails {
  EProxyType proxyType;
  String? proxyName;
  int? proxyPort;
  ProxyDetails({
    this.proxyType = EProxyType.Direct,
    this.proxyName,
    this.proxyPort,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (proxyType != null) {
      json['proxyType'] = proxyType!.id;
    }
    if (proxyName != null) {
      json['proxyName'] = proxyName;
    }
    if (proxyPort != null) {
      json['proxyPort'] = proxyPort;
    }
    return json;
  }

  factory ProxyDetails.fromJson(Map<String, dynamic> json) {
    return ProxyDetails(
      proxyType: json['proxyType'],
      proxyName: json['proxyName'],
      proxyPort: json['proxyPort'],
    );
  }
}
