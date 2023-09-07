// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_contentstoreitem.dart";

enum EContentUpdaterStatus {
  Idle,
  WaitConnection,
  WaitWIFIConnection,
  CheckForUpdate,
  Download,
  FullyReady,
  PartiallyReady,
  DownloadRemainingContent,
  DownloadPendingContent,
  Complete,
  Error,
}

extension EContentUpdaterStatusExtension on EContentUpdaterStatus {
  int get id {
    switch (this) {
      case EContentUpdaterStatus.Idle:
        return 0;
      case EContentUpdaterStatus.WaitConnection:
        return 1;
      case EContentUpdaterStatus.WaitWIFIConnection:
        return 2;
      case EContentUpdaterStatus.CheckForUpdate:
        return 3;
      case EContentUpdaterStatus.Download:
        return 4;
      case EContentUpdaterStatus.FullyReady:
        return 5;
      case EContentUpdaterStatus.PartiallyReady:
        return 6;
      case EContentUpdaterStatus.DownloadRemainingContent:
        return 7;
      case EContentUpdaterStatus.DownloadPendingContent:
        return 8;
      case EContentUpdaterStatus.Complete:
        return 9;
      case EContentUpdaterStatus.Error:
        return 10;
      default:
        return -1;
    }
  }

  static EContentUpdaterStatus fromId(int id) {
    switch (id) {
      case 0:
        return EContentUpdaterStatus.Idle;
      case 1:
        return EContentUpdaterStatus.WaitConnection;
      case 2:
        return EContentUpdaterStatus.WaitWIFIConnection;
      case 3:
        return EContentUpdaterStatus.CheckForUpdate;
      case 4:
        return EContentUpdaterStatus.Download;
      case 5:
        return EContentUpdaterStatus.FullyReady;
      case 6:
        return EContentUpdaterStatus.PartiallyReady;
      case 7:
        return EContentUpdaterStatus.DownloadRemainingContent;
      case 8:
        return EContentUpdaterStatus.DownloadPendingContent;
      case 9:
        return EContentUpdaterStatus.Complete;
      case 10:
        return EContentUpdaterStatus.Error;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class ContentUpdater {
  ContentStoreItemList? items;
  int? contenttype;
  EContentUpdaterStatus? status;
  int? progress;
  ContentUpdater({
    this.items,
    this.contenttype,
    this.status,
    this.progress,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (items != null) {
      json['items'] = items;
    }
    if (contenttype != null) {
      json['contenttype'] = contenttype;
    }
    if (status != null) {
      json['status'] = status!.id;
    }
    if (progress != null) {
      json['progress'] = progress;
    }
    return json;
  }

  factory ContentUpdater.fromJson(Map<String, dynamic> json) {
    return ContentUpdater(
      items: json['items'],
      contenttype: json['contenttype'],
      status: json['status'],
      progress: json['progress'],
    );
  }
}
