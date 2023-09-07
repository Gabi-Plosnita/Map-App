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

enum TActionType {
  EATDelete,
  EATEdit,
  EATUpload,
  EATCancelUpload,
  EATSave,
  EATRename,
  EATLock,
}

extension TActionTypeExtension on TActionType {
  int get id {
    switch (this) {
      case TActionType.EATDelete:
        return 0;
      case TActionType.EATEdit:
        return 1;
      case TActionType.EATUpload:
        return 2;
      case TActionType.EATCancelUpload:
        return 3;
      case TActionType.EATSave:
        return 4;
      case TActionType.EATRename:
        return 5;
      case TActionType.EATLock:
        return 6;
      default:
        return -1;
    }
  }

  static TActionType fromId(int id) {
    switch (id) {
      case 0:
        return TActionType.EATDelete;
      case 1:
        return TActionType.EATEdit;
      case 2:
        return TActionType.EATUpload;
      case 3:
        return TActionType.EATCancelUpload;
      case 4:
        return TActionType.EATSave;
      case 5:
        return TActionType.EATRename;
      case 6:
        return TActionType.EATLock;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TListType {
  EOneChapterList,
  EManyChaptersList,
}

extension TListTypeExtension on TListType {
  int get id {
    switch (this) {
      case TListType.EOneChapterList:
        return 0;
      case TListType.EManyChaptersList:
        return 1;
      default:
        return -1;
    }
  }

  static TListType fromId(int id) {
    switch (id) {
      case 0:
        return TListType.EOneChapterList;
      case 1:
        return TListType.EManyChaptersList;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TViewType {
  EUnknown,
  EFreeTextSearch,
  EAndroidAutoFreeTextSearch,
  EAndroidAutoFreeTextSearchOnPhone,
  EAndroidAutoFreeTextSearchWithPois,
  EWhatsNearby,
  EPoiCategory,
  EAndroidAutoPoiCategory,
  EPoisCategories,
  EAndroidAutoPoisCategories,
  EPoisGroup,
  EFavourites,
  EAndroidAutoFavouritesMain,
  EAndroidAutoFavouritesFolder,
  EHistory,
  EAndroidAutoHistory,
  EVideoLogs,
  ESetHome,
  ESetWork,
  EHUDOptionsList,
  EAlerts,
  EMapSearchResults,
}

extension TViewTypeExtension on TViewType {
  int get id {
    switch (this) {
      case TViewType.EUnknown:
        return 0;
      case TViewType.EFreeTextSearch:
        return 1;
      case TViewType.EAndroidAutoFreeTextSearch:
        return 2;
      case TViewType.EAndroidAutoFreeTextSearchOnPhone:
        return 3;
      case TViewType.EAndroidAutoFreeTextSearchWithPois:
        return 4;
      case TViewType.EWhatsNearby:
        return 5;
      case TViewType.EPoiCategory:
        return 6;
      case TViewType.EAndroidAutoPoiCategory:
        return 7;
      case TViewType.EPoisCategories:
        return 8;
      case TViewType.EAndroidAutoPoisCategories:
        return 9;
      case TViewType.EPoisGroup:
        return 10;
      case TViewType.EFavourites:
        return 11;
      case TViewType.EAndroidAutoFavouritesMain:
        return 12;
      case TViewType.EAndroidAutoFavouritesFolder:
        return 13;
      case TViewType.EHistory:
        return 14;
      case TViewType.EAndroidAutoHistory:
        return 15;
      case TViewType.EVideoLogs:
        return 16;
      case TViewType.ESetHome:
        return 17;
      case TViewType.ESetWork:
        return 18;
      case TViewType.EHUDOptionsList:
        return 19;
      case TViewType.EAlerts:
        return 20;
      case TViewType.EMapSearchResults:
        return 21;
      default:
        return -1;
    }
  }

  static TViewType fromId(int id) {
    switch (id) {
      case 0:
        return TViewType.EUnknown;
      case 1:
        return TViewType.EFreeTextSearch;
      case 2:
        return TViewType.EAndroidAutoFreeTextSearch;
      case 3:
        return TViewType.EAndroidAutoFreeTextSearchOnPhone;
      case 4:
        return TViewType.EAndroidAutoFreeTextSearchWithPois;
      case 5:
        return TViewType.EWhatsNearby;
      case 6:
        return TViewType.EPoiCategory;
      case 7:
        return TViewType.EAndroidAutoPoiCategory;
      case 8:
        return TViewType.EPoisCategories;
      case 9:
        return TViewType.EAndroidAutoPoisCategories;
      case 10:
        return TViewType.EPoisGroup;
      case 11:
        return TViewType.EFavourites;
      case 12:
        return TViewType.EAndroidAutoFavouritesMain;
      case 13:
        return TViewType.EAndroidAutoFavouritesFolder;
      case 14:
        return TViewType.EHistory;
      case 15:
        return TViewType.EAndroidAutoHistory;
      case 16:
        return TViewType.EVideoLogs;
      case 17:
        return TViewType.ESetHome;
      case 18:
        return TViewType.ESetWork;
      case 19:
        return TViewType.EHUDOptionsList;
      case 20:
        return TViewType.EAlerts;
      case 21:
        return TViewType.EMapSearchResults;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TViewPresentationMode {
  EFullScreenView,
  EResizableView,
  EHorizontalListView,
  EAndroidAutoListView,
}

extension TViewPresentationModeExtension on TViewPresentationMode {
  int get id {
    switch (this) {
      case TViewPresentationMode.EFullScreenView:
        return 0;
      case TViewPresentationMode.EResizableView:
        return 1;
      case TViewPresentationMode.EHorizontalListView:
        return 2;
      case TViewPresentationMode.EAndroidAutoListView:
        return 3;
      default:
        return -1;
    }
  }

  static TViewPresentationMode fromId(int id) {
    switch (id) {
      case 0:
        return TViewPresentationMode.EFullScreenView;
      case 1:
        return TViewPresentationMode.EResizableView;
      case 2:
        return TViewPresentationMode.EHorizontalListView;
      case 3:
        return TViewPresentationMode.EAndroidAutoListView;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum THeaderButtonsDisplayStyle {
  ESpreadEvenly,
  EOneAfterAnother,
}

extension THeaderButtonsDisplayStyleExtension on THeaderButtonsDisplayStyle {
  int get id {
    switch (this) {
      case THeaderButtonsDisplayStyle.ESpreadEvenly:
        return 0;
      case THeaderButtonsDisplayStyle.EOneAfterAnother:
        return 1;
      default:
        return -1;
    }
  }

  static THeaderButtonsDisplayStyle fromId(int id) {
    switch (id) {
      case 0:
        return THeaderButtonsDisplayStyle.ESpreadEvenly;
      case 1:
        return THeaderButtonsDisplayStyle.EOneAfterAnother;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TChapterType {
  EText,
  ESort,
}

extension TChapterTypeExtension on TChapterType {
  int get id {
    switch (this) {
      case TChapterType.EText:
        return 0;
      case TChapterType.ESort:
        return 1;
      default:
        return -1;
    }
  }

  static TChapterType fromId(int id) {
    switch (id) {
      case 0:
        return TChapterType.EText;
      case 1:
        return TChapterType.ESort;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TSortType {
  EByNameAscending,
  EByNameDescending,
  EByTimeAscending,
  EByTimeDescending,
  EByDistanceAscending,
  EByDistanceDescending,
}

extension TSortTypeExtension on TSortType {
  int get id {
    switch (this) {
      case TSortType.EByNameAscending:
        return 0;
      case TSortType.EByNameDescending:
        return 1;
      case TSortType.EByTimeAscending:
        return 2;
      case TSortType.EByTimeDescending:
        return 3;
      case TSortType.EByDistanceAscending:
        return 4;
      case TSortType.EByDistanceDescending:
        return 5;
      default:
        return -1;
    }
  }

  static TSortType fromId(int id) {
    switch (id) {
      case 0:
        return TSortType.EByNameAscending;
      case 1:
        return TSortType.EByNameDescending;
      case 2:
        return TSortType.EByTimeAscending;
      case 3:
        return TSortType.EByTimeDescending;
      case 4:
        return TSortType.EByDistanceAscending;
      case 5:
        return TSortType.EByDistanceDescending;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TEditButtonType {
  EPen,
  EDone,
  ESelectAll,
  EDeselectAll,
  EDelete,
}

extension TEditButtonTypeExtension on TEditButtonType {
  int get id {
    switch (this) {
      case TEditButtonType.EPen:
        return 0;
      case TEditButtonType.EDone:
        return 1;
      case TEditButtonType.ESelectAll:
        return 2;
      case TEditButtonType.EDeselectAll:
        return 3;
      case TEditButtonType.EDelete:
        return 4;
      default:
        return -1;
    }
  }

  static TEditButtonType fromId(int id) {
    switch (id) {
      case 0:
        return TEditButtonType.EPen;
      case 1:
        return TEditButtonType.EDone;
      case 2:
        return TEditButtonType.ESelectAll;
      case 3:
        return TEditButtonType.EDeselectAll;
      case 4:
        return TEditButtonType.EDelete;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TToolbarButton {
  EShowOverMap,
  EShare,
}

extension TToolbarButtonExtension on TToolbarButton {
  int get id {
    switch (this) {
      case TToolbarButton.EShowOverMap:
        return 0;
      case TToolbarButton.EShare:
        return 1;
      default:
        return -1;
    }
  }

  static TToolbarButton fromId(int id) {
    switch (id) {
      case 0:
        return TToolbarButton.EShowOverMap;
      case 1:
        return TToolbarButton.EShare;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
