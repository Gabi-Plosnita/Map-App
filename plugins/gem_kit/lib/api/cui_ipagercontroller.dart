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

enum TPagerListType {
  EOneChapterList,
  EManyChaptersList,
}

extension TPagerListTypeExtension on TPagerListType {
  int get id {
    switch (this) {
      case TPagerListType.EOneChapterList:
        return 0;
      case TPagerListType.EManyChaptersList:
        return 1;
      default:
        return -1;
    }
  }

  static TPagerListType fromId(int id) {
    switch (id) {
      case 0:
        return TPagerListType.EOneChapterList;
      case 1:
        return TPagerListType.EManyChaptersList;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TPagerViewType {
  EHistory,
  EMaps,
  EVoices,
  EMapStyles,
  ERouteDescription,
}

extension TPagerViewTypeExtension on TPagerViewType {
  int get id {
    switch (this) {
      case TPagerViewType.EHistory:
        return 0;
      case TPagerViewType.EMaps:
        return 1;
      case TPagerViewType.EVoices:
        return 2;
      case TPagerViewType.EMapStyles:
        return 3;
      case TPagerViewType.ERouteDescription:
        return 4;
      default:
        return -1;
    }
  }

  static TPagerViewType fromId(int id) {
    switch (id) {
      case 0:
        return TPagerViewType.EHistory;
      case 1:
        return TPagerViewType.EMaps;
      case 2:
        return TPagerViewType.EVoices;
      case 3:
        return TPagerViewType.EMapStyles;
      case 4:
        return TPagerViewType.ERouteDescription;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TPagerEditButtonType {
  EPen,
  EDone,
  ESelectAll,
  EDeselectAll,
  EDelete,
}

extension TPagerEditButtonTypeExtension on TPagerEditButtonType {
  int get id {
    switch (this) {
      case TPagerEditButtonType.EPen:
        return 0;
      case TPagerEditButtonType.EDone:
        return 1;
      case TPagerEditButtonType.ESelectAll:
        return 2;
      case TPagerEditButtonType.EDeselectAll:
        return 3;
      case TPagerEditButtonType.EDelete:
        return 4;
      default:
        return -1;
    }
  }

  static TPagerEditButtonType fromId(int id) {
    switch (id) {
      case 0:
        return TPagerEditButtonType.EPen;
      case 1:
        return TPagerEditButtonType.EDone;
      case 2:
        return TPagerEditButtonType.ESelectAll;
      case 3:
        return TPagerEditButtonType.EDeselectAll;
      case 4:
        return TPagerEditButtonType.EDelete;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TPagerActionType {
  EATDelete,
  EATEdit,
  EATUpload,
  EATCancelUpload,
  EATSave,
  EATRename,
  EATShare,
}

extension TPagerActionTypeExtension on TPagerActionType {
  int get id {
    switch (this) {
      case TPagerActionType.EATDelete:
        return 0;
      case TPagerActionType.EATEdit:
        return 1;
      case TPagerActionType.EATUpload:
        return 2;
      case TPagerActionType.EATCancelUpload:
        return 3;
      case TPagerActionType.EATSave:
        return 4;
      case TPagerActionType.EATRename:
        return 5;
      case TPagerActionType.EATShare:
        return 6;
      default:
        return -1;
    }
  }

  static TPagerActionType fromId(int id) {
    switch (id) {
      case 0:
        return TPagerActionType.EATDelete;
      case 1:
        return TPagerActionType.EATEdit;
      case 2:
        return TPagerActionType.EATUpload;
      case 3:
        return TPagerActionType.EATCancelUpload;
      case 4:
        return TPagerActionType.EATSave;
      case 5:
        return TPagerActionType.EATRename;
      case 6:
        return TPagerActionType.EATShare;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TItemStatusType {
  EUnavailable,
  ECompleted,
  EPaused,
  EDownloadQueued,
  EDownloadWaiting,
  EDownloadWaitingFreeNetwork,
  EDownloadRunning,
  EUpdateWaiting,
  EChecked,
  EDayColors,
  ENightColors,
  EUnknown,
}

extension TItemStatusTypeExtension on TItemStatusType {
  int get id {
    switch (this) {
      case TItemStatusType.EUnavailable:
        return 0;
      case TItemStatusType.ECompleted:
        return 1;
      case TItemStatusType.EPaused:
        return 2;
      case TItemStatusType.EDownloadQueued:
        return 3;
      case TItemStatusType.EDownloadWaiting:
        return 4;
      case TItemStatusType.EDownloadWaitingFreeNetwork:
        return 5;
      case TItemStatusType.EDownloadRunning:
        return 6;
      case TItemStatusType.EUpdateWaiting:
        return 7;
      case TItemStatusType.EChecked:
        return 8;
      case TItemStatusType.EDayColors:
        return 9;
      case TItemStatusType.ENightColors:
        return 10;
      case TItemStatusType.EUnknown:
        return 11;
      default:
        return -1;
    }
  }

  static TItemStatusType fromId(int id) {
    switch (id) {
      case 0:
        return TItemStatusType.EUnavailable;
      case 1:
        return TItemStatusType.ECompleted;
      case 2:
        return TItemStatusType.EPaused;
      case 3:
        return TItemStatusType.EDownloadQueued;
      case 4:
        return TItemStatusType.EDownloadWaiting;
      case 5:
        return TItemStatusType.EDownloadWaitingFreeNetwork;
      case 6:
        return TItemStatusType.EDownloadRunning;
      case 7:
        return TItemStatusType.EUpdateWaiting;
      case 8:
        return TItemStatusType.EChecked;
      case 9:
        return TItemStatusType.EDayColors;
      case 10:
        return TItemStatusType.ENightColors;
      case 11:
        return TItemStatusType.EUnknown;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
