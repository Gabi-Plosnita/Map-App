// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "dart:typed_data";

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_coordinates.dart";
import "gem_progresslistener.dart";
import "gem_images.dart";
import "gem_parameters.dart";
import "gem_types.dart";

class OverlayCategoryList {}

enum ECommonOverlayId {
  OID_Safety,
  OID_PublicTransport,
  OID_SocialLabels,
  OID_SocialReports,
}

extension ECommonOverlayIdExtension on ECommonOverlayId {
  int get id {
    switch (this) {
      case ECommonOverlayId.OID_Safety:
        return 33024;
      case ECommonOverlayId.OID_PublicTransport:
        return 3076010;
      case ECommonOverlayId.OID_SocialLabels:
        return 41472;
      case ECommonOverlayId.OID_SocialReports:
        return 41728;
      default:
        return -1;
    }
  }

  static ECommonOverlayId fromId(int id) {
    switch (id) {
      case 33024:
        return ECommonOverlayId.OID_Safety;
      case 3076010:
        return ECommonOverlayId.OID_PublicTransport;
      case 41472:
        return ECommonOverlayId.OID_SocialLabels;
      case 41728:
        return ECommonOverlayId.OID_SocialReports;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EPreviewDataType {
  Json,
}

extension EPreviewDataTypeExtension on EPreviewDataType {
  int get id {
    switch (this) {
      case EPreviewDataType.Json:
        return 0;
      default:
        return -1;
    }
  }

  static EPreviewDataType fromId(int id) {
    switch (id) {
      case 0:
        return EPreviewDataType.Json;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class OverlayCategory {
  int? uid;
  int? overlayuid;
  String? name;
  Uint8List? image;
  OverlayCategoryList? subcategories;
  OverlayCategory({
    this.uid,
    this.overlayuid,
    this.name,
    this.image,
    this.subcategories,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (uid != null) {
      json['uid'] = uid;
    }
    if (overlayuid != null) {
      json['overlayuid'] = overlayuid;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (image != null) {
      json['image'] = image;
    }
    if (subcategories != null) {
      json['subcategories'] = subcategories;
    }
    return json;
  }

  factory OverlayCategory.fromJson(Map<String, dynamic> json) {
    return OverlayCategory(
      uid: json['uid'],
      overlayuid: json['overlayuid'],
      name: json['name'],
      image: json['image'],
      subcategories: json['subcategories'],
    );
  }
}

class OverlayInfo {
  int? uid;
  String? name;
  Uint8List? image;
  OverlayCategoryList? categories;
  OverlayInfo({
    this.uid,
    this.name,
    this.image,
    this.categories,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (uid != null) {
      json['uid'] = uid;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (image != null) {
      json['image'] = image;
    }
    if (categories != null) {
      json['categories'] = categories;
    }
    return json;
  }

  factory OverlayInfo.fromJson(Map<String, dynamic> json) {
    return OverlayInfo(
      uid: json['uid'],
      name: json['name'],
      image: json['image'],
      categories: json['categories'],
    );
  }
}

class OverlayItem {
  int? uid;
  OverlayInfo? overlayinfo;
  int? overlayuid;
  Coordinates? coordinates;
  String? name;
  Uint8List? image;
  SearchableParameterList? previewdata;
  int? categoryid;
  OverlayItem({
    this.uid,
    this.overlayinfo,
    this.overlayuid,
    this.coordinates,
    this.name,
    this.image,
    this.previewdata,
    this.categoryid,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (uid != null) {
      json['uid'] = uid;
    }
    if (overlayinfo != null) {
      json['overlayinfo'] = overlayinfo;
    }
    if (overlayuid != null) {
      json['overlayuid'] = overlayuid;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (image != null) {
      json['image'] = image;
    }
    if (previewdata != null) {
      json['previewdata'] = previewdata;
    }
    if (categoryid != null) {
      json['categoryid'] = categoryid;
    }
    return json;
  }

  factory OverlayItem.fromJson(Map<String, dynamic> json) {
    return OverlayItem(
      uid: json['uid'],
      overlayinfo: json['overlayinfo'],
      overlayuid: json['overlayuid'],
      coordinates: json['coordinates'],
      name: json['name'],
      image: json['image'],
      previewdata: json['previewdata'],
      categoryid: json['categoryid'],
    );
  }
}

class OverlayItemPosition {
  OverlayItem? overlayitem;
  int? distance;
  OverlayItemPosition({
    this.overlayitem,
    this.distance,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (overlayitem != null) {
      json['overlayitem'] = overlayitem;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    return json;
  }

  factory OverlayItemPosition.fromJson(Map<String, dynamic> json) {
    return OverlayItemPosition(
      overlayitem: json['overlayitem'],
      distance: json['distance'],
    );
  }
}

class OverlayRenderSettings {
  bool externalRendering;
  OverlayRenderSettings({
    this.externalRendering = false,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (externalRendering != null) {
      json['externalRendering'] = externalRendering;
    }
    return json;
  }

  factory OverlayRenderSettings.fromJson(Map<String, dynamic> json) {
    return OverlayRenderSettings(
      externalRendering: json['externalRendering'],
    );
  }
}

class OverlayItemCustomRenderData {
  OverlayItem? item;
  int? groupCount;
  OverlayItemCustomRenderData({
    this.item,
    this.groupCount,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (item != null) {
      json['item'] = item;
    }
    if (groupCount != null) {
      json['groupCount'] = groupCount;
    }
    return json;
  }

  factory OverlayItemCustomRenderData.fromJson(Map<String, dynamic> json) {
    return OverlayItemCustomRenderData(
      item: json['item'],
      groupCount: json['groupCount'],
    );
  }
}
