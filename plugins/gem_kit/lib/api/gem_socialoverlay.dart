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
import "gem_progresslistener.dart";
import "gem_overlays.dart";
import "gem_landmark.dart";
import "gem_routingservice.dart";
import "gem_transferstatistics.dart";
import "gem_position.dart";

enum ESocialReportCategory {
  SRC_SpeedCamera,
}

class SearchableParameterList {}

class SocialReportsOverlayCategoryList {}

class SocialReportsOverlayInfo {}

extension ESocialReportCategoryExtension on ESocialReportCategory {
  int get id {
    switch (this) {
      case ESocialReportCategory.SRC_SpeedCamera:
        return 512;
      default:
        return -1;
    }
  }

  static ESocialReportCategory fromId(int id) {
    switch (id) {
      case 512:
        return ESocialReportCategory.SRC_SpeedCamera;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class SocialReportsOverlayCategory {
  SearchableParameterList? parameters;
  String? country;
  SocialReportsOverlayCategoryList? subcategories;
  SocialReportsOverlayCategory({
    this.parameters,
    this.country,
    this.subcategories,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (parameters != null) {
      json['parameters'] = parameters;
    }
    if (country != null) {
      json['country'] = country;
    }
    if (subcategories != null) {
      json['subcategories'] = subcategories;
    }
    return json;
  }

  factory SocialReportsOverlayCategory.fromJson(Map<String, dynamic> json) {
    return SocialReportsOverlayCategory(
      parameters: json['parameters'],
      country: json['country'],
      subcategories: json['subcategories'],
    );
  }
}

class SocialLabelsOverlayInfo {
  int? loginuseruid;
  String? loginusername;
  SocialLabelsOverlayInfo({
    this.loginuseruid,
    this.loginusername,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (loginuseruid != null) {
      json['loginuseruid'] = loginuseruid;
    }
    if (loginusername != null) {
      json['loginusername'] = loginusername;
    }
    return json;
  }

  factory SocialLabelsOverlayInfo.fromJson(Map<String, dynamic> json) {
    return SocialLabelsOverlayInfo(
      loginuseruid: json['loginuseruid'],
      loginusername: json['loginusername'],
    );
  }
}

class SocialOverlay {
  SocialReportsOverlayInfo? reportsoverlayinfo;
  SocialLabelsOverlayInfo? labelsoverlayinfo;
  TransferStatistics? transferstatistics;
  SocialOverlay({
    this.reportsoverlayinfo,
    this.labelsoverlayinfo,
    this.transferstatistics,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (reportsoverlayinfo != null) {
      json['reportsoverlayinfo'] = reportsoverlayinfo;
    }
    if (labelsoverlayinfo != null) {
      json['labelsoverlayinfo'] = labelsoverlayinfo;
    }
    if (transferstatistics != null) {
      json['transferstatistics'] = transferstatistics;
    }
    return json;
  }

  factory SocialOverlay.fromJson(Map<String, dynamic> json) {
    return SocialOverlay(
      reportsoverlayinfo: json['reportsoverlayinfo'],
      labelsoverlayinfo: json['labelsoverlayinfo'],
      transferstatistics: json['transferstatistics'],
    );
  }
}
