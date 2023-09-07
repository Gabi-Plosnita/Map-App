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
import "gem_mapviewpreferences.dart";
import "gem_string.dart";
import "gem_keyboard.dart";

enum TMapButtonType {
  ECancelRouting,
  ECloseLocationDetails,
  EGoToGpsPosition,
  ESelectDepartureWaypoint,
  ESelectIntermediateWaypoint,
  ESelectDestinationWaypoint,
  ERemoveLandmarksGroup,
  ERemovePolyline,
  EMicrophoneOff,
  EMicrophoneOn,
  EToggleMapCamera,
  ENext,
  EPrevious,
  ETouchAdas,
  EExitPlaybackMode,
  EReportSocialEvent,
  EShareRoute,
  ESaveRecording,
  EStartRecording,
  EStopRecording,
  EStartDriverAssistance,
  EStopDriverAssistance,
  EPanLeft,
  EPanRight,
  EPanUp,
  EPanDown,
  EZoomIn,
  EZoomOut,
  E2D,
  E3D,
  ESelectRoute,
}

extension TMapButtonTypeExtension on TMapButtonType {
  int get id {
    switch (this) {
      case TMapButtonType.ECancelRouting:
        return 0;
      case TMapButtonType.ECloseLocationDetails:
        return 1;
      case TMapButtonType.EGoToGpsPosition:
        return 2;
      case TMapButtonType.ESelectDepartureWaypoint:
        return 3;
      case TMapButtonType.ESelectIntermediateWaypoint:
        return 4;
      case TMapButtonType.ESelectDestinationWaypoint:
        return 5;
      case TMapButtonType.ERemoveLandmarksGroup:
        return 6;
      case TMapButtonType.ERemovePolyline:
        return 7;
      case TMapButtonType.EMicrophoneOff:
        return 8;
      case TMapButtonType.EMicrophoneOn:
        return 9;
      case TMapButtonType.EToggleMapCamera:
        return 10;
      case TMapButtonType.ENext:
        return 11;
      case TMapButtonType.EPrevious:
        return 12;
      case TMapButtonType.ETouchAdas:
        return 13;
      case TMapButtonType.EExitPlaybackMode:
        return 14;
      case TMapButtonType.EReportSocialEvent:
        return 15;
      case TMapButtonType.EShareRoute:
        return 16;
      case TMapButtonType.ESaveRecording:
        return 17;
      case TMapButtonType.EStartRecording:
        return 18;
      case TMapButtonType.EStopRecording:
        return 19;
      case TMapButtonType.EStartDriverAssistance:
        return 20;
      case TMapButtonType.EStopDriverAssistance:
        return 21;
      case TMapButtonType.EPanLeft:
        return 22;
      case TMapButtonType.EPanRight:
        return 23;
      case TMapButtonType.EPanUp:
        return 24;
      case TMapButtonType.EPanDown:
        return 25;
      case TMapButtonType.EZoomIn:
        return 26;
      case TMapButtonType.EZoomOut:
        return 27;
      case TMapButtonType.E2D:
        return 28;
      case TMapButtonType.E3D:
        return 29;
      case TMapButtonType.ESelectRoute:
        return 30;
      default:
        return -1;
    }
  }

  static TMapButtonType fromId(int id) {
    switch (id) {
      case 0:
        return TMapButtonType.ECancelRouting;
      case 1:
        return TMapButtonType.ECloseLocationDetails;
      case 2:
        return TMapButtonType.EGoToGpsPosition;
      case 3:
        return TMapButtonType.ESelectDepartureWaypoint;
      case 4:
        return TMapButtonType.ESelectIntermediateWaypoint;
      case 5:
        return TMapButtonType.ESelectDestinationWaypoint;
      case 6:
        return TMapButtonType.ERemoveLandmarksGroup;
      case 7:
        return TMapButtonType.ERemovePolyline;
      case 8:
        return TMapButtonType.EMicrophoneOff;
      case 9:
        return TMapButtonType.EMicrophoneOn;
      case 10:
        return TMapButtonType.EToggleMapCamera;
      case 11:
        return TMapButtonType.ENext;
      case 12:
        return TMapButtonType.EPrevious;
      case 13:
        return TMapButtonType.ETouchAdas;
      case 14:
        return TMapButtonType.EExitPlaybackMode;
      case 15:
        return TMapButtonType.EReportSocialEvent;
      case 16:
        return TMapButtonType.EShareRoute;
      case 17:
        return TMapButtonType.ESaveRecording;
      case 18:
        return TMapButtonType.EStartRecording;
      case 19:
        return TMapButtonType.EStopRecording;
      case 20:
        return TMapButtonType.EStartDriverAssistance;
      case 21:
        return TMapButtonType.EStopDriverAssistance;
      case 22:
        return TMapButtonType.EPanLeft;
      case 23:
        return TMapButtonType.EPanRight;
      case 24:
        return TMapButtonType.EPanUp;
      case 25:
        return TMapButtonType.EPanDown;
      case 26:
        return TMapButtonType.EZoomIn;
      case 27:
        return TMapButtonType.EZoomOut;
      case 28:
        return TMapButtonType.E2D;
      case 29:
        return TMapButtonType.E3D;
      case 30:
        return TMapButtonType.ESelectRoute;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TMapButtonPosition {
  EBottomLeft,
  EBottomRight,
  ECenter,
  ECenterLeft,
  ECenterLeftDown,
  ECenterLeftUp,
  ECenterRight,
  ECenterRightDown,
  ECenterRightUp,
}

extension TMapButtonPositionExtension on TMapButtonPosition {
  int get id {
    switch (this) {
      case TMapButtonPosition.EBottomLeft:
        return 0;
      case TMapButtonPosition.EBottomRight:
        return 1;
      case TMapButtonPosition.ECenter:
        return 2;
      case TMapButtonPosition.ECenterLeft:
        return 3;
      case TMapButtonPosition.ECenterLeftDown:
        return 4;
      case TMapButtonPosition.ECenterLeftUp:
        return 5;
      case TMapButtonPosition.ECenterRight:
        return 6;
      case TMapButtonPosition.ECenterRightDown:
        return 7;
      case TMapButtonPosition.ECenterRightUp:
        return 8;
      default:
        return -1;
    }
  }

  static TMapButtonPosition fromId(int id) {
    switch (id) {
      case 0:
        return TMapButtonPosition.EBottomLeft;
      case 1:
        return TMapButtonPosition.EBottomRight;
      case 2:
        return TMapButtonPosition.ECenter;
      case 3:
        return TMapButtonPosition.ECenterLeft;
      case 4:
        return TMapButtonPosition.ECenterLeftDown;
      case 5:
        return TMapButtonPosition.ECenterLeftUp;
      case 6:
        return TMapButtonPosition.ECenterRight;
      case 7:
        return TMapButtonPosition.ECenterRightDown;
      case 8:
        return TMapButtonPosition.ECenterRightUp;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TPermissionType {
  EGps,
  EHighAccuracyGps,
  ECamera,
  EMicrophone,
  ESaveToGallery,
  ECameraAndMicrophone,
  EReadContacts,
  EWriteContacts,
  EBluetoothConnect,
  EReadPhoneState,
  EPostNotifications,
}

extension TPermissionTypeExtension on TPermissionType {
  int get id {
    switch (this) {
      case TPermissionType.EGps:
        return 0;
      case TPermissionType.EHighAccuracyGps:
        return 1;
      case TPermissionType.ECamera:
        return 2;
      case TPermissionType.EMicrophone:
        return 3;
      case TPermissionType.ESaveToGallery:
        return 4;
      case TPermissionType.ECameraAndMicrophone:
        return 5;
      case TPermissionType.EReadContacts:
        return 6;
      case TPermissionType.EWriteContacts:
        return 7;
      case TPermissionType.EBluetoothConnect:
        return 8;
      case TPermissionType.EReadPhoneState:
        return 9;
      case TPermissionType.EPostNotifications:
        return 10;
      default:
        return -1;
    }
  }

  static TPermissionType fromId(int id) {
    switch (id) {
      case 0:
        return TPermissionType.EGps;
      case 1:
        return TPermissionType.EHighAccuracyGps;
      case 2:
        return TPermissionType.ECamera;
      case 3:
        return TPermissionType.EMicrophone;
      case 4:
        return TPermissionType.ESaveToGallery;
      case 5:
        return TPermissionType.ECameraAndMicrophone;
      case 6:
        return TPermissionType.EReadContacts;
      case 7:
        return TPermissionType.EWriteContacts;
      case 8:
        return TPermissionType.EBluetoothConnect;
      case 9:
        return TPermissionType.EReadPhoneState;
      case 10:
        return TPermissionType.EPostNotifications;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TMenuActionType {
  EMapStyles,
  EOneMapView,
  ETwoTiledMapViewsSameCamera,
  ETwoTiledMapViewsDifferentCameras,
  ETwoOverlappedMapViewsSameCamera,
  ETwoOverlappedMapViewsDifferentCameras,
  EFreeTextSearch,
  EWhatIsNearby,
  EPoiCategorySearch,
  EAddressSearch,
  EPredefinedCarRoute,
  ECustomCarRoute,
  EPredefinedPublicTransportRoute,
  ECustomPublicTransportRoute,
  ENavigateWithLog,
  ENavigateWithGps,
  EOnlineMaps,
  EFlyToLandmark,
  EFlyToArea,
  EFlyToRoute,
  EFlyToRouteInstruction,
  EFlyToTraffic,
  ESetCustomServer,
  ECompass,
  EMapPerspective,
  EVoices,
  EOrbit,
  EFavourites,
  EHistory,
  ESettings,
  EVideoLogs,
  EAddPolyline,
  ERemoveAllPolylines,
  EADASBenchmark,
  EShowHideFPS,
  EShowHideWireframe,
}

extension TMenuActionTypeExtension on TMenuActionType {
  int get id {
    switch (this) {
      case TMenuActionType.EMapStyles:
        return 0;
      case TMenuActionType.EOneMapView:
        return 1;
      case TMenuActionType.ETwoTiledMapViewsSameCamera:
        return 2;
      case TMenuActionType.ETwoTiledMapViewsDifferentCameras:
        return 3;
      case TMenuActionType.ETwoOverlappedMapViewsSameCamera:
        return 4;
      case TMenuActionType.ETwoOverlappedMapViewsDifferentCameras:
        return 5;
      case TMenuActionType.EFreeTextSearch:
        return 6;
      case TMenuActionType.EWhatIsNearby:
        return 7;
      case TMenuActionType.EPoiCategorySearch:
        return 8;
      case TMenuActionType.EAddressSearch:
        return 9;
      case TMenuActionType.EPredefinedCarRoute:
        return 10;
      case TMenuActionType.ECustomCarRoute:
        return 11;
      case TMenuActionType.EPredefinedPublicTransportRoute:
        return 12;
      case TMenuActionType.ECustomPublicTransportRoute:
        return 13;
      case TMenuActionType.ENavigateWithLog:
        return 14;
      case TMenuActionType.ENavigateWithGps:
        return 15;
      case TMenuActionType.EOnlineMaps:
        return 16;
      case TMenuActionType.EFlyToLandmark:
        return 17;
      case TMenuActionType.EFlyToArea:
        return 18;
      case TMenuActionType.EFlyToRoute:
        return 19;
      case TMenuActionType.EFlyToRouteInstruction:
        return 20;
      case TMenuActionType.EFlyToTraffic:
        return 21;
      case TMenuActionType.ESetCustomServer:
        return 22;
      case TMenuActionType.ECompass:
        return 23;
      case TMenuActionType.EMapPerspective:
        return 24;
      case TMenuActionType.EVoices:
        return 25;
      case TMenuActionType.EOrbit:
        return 26;
      case TMenuActionType.EFavourites:
        return 27;
      case TMenuActionType.EHistory:
        return 28;
      case TMenuActionType.ESettings:
        return 29;
      case TMenuActionType.EVideoLogs:
        return 30;
      case TMenuActionType.EAddPolyline:
        return 31;
      case TMenuActionType.ERemoveAllPolylines:
        return 32;
      case TMenuActionType.EADASBenchmark:
        return 33;
      case TMenuActionType.EShowHideFPS:
        return 34;
      case TMenuActionType.EShowHideWireframe:
        return 35;
      default:
        return -1;
    }
  }

  static TMenuActionType fromId(int id) {
    switch (id) {
      case 0:
        return TMenuActionType.EMapStyles;
      case 1:
        return TMenuActionType.EOneMapView;
      case 2:
        return TMenuActionType.ETwoTiledMapViewsSameCamera;
      case 3:
        return TMenuActionType.ETwoTiledMapViewsDifferentCameras;
      case 4:
        return TMenuActionType.ETwoOverlappedMapViewsSameCamera;
      case 5:
        return TMenuActionType.ETwoOverlappedMapViewsDifferentCameras;
      case 6:
        return TMenuActionType.EFreeTextSearch;
      case 7:
        return TMenuActionType.EWhatIsNearby;
      case 8:
        return TMenuActionType.EPoiCategorySearch;
      case 9:
        return TMenuActionType.EAddressSearch;
      case 10:
        return TMenuActionType.EPredefinedCarRoute;
      case 11:
        return TMenuActionType.ECustomCarRoute;
      case 12:
        return TMenuActionType.EPredefinedPublicTransportRoute;
      case 13:
        return TMenuActionType.ECustomPublicTransportRoute;
      case 14:
        return TMenuActionType.ENavigateWithLog;
      case 15:
        return TMenuActionType.ENavigateWithGps;
      case 16:
        return TMenuActionType.EOnlineMaps;
      case 17:
        return TMenuActionType.EFlyToLandmark;
      case 18:
        return TMenuActionType.EFlyToArea;
      case 19:
        return TMenuActionType.EFlyToRoute;
      case 20:
        return TMenuActionType.EFlyToRouteInstruction;
      case 21:
        return TMenuActionType.EFlyToTraffic;
      case 22:
        return TMenuActionType.ESetCustomServer;
      case 23:
        return TMenuActionType.ECompass;
      case 24:
        return TMenuActionType.EMapPerspective;
      case 25:
        return TMenuActionType.EVoices;
      case 26:
        return TMenuActionType.EOrbit;
      case 27:
        return TMenuActionType.EFavourites;
      case 28:
        return TMenuActionType.EHistory;
      case 29:
        return TMenuActionType.ESettings;
      case 30:
        return TMenuActionType.EVideoLogs;
      case 31:
        return TMenuActionType.EAddPolyline;
      case 32:
        return TMenuActionType.ERemoveAllPolylines;
      case 33:
        return TMenuActionType.EADASBenchmark;
      case 34:
        return TMenuActionType.EShowHideFPS;
      case 35:
        return TMenuActionType.EShowHideWireframe;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TUIString {
  EExitApplication,
  EYes,
  ENo,
  EChooseContactAddress,
  EWhatsNew,
  EAndroidAuto,
  ETruckNavigation,
  EGPXTracks,
  EPublicTransportStationInfo,
  ERestoreInterruptedNavigation,
  EShareRoute,
  EChangeButtonsOrder,
  EMapStyles,
  EVideoLogs,
  ECoordinates,
  EEditFavourite,
  EDepart,
  EArrive,
  ELast,
  ENow,
  EIn,
  EGetStarted,
  EDriverBehavior,
  ERange,
  ESelect,
}

extension TUIStringExtension on TUIString {
  int get id {
    switch (this) {
      case TUIString.EExitApplication:
        return 0;
      case TUIString.EYes:
        return 1;
      case TUIString.ENo:
        return 2;
      case TUIString.EChooseContactAddress:
        return 3;
      case TUIString.EWhatsNew:
        return 4;
      case TUIString.EAndroidAuto:
        return 5;
      case TUIString.ETruckNavigation:
        return 6;
      case TUIString.EGPXTracks:
        return 7;
      case TUIString.EPublicTransportStationInfo:
        return 8;
      case TUIString.ERestoreInterruptedNavigation:
        return 9;
      case TUIString.EShareRoute:
        return 10;
      case TUIString.EChangeButtonsOrder:
        return 11;
      case TUIString.EMapStyles:
        return 12;
      case TUIString.EVideoLogs:
        return 13;
      case TUIString.ECoordinates:
        return 14;
      case TUIString.EEditFavourite:
        return 15;
      case TUIString.EDepart:
        return 16;
      case TUIString.EArrive:
        return 17;
      case TUIString.ELast:
        return 18;
      case TUIString.ENow:
        return 19;
      case TUIString.EIn:
        return 20;
      case TUIString.EGetStarted:
        return 21;
      case TUIString.EDriverBehavior:
        return 22;
      case TUIString.ERange:
        return 23;
      case TUIString.ESelect:
        return 24;
      default:
        return -1;
    }
  }

  static TUIString fromId(int id) {
    switch (id) {
      case 0:
        return TUIString.EExitApplication;
      case 1:
        return TUIString.EYes;
      case 2:
        return TUIString.ENo;
      case 3:
        return TUIString.EChooseContactAddress;
      case 4:
        return TUIString.EWhatsNew;
      case 5:
        return TUIString.EAndroidAuto;
      case 6:
        return TUIString.ETruckNavigation;
      case 7:
        return TUIString.EGPXTracks;
      case 8:
        return TUIString.EPublicTransportStationInfo;
      case 9:
        return TUIString.ERestoreInterruptedNavigation;
      case 10:
        return TUIString.EShareRoute;
      case 11:
        return TUIString.EChangeButtonsOrder;
      case 12:
        return TUIString.EMapStyles;
      case 13:
        return TUIString.EVideoLogs;
      case 14:
        return TUIString.ECoordinates;
      case 15:
        return TUIString.EEditFavourite;
      case 16:
        return TUIString.EDepart;
      case 17:
        return TUIString.EArrive;
      case 18:
        return TUIString.ELast;
      case 19:
        return TUIString.ENow;
      case 20:
        return TUIString.EIn;
      case 21:
        return TUIString.EGetStarted;
      case 22:
        return TUIString.EDriverBehavior;
      case 23:
        return TUIString.ERange;
      case 24:
        return TUIString.ESelect;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum TUIImage {
  ECompassSensorOff,
  ECompassSensorOffNight,
  ECompassSensorOn,
  ECompassSensorOnNight,
  BatteryLevelIndicator0,
  BatteryLevelIndicator10,
  BatteryLevelIndicator20,
  BatteryLevelIndicator30,
  BatteryLevelIndicator40,
  BatteryLevelIndicator50,
  BatteryLevelIndicator60,
  BatteryLevelIndicator70,
  BatteryLevelIndicator80,
  BatteryLevelIndicator90,
  BatteryLevelIndicator100,
  BatteryCharging,
  ESetDeparture,
  ESetDestination,
  ESetIntermediateWaypoint,
  EReportEvent,
  ESaveRecording,
}

extension TUIImageExtension on TUIImage {
  int get id {
    switch (this) {
      case TUIImage.ECompassSensorOff:
        return 0;
      case TUIImage.ECompassSensorOffNight:
        return 1;
      case TUIImage.ECompassSensorOn:
        return 2;
      case TUIImage.ECompassSensorOnNight:
        return 3;
      case TUIImage.BatteryLevelIndicator0:
        return 4;
      case TUIImage.BatteryLevelIndicator10:
        return 5;
      case TUIImage.BatteryLevelIndicator20:
        return 6;
      case TUIImage.BatteryLevelIndicator30:
        return 7;
      case TUIImage.BatteryLevelIndicator40:
        return 8;
      case TUIImage.BatteryLevelIndicator50:
        return 9;
      case TUIImage.BatteryLevelIndicator60:
        return 10;
      case TUIImage.BatteryLevelIndicator70:
        return 11;
      case TUIImage.BatteryLevelIndicator80:
        return 12;
      case TUIImage.BatteryLevelIndicator90:
        return 13;
      case TUIImage.BatteryLevelIndicator100:
        return 14;
      case TUIImage.BatteryCharging:
        return 15;
      case TUIImage.ESetDeparture:
        return 16;
      case TUIImage.ESetDestination:
        return 17;
      case TUIImage.ESetIntermediateWaypoint:
        return 18;
      case TUIImage.EReportEvent:
        return 19;
      case TUIImage.ESaveRecording:
        return 20;
      default:
        return -1;
    }
  }

  static TUIImage fromId(int id) {
    switch (id) {
      case 0:
        return TUIImage.ECompassSensorOff;
      case 1:
        return TUIImage.ECompassSensorOffNight;
      case 2:
        return TUIImage.ECompassSensorOn;
      case 3:
        return TUIImage.ECompassSensorOnNight;
      case 4:
        return TUIImage.BatteryLevelIndicator0;
      case 5:
        return TUIImage.BatteryLevelIndicator10;
      case 6:
        return TUIImage.BatteryLevelIndicator20;
      case 7:
        return TUIImage.BatteryLevelIndicator30;
      case 8:
        return TUIImage.BatteryLevelIndicator40;
      case 9:
        return TUIImage.BatteryLevelIndicator50;
      case 10:
        return TUIImage.BatteryLevelIndicator60;
      case 11:
        return TUIImage.BatteryLevelIndicator70;
      case 12:
        return TUIImage.BatteryLevelIndicator80;
      case 13:
        return TUIImage.BatteryLevelIndicator90;
      case 14:
        return TUIImage.BatteryLevelIndicator100;
      case 15:
        return TUIImage.BatteryCharging;
      case 16:
        return TUIImage.ESetDeparture;
      case 17:
        return TUIImage.ESetDestination;
      case 18:
        return TUIImage.ESetIntermediateWaypoint;
      case 19:
        return TUIImage.EReportEvent;
      case 20:
        return TUIImage.ESaveRecording;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EDateTimeFormat {
  Short,
  Medium,
  Long,
  Full,
}

extension EDateTimeFormatExtension on EDateTimeFormat {
  int get id {
    switch (this) {
      case EDateTimeFormat.Short:
        return 0;
      case EDateTimeFormat.Medium:
        return 1;
      case EDateTimeFormat.Long:
        return 2;
      case EDateTimeFormat.Full:
        return 3;
      default:
        return -1;
    }
  }

  static EDateTimeFormat fromId(int id) {
    switch (id) {
      case 0:
        return EDateTimeFormat.Short;
      case 1:
        return EDateTimeFormat.Medium;
      case 2:
        return EDateTimeFormat.Long;
      case 3:
        return EDateTimeFormat.Full;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESystemString {
  AllowAllTheTime,
}

extension ESystemStringExtension on ESystemString {
  int get id {
    switch (this) {
      case ESystemString.AllowAllTheTime:
        return 0;
      default:
        return -1;
    }
  }

  static ESystemString fromId(int id) {
    switch (id) {
      case 0:
        return ESystemString.AllowAllTheTime;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class InitParameters {
  int? variant;
  InitParameters({
    this.variant,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (variant != null) {
      json['variant'] = variant;
    }
    return json;
  }

  factory InitParameters.fromJson(Map<String, dynamic> json) {
    return InitParameters(
      variant: json['variant'],
    );
  }
}
