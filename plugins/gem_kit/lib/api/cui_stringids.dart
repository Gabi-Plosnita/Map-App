// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum EStringUiIds {
  eStringNone,
  eStringTurnNone,
  eStringTurnWaypointStart,
  eStringTurnWaypointStop,
  eStringTurnStraight,
  eStringTurnRight,
  eStringTurnLeft,
  eStringTurnLightLeft,
  eStringTurnLightRight,
  eStringTurnSharpRight,
  eStringTurnSharpLeft,
  eStringTurnRoundaboutExitRight,
  eStringTurnRoundaboutExitLeft,
  eStringTurnRoundabout,
  eStringTurnRoundRight,
  eStringTurnRoundLeft,
  eStringTurnExitRight,
  eStringTurnExitLeft,
  eStringInfoSign,
  eStringTurnDriveOn,
  eStringTurnExitNr,
  eStringTurnIntoRoundabout,
  eStringTurnBoatFerry,
  eStringTurnRailFerry,
  eStringInfoLane,
  eStringInfoGeneric,
  eStringHINT_RT_FASTEST_AUTOMOBILE,
  eStringHINT_RT_SHORTEST_AUTOMOBILE,
  eStringHINT_RT_FASTEST_TRUCK,
  eStringHINT_RT_SHORTEST_TRUCK,
  eStringHINT_RT_PEDESTRIAN,
  eStringRoundaboutExit1,
  eStringRoundaboutExit2,
  eStringRoundaboutExit3,
  eStringRoundaboutExit4,
  eStringRoundaboutExit5,
  eStringRoundaboutExit6,
  eStringRoundaboutExit7,
  eStringRoundaboutExit8,
  eStringRoundaboutExitN,
  eStringNodeNearby,
  eStringUnnamedStreet,
  eStringLEGEND_ROADS,
  eStringLEGEND_AREAS,
  eStringLEGEND_NODES_CITIES,
  eStringLEGEND_NODES_CITIES_DISTRICT,
  eStrMeter,
  eStrKm,
  eStrYd,
  eStrMi,
  eStrFt,
  eStrMph,
  eStrKmH,
  eStrTon,
  eStringR66LANE_01,
  eStringR66LANE_02,
  eStringR66LANE_03,
  eStringR66LANE_04,
  eStringR66LANE_05,
  eStringR66LANE_06,
  eStringR66LANE_07,
  eStringR66LANE_08,
  eStringR66LANE_09,
  eStringR66LANE_10,
  eStringR66LANE_11,
  eStringR66LANE_12,
  eStringR66LANE_13,
  eStringR66LANE_14,
  eStringR66LANE_15,
  eStrLmcAccomodation,
  eStrLmcBussiness,
  eStrLmcCommunication,
  eStrLmcEducationalInstitute,
  eStrLmcEntertainment,
  eStrLmcFoodAndBeverage,
  eStrLmcGeographicalArea,
  eStrLmcOutdoorActivities,
  eStrLmcPeople,
  eStrLmcPublicService,
  eStrLmcReligiousPlaces,
  eStrLmcShopping,
  eStrLmcSightseeing,
  eStrLmcSports,
  eStrLmcTransport,
  eStringMpROUTE66,
  eStringMpNAVTEQ,
  eStringMpTELEATLAS,
  eStringMpNAV2,
  eStringMpNAVTURK,
  eStringMpNAVURI,
  eStringMpTRANSNAVICOM,
  eStringMpSUNCART,
  eStringMpMAPMYINDIA,
  eStringMpSENSIS,
  eStringMpMICROPARTES,
  eStringMpRITU,
  eStringMpOSM,
  eStringMpKINGWAY,
  eStringMpVIETMAP,
  eStringMpCopyright,
  eStrDistanceTillDestination,
  eStrIntermediateDestinationReached,
  eStrDestinationReached,
  eStrDestinationRestrictedAccess,
  eStrThen,
  eStrAndThen,
  eStrThenImmediately,
  eStrNow,
  eStrAhead,
  eStrPlease,
  eStrFollowRoad,
  eStrFollowRoadTillNewInstructions,
  eStrAtSecondRoad,
  eStrAtThirdRoad,
  eStrEnterMotorway,
  eStrAnd,
  eStrTakeExit,
  eStrTakeFirstExit,
  eStrTakeSecondExit,
  eStrTakeThirdExit,
  eStrTakeFourthExit,
  eStrTakeFifthExit,
  eStrTakeSixthExit,
  eStrTakeSeventhExit,
  eStrTurnArroundWhenPossible,
  eStrMakeUTurn,
  eStrAtRoundabout,
  eStrLeaveMotorway,
  eStrChangeMotorway,
  eStrAfterOneKm,
  eStrAfterQuarterMile,
  eStrAfterHalfMile,
  eStrAfterOneMile,
  eStrAfterTwo,
  eStrAfterThree,
  eStrAfterFour,
  eStrAfterFive,
  eStrAfterFifty,
  eStrAfterHundred,
  eStrAfterHundredFifty,
  eStrAfterTwoHundreds,
  eStrAfterTwoHundredsFifty,
  eStrAfterThreeHundreds,
  eStrAfterFourHundreds,
  eStrAfterFiveHundreds,
  eStrAfterSixHundreds,
  eStrAfterSevenHundreds,
  eStrAfterEightHundreds,
  eStrAfterNineHundreds,
  eStrStraightAhead,
  eStrBearRight,
  eStrBearLeft,
  eStrTurnSharpRight,
  eStrTurnSharpLeft,
  eStrTurnSlightlyRight,
  eStrTurnSlightlyLeft,
  eStrTurnRight,
  eStrTurnLeft,
  eStrStayInRightLane,
  eStrStayInLeftLane,
  eStrGoRightThenLeft,
  eStrGoLeftThenRight,
  eStrTakeFerry,
  eStrTakeTrain,
  eStrMetres,
  eStrKilometres,
  eStrYards,
  eStrMiles,
  eStrFeet,
  eStrWarning,
  eStrDistanceTillIntermediateDestination,
  eStrFollowRoadDistance,
  eStrFollowSignpostsDestination,
  eStrOnStreetName,
  eStrFollowStreetName,
  eStrTakeNameExit,
  eStrTakeExitName,
  eStrFollowRoadForKilometre,
  eStrFollowRoadForKilometres,
  eStrFollowRoadForMile,
  eStrFollowRoadForMiles,
  eStrFollowRoadForMetres,
  eStringFollowFor,
  eStringOnto,
  eStringFollowTheRoadFor,
  eStrLength,
  eStrDelay,
  eStrFrom,
  eStrTo,
  eStrTrafficValidFrom,
  eStrTrafficExpired,
  eStrDestinationOnRight,
  eStrDestinationOnLeft,
  eStrIntermediateDestinationOnRight,
  eStrIntermediateDestinationOnLeft,
  eStrContinueOnStreetName,
  eStrGoRightThenRight,
  eStrGoLeftThenLeft,
  eStrVCShowMapOfXCountry,
  eStrVCNavigateHome,
  eStrVCNavigateToWork,
  eStrVCNavigateToXDestination,
  eStrVCChangToNightColours,
  eStrVCMute,
  eStrVCMuteVoiceGuidance,
  eStrVCUnmute,
  eStrVCUnmuteVoiceGuidance,
  eStrVCShowTraffic,
  eStrVCHideTraffic,
  eStrVCShowSatellite,
  eStrVCHideSatellite,
  eStrVCShowRouteOverview,
  eStrVCShowAlternateRoutes,
  eStrVCShowNextTurn,
  eStrVCShowMyETA,
  eStrVCAvoidTolls,
  eStrVCEnableTolls,
  eStrVCAvoidHighways,
  eStrVCEnableHighways,
  eStrVCAvoidFerries,
  eStrVCEnableFerries,
  eStrVCExitNavigation,
  eStrUnknown,
  eStrTimeH,
  eStrTimeMin,
  eStrTimeS,
  eStrSecond,
  eStrSeconds,
  eStrMinute,
  eStrMinutes,
  eStrHour,
  eStrHours,
  eStrRoadBlock,
  eStrHoursAbbrev,
  eStrErrDatabasesExpired,
  eStrErrNoResults,
  eStrErrNoResultsDueToTransferTime,
  eStrErrResourcesUnavailable,
  eStrErrInvalidDate,
  eStrNoDataBetweenLocations,
  eStrErrFailedPedestrianRouteSection,
  eStringDistanceTimeToDestination,
  eStringFollowStreetUntil,
  eStringFollowNotPrecised,
  eStringCrossIntersection,
  eStringCrossIntersectionAndFollowStreet,
  eStringAtTheIntersection,
  eStringAtTheEndOf,
  eStringTheStreet,
  eStringTheRoad,
  eStringTheTrail,
  eStringTheSteps,
  eStringTakeTheSteps,
  eStringTheIntersection,
  eStringTakeTheCrosswalk,
  eStrRouteUpdated,
  eStrBike,
  eStrCar,
  eStrTruck,
  eStrPedestrian,
  eStrCountryRegion,
  eStrStateProvince,
  eStrErrMsgKGeneralShort,
  eStrErrMsgKGeneral,
  eStrUnknownErr,
  eStrErrMsgKActivation,
  eStrErrMsgKCancel,
  eStrErrMsgKNotSupported,
  eStrErrMsgKExist,
  eStrErrMsgKIo,
  eStrErrMsgKAccessDenied,
  eStrErrMsgKReadonlyDrive,
  eStrErrMsgKNoDiskSpace,
  eStrErrMsgKInUse,
  eStrErrMsgKNotFound,
  eStrErrMsgKOutOfRange,
  eStrErrMsgKInvalidated,
  eStrErrMsgKNoMemory,
  eStrErrMsgKInvalidInput,
  eStrErrMsgKRequired,
  eStrErrMsgKReducedResult,
  eStrErrMsgKNoRoute,
  eStrErrMsgKWaypointAccess,
  eStrErrMsgKRouteTooLong,
  eStrErrMsgKInternalAbort,
  eStrErrMsgKNetworkFailed,
  eStrErrMsgKNoConnection,
  eStrErrMsgKConnectionRequired,
  eStrErrMsgKContentStoreNotOpened,
  eStrErrMsgKSuspended,
  eStrErrMsgKUpToDate,
  eStrErrMsgKResourceMissingTitle,
  eStrErrMsgKResourceMissing,
  eStrErrMsgKOperationTimeout,
  eStrErrMsgKCouldNotStart,
  eStrErrMsgKNetworkCouldntResume,
  eStrErrMsgKNetworkTimeout,
  eStrKiloByte,
  eStrMegaByte,
  eStrGigaByte,
  eStrAm,
  eStrPm,
  eStrByte,
  eStrLeavingLane,
  eStrKeepLane,
  eStrMovingTraffic,
  eStrKeepDistance,
  eStrWatchOutForVehicle,
  eStrMindYourSpeed,
  eStrADASNotEnabledDevicePortrait,
  eStrADASNotEnabledNoSafetyEye,
  eStrADASEnabled,
  eStrADASDisabled,
  eStrHapticNotifDisabled,
  eStrCalibrationGeneric,
  eStrDiagnosticHeavyRain,
  eStrDiagnosticBadExposure,
  eStrDiagnosticLowVisibility,
  eStrDiagnosticLowImageQuality,
  eStrDiagnosticExcessiveMovement,
  eStringLEGEND_SYMBOLS_WAYPOINTS,
  eStringTrafficDelay,
  eStringAlternativeRoute,
  eStringOnFastestRoute,
  eStrYes,
  eStrNo,
  eStrGettingPos,
  eStrOptionAvailableInWiFi,
  eStrOptions,
  eStrSearch,
  eStrTempDirections,
  eStrRouteDetails,
  eStrTempDownloadMaps,
  eStrStopCrtNav,
  eStrShow,
  eStrHelp,
  eStrAbout,
  eStrAddress,
  eStrContacts,
  eNStrFavorites,
  eStrPOI,
  eStrHistory,
  eStrAlongRoute,
  eStrAroundDest,
  eStrAroundGpsPos,
  eStrCity,
  eStrStreet,
  eStrNumberAbbv,
  eStrCrossing,
  eStrCountries,
  eStrTempAnywhere,
  eStrLocDetails,
  eStrUnnamed,
  eStrCall,
  eStrOpenWebPage,
  eNStrSaveAsContact,
  eStrTempWhatsNearby,
  eStrTempSearchAround,
  eStrTempContactAddError,
  eStrEdit,
  eStrTempEditFavorite,
  eStrName,
  eStrZipCode,
  eStrState,
  eStrPhone,
  eStrUrl,
  eStrLatitude,
  eStrLongitude,
  eStrAltitude,
  eStrSave,
  eStrNameNotFilled,
  eStrMyPosition,
  eStrSetDep,
  eStrSetDest,
  eStrAddWpt,
  eStrFromAtoB,
  eStrToB,
  eStrRouteNotValid,
  eStrTempMapLayers,
  eStrTemp3DBuildings,
  eStrWeather,
  eStrTempMapStyles,
  eStrMap,
  eStrSatellite,
  eStrAllCategories,
  eStrDone,
  eStrCalculating,
  eStrSearching,
  eStrProcessing,
  eStrDel,
  eStrCancel,
  eStrResume,
  eStrGPRSDownloadLimitReached,
  eStrNavigation,
  eStrTrafficInformation,
  eStrTempDay,
  eStrTempDays,
  eStrOk,
  eStrAccept,
  eStrDeny,
  eStrNightColors,
  eStr2dPerspective,
  eStr3dPerspective,
  eStrTempTimeFormatHour,
  eStrTempTimeFormatMin,
  eStrTempTimeFormatSec,
  eStrNowAdv,
  eStrCardPointN,
  eStrCardPointE,
  eStrCardPointS,
  eStrCardPointW,
  eStrGeneral,
  eStrVolume,
  eStrOn,
  eStrOff,
  eStrTravelMode,
  eStrAskAlways,
  eStrVoiceLanguage,
  eStrAvoid,
  eStrAvoidCarpoolLanes,
  eStrFerries,
  eStrAvoidFerries,
  eStrMotorways,
  eStrAvoidMotorways,
  eStrTollRoads,
  eStrAvoidTollRoads,
  eStrTraffic,
  eStrAvoidTraffic,
  eStrUnpavedRoads,
  eStrAvoidUnpavedRoads,
  eStrTempSendFeedback,
  eNStrDeviceID,
  eStrUnknownErrShort,
  eStrNoGpsSourceEnableSettingsTitle,
  eStrNoGpsSourceEnableSettings,
  eStrFastest,
  eStrShortest,
  eStrEconomic,
  eStrNoSearchResShort,
  eStrGPSDisabledTitle,
  eStrGPSDisabled,
  eStrLatLong,
  eStrInvalidCoordinates,
  eStrRename,
  eStrSameName,
  eStrRouteName,
  eStrEditRoute,
  eStrFromAToBViaC,
  eStrToBViaC,
  eStrContinue,
  eStrDoNotShowAgain,
  eStrView,
  eStrEmail,
  eStrInvalidEmail,
  eStrRoute,
  eStrCannotConnectToStore,
  eStrComputerVoices,
  eStrStandard,
  eStrStopRouteCalculation,
  eStrChooseContactAddress,
  eStrSetBlock,
  eStrProductDownloaded,
  eStrDemoRouteSimulation,
  eStrSaveOneMinute,
  eStrSaveSeveralMinutes,
  eStrSpeedCamera,
  eStrSafetyCams,
  eStrOnRoadName,
  eStrMobileDataOff,
  eStrShareThisApp,
  eStrRateThisApp,
  eStrDownloadOverMobileNetworkWarning,
  eStrHome,
  eStrWork,
  eStrSetHomeAddress,
  eStrSetWorkAddress,
  eStrTapToSet,
  eStrSetHomeTitle,
  eStrSetWorkTitle,
  eStrUpdateHomeQuerry,
  eStrUpdateWorkQuerry,
  eStrRouteWithTolls,
  eStrRouteWithFerry,
  eStrSmartCarKit,
  eStrSortByName,
  eStrSortByTime,
  eStrSortByDistance,
  eStrSetAlert,
  eStrRadius,
  eStrArrivingMessage,
  eStrLeavingMessage,
  eStrAlerts,
  eStrEditAlert,
  eStrSendFeedbackError,
  eStrAccessContactsError,
  eStrSendLocationDetailsError,
  eStrPhoneCallError,
  eStrUninstallSpeedCams,
  eStrUninstallSpeedCamsConfirmation,
  eStrResetToDefaults,
  eStrRestoreToDefaultsConfirmation,
  eStrFacebook,
  eStrTwitter,
  eStrEmailSubjectEnteringArea,
  eStrEmailSubjectLeavingArea,
  eStrNoSearchResAppNotOnlineYet,
  eStrNoSearchResConnectToInternet,
  eStrAddressNotLocatedCheckDetails,
  eStrMapsStorage,
  eStrInternalPreferred,
  eStrExternalPreferred,
  eStrSaveAsFavourite,
  eStrToRecipient,
  eStrCloudBackup,
  eStrShowAll,
  eStrShowDownloaded,
  eStrShowDownloading,
  eStrShowFavourites,
  eStrShowPOIs,
  eStrShowAlerts,
  eStrShowPlaces,
  eStrShowRoutes,
  eStrSimulationSpeed,
  eStrStopCrtSimulation,
  eStrDemo,
  eStrFullScreen,
  eStrSearchResults,
  eStrConnectToInternetToDownloadMaps,
  eStrInsideBuiltUpAreas,
  eStrOutsideBuiltUpAreas,
  eStrImportFileQuery,
  eStrCancelPOIImportQuery,
  eStrNoPOIImported,
  eStrPOIImportSuccessful,
  eStrEmailSubjectShareCurrentLocation,
  eStrEmailBodyShareCurrentLocation,
  eStrEmailSubjectSendLocationDetails,
  eStrEmailBodySendLocationDetails,
  eStrFromDeparture,
  eStrToDestination,
  eStrFromGetDirections,
  eStrToGetDirections,
  eStrViaSearchBar,
  eStrNavigate,
  eStrClear,
  eStrEnd,
  eStrOverview,
  eStrAppName,
  eStrSupport,
  eStrShareMagicMapsAppMessage,
  eStrAllMaps,
  eStrDownloadedMaps,
  eStrDownloadingMaps,
  eStrBrandName,
  eStrThirdPartyLicences,
  eStrContactSupportAt,
  eStrTerrain,
  eStrTerrainAndSatellite,
  eStrLocationWhenInUseUsagePermission,
  eStrDriveVia,
  eStrEveryXTime,
  eStrTowardsXLocation,
  eStrNoOfTransfer,
  eStrNoOfTransfers,
  eSTrNoOfStopAndTime,
  eSTrNoOfStopsAndTime,
  eStrNotAllPreferencesMet,
  eStrBestRoute,
  eStrFewerTransfers,
  eStrLessWalking,
  eStrMinTransferTime,
  eStrPreferredMeansOfTransport,
  eStrBus,
  eStrUnderground,
  eStrRailway,
  eStrTram,
  eStrFerry,
  eStrOtherTransportMeans,
  eStrPreferredAccessibility,
  eStrWheelchair,
  eStrBicycle,
  eStrDateTime,
  eStrDepart,
  eStrArrive,
  eStrLast,
  eStrXTimeEarly,
  eStrXTimeLate,
  eStrOnTime,
  eStrBicycleSupport,
  eStrWheelchairSupport,
  eStrBicycleAndWheelchairSupport,
  eStrEarlier,
  eStrLater,
  eStrRoutes,
  eStrDistanceTimeWalking,
  eStrDistances,
  eStrInKilometres,
  eStrInMilesFeet,
  eStrInMilesYards,
  eStrVoiceVolume,
  eStrMapLabels,
  eStrAutomatic,
  eStrInLocalLanguage,
  eStrBatteryMode,
  eStrNormalUsedForVBattery,
  eStrPowerSavingUsedForBattery,
  eStrUltraPowerSavingUsedForBattery,
  eStrGetInTouch,
  eStrSettings,
  eStrAdvancedSettings,
  eStrWarnings,
  eStrWarningTiming,
  eStrEarlyUsedForWarningTiming,
  eStrNormalUsedForWarningTiming,
  eStrLateUsedForWarningTiming,
  eStrSpeedWarningTolerance,
  eStrDashCamVideoSize,
  eStrVideoLength,
  eStrDepartAt,
  eStrArriveAt,
  eStrDriveTo,
  eStrBikeTo,
  eStrWalkTo,
  eStrPublicTransportTo,
  eStrAgencyInfo,
  eStrDefineHomeOnDev,
  eStrDefineWorkOnDev,
  eStrPublicTransport,
  eStrPlatformNo,
  eStrChangeFromPlatformNoToPlatformNo,
  eStrChangeToPlatformNo,
  eStrGo,
  eStrContinueOnSameVehicle,
  eStrScreenAlwaysOn,
  eStrScreenOnWhileNavigating,
  eStrScreenTurnOffAutomatically,
  eStrSortByArrivalTime,
  eStrSortByDepartureTime,
  eStrSortByTripDuration,
  eStrStandardMap,
  eStrContactsUsagePermission,
  eStrMicrophoneUsagePermission,
  eStrForwardCollisionWarning,
  eStrPedestrianCollisionWarning,
  eStrHeadwayWarning,
  eStrLaneDepartureWarning,
  eStrMovingTrafficHaptic,
  eStrNearbyVehicleHaptic,
  eStrAudio,
  eStrPlayAsBluetoothPhoneCall,
  eStrMobileData,
  eStrUseMobileDataConnection,
  eStrUpdateNow,
  eStrUpdateTonight,
  eStrRemindMeLater,
  eStrDangerousHeadway,
  eStrLaneDepartureSolidLine,
  eStrLaneDepartureDashedLine,
  eStrContactPermissionRequiredEnableInSettings,
  eStrRouteCrosesesRestrictedAreas,
  eStrSpeedLimits,
  eStrPedestrianCollision,
  eStrWaitingForInternetConnection,
  eStrErrMapDataNotSupportedOnline,
  eStrForwardCollision,
  eStrStopAndGo,
  eStrNavigationAutostart,
  eStrInTenSeconds,
  eStrWhenMoving,
  eStrMapData,
  eStrMapDataOSM,
  eStrPreferCurrentRoute,
  eStrPreferFasterRoute,
  eStrMobileDataSettingOffInApp,
  eStrMobileDataSettingOnInAppNoInternet,
  eStrMapDataDescription,
  eStrResetStatistics,
  eStrMapDataOff,
  eStrSearchPerformedOffline,
  eStrMapDataOffAddressSearch,
  eStrCannotCalculateRouteMissingOfflineMaps,
  eStrDrivingMode,
  eStrMapVersion,
  eStrUpload,
  eStrEnterNameOptional,
  eStrEnterEmailMandatory,
  eStrEmailNeededForIssueCommunication,
  eStrProblemDescription,
  eStrEnterProblemDescriptionOptional,
  eStrVideoLogs,
  eStrVideoLog,
  eStrCancelUpload,
  eStrUploadVideoLog,
  eStrLogUploaded,
  eStrMapDataCacheSize,
  eStrUpdateAppOldMapsStillSupportedOnline,
  eStrUpdateAppNoOnlineMapsAtAll,
  eStrFolder,
  eStrMainFolder,
  eStrMove,
  eStrSelectFolder,
  eStrCreateNewFolder,
  eStrCreateFolder,
  eStrFolderName,
  eStrRenameFolder,
  eStrTipsAndTricks,
  eStrListening,
  eStrElevation,
  eStrNearbyPOIs,
  eStrTrafficInformationNotAvailable,
  eStrNoTrafficEvents,
  eStrTrafficMapLayerDisabled,
  eStrNoTrafficDueToOutdatedMaps,
  eStrTrafficMobileDataDisabled,
  eStrMotionUsagePermission,
  eStrPhotoLibraryUsagePermission,
  eStrSpeechRecognitionUsagePermission,
  eStrCameraPermissionForDriverAssistanceAndDashCam,
  eStrSpeedWarnings,
  eStrRecordingTimeAfterCrash,
  eStrRecordingTimeAfterStandstill,
  eStrHeadUpDisplay,
  eStrTypeParam,
  eStrBikeType,
  eStrRoad,
  eStrCross,
  eStrMountain,
  eStrAvoidHills,
  eStrHills,
  eStrAllowHills,
  eStrCommonSettings,
  eStrSpecificSettings,
  eStrPedestrianSettings,
  eStrBikeSettings,
  eStrCarSettings,
  eStrVoiceAndVolume,
  eStrWarningsVolume,
  eStrBluetooth,
  eStrPlaySoundToPhoneSpeaker,
  eStrCallTimingDelay,
  eStrMapUpdateAvailable,
  eStrMapsCanUpdateAutomatically,
  eStrMapUpdateRequiresBackgroundAppRefreshSetting,
  eStrWaitingForWiFi,
  eStrCancelUpdate,
  eStrMapUpdate,
  eStrMapUpdateFailedNoWiFi,
  eStrMapUpdateFailedNotCharging,
  eStrMapUpdateFailedAppWasKilled,
  eStrMapUpdateFailedMissingBgndAppRefreshSetting,
  eStrMapUpdateComplete,
  eStrMapsAreUpToDate,
  eStrMotorway,
  eStrPath,
  eStrRouteProfile,
  eStrClimbDetails,
  eStrSurfaces,
  eStrWays,
  eStrSteepness,
  eStrRating,
  eStartEndPoints,
  eStrStartEndElevation,
  eStrAvgGrade,
  eStrAsphalt,
  eStrPaved,
  eStrUnpaved,
  eStrStateRoad,
  eStrCycleway,
  eStrSingleTrack,
  eStrTrafficInfoMsg,
  eStringMetre,
  eStrYard,
  eStrStrFoot,
  eStrEG,
  eStrAllowDownloadOverMobileNetwork,
  eStrMapsCanUpdateAutomaticallyGeneric,
  eStrMapUpdateFailedNoInternet,
  eStrUploadAll,
  eStrDeleteUploaded,
  eStrDeleteAll,
  eStrWikipedia,
  eStringLegend_Nodes_Restaurant,
  eStrSupportEmail,
  eStrSupportEmailAlpha,
  eStrSupportEmailBeta,
  eStrDebugMode,
  eStrTracks,
  eStrSize,
  eStrUploadTrack,
  eStrTrackName,
  eStrPrivacyFirstTitle,
  eStrPrivacyFirstMessage,
  eStrPrivacyFirstMessage1,
  eStrPrivacyFirstMessage2,
  eStrNavigationDisclaimerTitle,
  eStrNavigationDisclaimerMessage,
  eStrRecording,
  eStrSaveRecording,
  eStrReportEvent,
  eStrIn,
  eStrOutIn,
  eStrReportSent,
  eStrReportScheduled,
  eStrReportLimitReached,
  eStrCaution,
  eStrAIDashCam,
  eStrDriverAssistance,
  eStrTakeScreenshot,
  eStrTakePhoto,
  eStrAddMark,
  eStrRecordingSavedToPhotos,
  eStrNoSpaceForRecording,
  eStrNoBatteryForRecording,
  eStrRecordingInterruptedDueToSystemFailure,
  eStrRecordingInterruptedDueToOtherAppMicrophoneUsage,
  eStrRecordingInterruptedDueToOtherAppCameraUsage,
  eStrRecordingNotAvailableWhileManyAppsInForeground,
  eStrRecordingInterruptedToPreventDeviceOverheating,
  eStrAdasDisabledToPreventDeviceOverheating,
  eStrOSMMode,
  eStrPermissionsRequired,
  eStrAIDashCamPermissions,
  eStrCameraPermission,
  eStrMicrophonePermission,
  eStrRecordingCouldNotBeSaved,
  eStrThanks,
  eStrNotThere,
  eStrDebug,
  eStrInTrafficInfoMsg,
  eStrUseAIDashCamWhileDriving,
  eStrTurnOnLocationHighAccuracy,
  eStrPoisImportRequiresStoragePermission,
  eStrMapCamera,
  eStrLiveMode,
  eStrLoading,
  eStrEndRoute,
  eStrWarningType,
  eStrVoiceMessage,
  eStrBeep,
  eStrSendReport,
  eStrNotAvailable,
  eNStrError,
  eStrSystem,
  eStrUnsaved,
  eStrImportFavourites,
  eStrImportFavouritesAction,
  eStrOverwrite,
  eStrMerge,
  eStrNoFavouriteImported,
  eStrFavouritesSuccessfullyImported,
  eStrMyFavourites,
  eStrTapOnFavouritesFile,
  eStrReportEvents,
  eStrActionCanNotBeUndone,
  eStrDeleteOneItem,
  eStrDeleteManyItems,
  eStrCancelMapUpdate,
  eStrRemoveNextWaypoint,
  eStrRemoveNextWaypointQuery,
  eStrShowTrafficDelaysLongerThan,
  eStrCopyCoordinates,
  eStrSendMyLocation,
  eStrLocationPermission,
  eStrExitApplication,
  eStrWidth,
  eStrHeight,
  eStrWeight,
  eStrAxleWeight,
  eNStrActivationFailed,
  eStrSelect,
  eStrTempDldMissingItemsTitle,
  eStrAroundDeparture,
  eStrPreferredVehicle,
  eStrGpsInformation,
  eStrHourly,
  eStrDaily,
  eStrGPSAccuracyIsNotGoodEnough,
  eStrAllowAudioRecording,
  eStrCameraHeight,
  eStrFixedCameraHeight,
  eStrVehicleWidth,
  eStrCameraLateralDisplacement,
  eStrConnectedToAndroidAuto,
  eStrDisconnect,
  eStrIAmNotDriving,
  eStrIAmNotDrivingExplanation,
  eStrTapSearchForKeyboard,
  eStrNavigationRequiresHighAccuracyLocation,
  eStrLocationNotEnabledOnPhone,
  eStrLocationPermissionRequiredOnPhone,
  eStrHighAccuracyLocationPermissionExplanation,
  eStrBluetoothConnectPermissionExplanation,
  eStrReadPhoneStatePermissionExplanation,
  eStrDriveToWaypoint,
  eStrDriveViaWaypoint,
  eStrShare,
  eStrShareRouteSubject,
  eStrShareRouteMessage,
  eStrGPXTracks,
  eStrScheduled,
  eStrDeparted,
  eStrArrived,
  eStrCheckGoogleLocationAccuracySetting,
  eStrCheckGoogleLocationAccuracySettingOnPhone,
  eStrLocalTime,
  eStrUpdatedAt,
  eStrMoviesCount,
  eStrStillHeadingTo,
  eStrNoItems,
  eStrBackgroundGPSPermissionExplanation,
  eStrLatLonFormat,
  eStrDecimalDegrees,
  eStrQuickInput,
  eStrDetailedInput,
  eStrPleaseEnsure,
  eStrFieldInInterval,
  eStrMinuteAndSecond,
  eStrAllowAllTheTime,
  eStrWhatsNew,
  eStrAndroidAuto,
  eStrTruckNavigation,
  eStrPublicTransportStationInfo,
  eStrRestoreInterruptedNavigation,
  eStrShareRoute,
  eStrChangeButtonsOrder,
  eStrDayStyle,
  eStrDayStyles,
  eStrNightStyle,
  eStrNightStyles,
  eStrMaps,
  eStrGetStarted,
  eStrNeuralNetworkEngineType,
  eStrTensorflowLite,
  eStrSnapdragonNeuralProcessingEngine,
  eStrImageProcessing,
  eStrAcceptAppDisclaimer,
  eStrAddingAlertRequiresLocationPermission,
  eStrDriverBehavior,
  eStrInstantAnalysis,
  eStrInstant,
  eStrOngoingAnalysis,
  eStrLastAnalysis,
  eStrOverallAnalysis,
  eStrAverage,
  eStrAggregates,
  eStrAggregateScore,
  eStrOverallScore,
  eStrRange,
  eStrTransportMode,
  eStrRangeType,
  eStrRangeValue,
  eStrBikeWeight,
  eStrBikerWeight,
  eStrAdd,
  eStrWattHour,
  eStrKg,
  eStrTruckProfile,
  eStrMaxSpeed,
  eStrSpeeding,
  eStrSpeedVariation,
  eStrHarshAcceleration,
  eStrHarshBraking,
  eStrCornering,
  eStrTailgating,
  eStrFatigue,
  eStrTrafficSignRecognition,
  eStrNorthUp,
  eStrLockVideo,
  eStrCopyrightWebsite,
  eStrDownloadableContent,
  eStrDownloadableContentOff,
  eStrPostNotificationsPermissionExplanation,
  eStrAppCanNotWriteOnSDCard,
  eStrRecents,
  eStrFolders,
  eStrAccessible,
  eStrCameraView,
  eStrVoices,
  eStrDefaultStyles,
  eStrCustomStyles,
  eStrMapStyle,
  eStrFollowMapStyle,
  eStrFollowMapStyleDescription,
  eStrAudioRecording,
  eStrRender,
  eStrRenderMode,
  eStrConfiguration,
  eStrParameters,
  eStrReset,
  eStrIgnoredStopSigns,
  eStrSwerving,
  eStrTotal,
  eStrReported,
  eStrFasterBy,
  eStrStillHere,
  eStrCleared,
  eStrAudioRecordings,
  eStrTimestamp,
  eStrUsage,
  eStrDiscoverAIDashCam,
  eStrAutoRecordingDescription,
  eStrUpdatingToVersion,
  eStrImporting,
  eStrLowDiskSpace,
  eStrRecordingDidStop,
  eStrCoolDownDevice,
  eStrIgnoreRestrictions,
  eStrVideoCouldNotBeLocked,
  eStrVideoCouldNotBeUploaded,
  eStrIgnoreRestrictionsDescription,
  eStrAddStop,
  eStrPlayVideo,
  eStrPlayLog,
  eStrGrantAccess,
  eStrNotNow,
  eStrShowTrip,
  eStrShowTripsHistory,
  eStrShowVideo,
  eStrImportSucceeded,
  eStrImportFailed,
  eStrAudioMarks,
  eStrImport,
  eStrImportTripsHistory,
  eStrImportTrip,
  eStrImportVideo,
  eStrCheckSettings,
  eStrRemoveCategoryMsg,
  eStrDeleteFolder,
  eStrDeleteAllHistoryMsg,
  eStrDeleteAllFavouritesMsg,
  eStrClearHistoryAndData,
  eStrDeleteAllDriverBehaviorDataMsg,
  eStrViewTerms,
  eStrDeleteAllRecentsMsg,
  eStrNewVersionAvailable,
  eStrVersion,
  eStrMapUpdateFailed,
  eStrNoOfflineMaps,
  eStrAutoStartStop,
  eStrUseMapMatchedPos,
  eStrAIDashCamDescription,
  eStrDriverBehaviorDescription,
  eStrDiscoverAIDashCamMsg,
  eStrCloudBackupDescription,
  eStrPreferOtherTransportation,
  eStrApplicationEncounteredProblem,
  eStrReportNotFoundOrExpired,
  eStrVideoFileInvalid,
  eStrFolderNameInUseMsg,
  eStrFileSameNameMsg,
  eStrCarPlayRouteTransportModeNotAvailable,
  eStrRemoveHomeMsg,
  eStrRemoveWorkMsg,
  eStrDisclaimer,
  eStrOnline,
  eStrOffline,
  eStrTempMore,
  eStrViaGetDirections,
  eStrLearnMore,
  eStrDriverAssistanceDescription,
  eStrImportLandmark,
  eStrImportKml,
  eStrDriver,
  eStrLane,
  eStrNewVersionAvailableShort,
}

extension EStringUiIdsExtension on EStringUiIds {
  int get id {
    switch (this) {
      case EStringUiIds.eStringNone:
        return 3611718958;
      case EStringUiIds.eStringTurnNone:
        return 3954178123;
      case EStringUiIds.eStringTurnWaypointStart:
        return 3336167726;
      case EStringUiIds.eStringTurnWaypointStop:
        return 107618742;
      case EStringUiIds.eStringTurnStraight:
        return 1036399245;
      case EStringUiIds.eStringTurnRight:
        return 2323946345;
      case EStringUiIds.eStringTurnLeft:
        return 3954108698;
      case EStringUiIds.eStringTurnLightLeft:
        return 3171957002;
      case EStringUiIds.eStringTurnLightRight:
        return 3847047545;
      case EStringUiIds.eStringTurnSharpRight:
        return 2582565669;
      case EStringUiIds.eStringTurnSharpLeft:
        return 914409950;
      case EStringUiIds.eStringTurnRoundaboutExitRight:
        return 1415296556;
      case EStringUiIds.eStringTurnRoundaboutExitLeft:
        return 184019447;
      case EStringUiIds.eStringTurnRoundabout:
        return 3923323282;
      case EStringUiIds.eStringTurnRoundRight:
        return 3909670913;
      case EStringUiIds.eStringTurnRoundLeft:
        return 2481240450;
      case EStringUiIds.eStringTurnExitRight:
        return 1104643691;
      case EStringUiIds.eStringTurnExitLeft:
        return 1420924376;
      case EStringUiIds.eStringInfoSign:
        return 3998059137;
      case EStringUiIds.eStringTurnDriveOn:
        return 649208598;
      case EStringUiIds.eStringTurnExitNr:
        return 2964603861;
      case EStringUiIds.eStringTurnIntoRoundabout:
        return 2660127378;
      case EStringUiIds.eStringTurnBoatFerry:
        return 910363271;
      case EStringUiIds.eStringTurnRailFerry:
        return 1707383669;
      case EStringUiIds.eStringInfoLane:
        return 3997843120;
      case EStringUiIds.eStringInfoGeneric:
        return 273348243;
      case EStringUiIds.eStringHINT_RT_FASTEST_AUTOMOBILE:
        return 3067248033;
      case EStringUiIds.eStringHINT_RT_SHORTEST_AUTOMOBILE:
        return 4122764171;
      case EStringUiIds.eStringHINT_RT_FASTEST_TRUCK:
        return 697272239;
      case EStringUiIds.eStringHINT_RT_SHORTEST_TRUCK:
        return 1465128837;
      case EStringUiIds.eStringHINT_RT_PEDESTRIAN:
        return 191675638;
      case EStringUiIds.eStringRoundaboutExit1:
        return 1122640798;
      case EStringUiIds.eStringRoundaboutExit2:
        return 1122640799;
      case EStringUiIds.eStringRoundaboutExit3:
        return 1122640800;
      case EStringUiIds.eStringRoundaboutExit4:
        return 1122640801;
      case EStringUiIds.eStringRoundaboutExit5:
        return 1122640802;
      case EStringUiIds.eStringRoundaboutExit6:
        return 1122640803;
      case EStringUiIds.eStringRoundaboutExit7:
        return 1122640804;
      case EStringUiIds.eStringRoundaboutExit8:
        return 1122640805;
      case EStringUiIds.eStringRoundaboutExitN:
        return 1122640827;
      case EStringUiIds.eStringNodeNearby:
        return 21278871;
      case EStringUiIds.eStringUnnamedStreet:
        return 1967168301;
      case EStringUiIds.eStringLEGEND_ROADS:
        return 976152151;
      case EStringUiIds.eStringLEGEND_AREAS:
        return 960545418;
      case EStringUiIds.eStringLEGEND_NODES_CITIES:
        return 2620617491;
      case EStringUiIds.eStringLEGEND_NODES_CITIES_DISTRICT:
        return 3518342970;
      case EStringUiIds.eStrMeter:
        return 3964232541;
      case EStringUiIds.eStrKm:
        return 2971764238;
      case EStringUiIds.eStrYd:
        return 2971764663;
      case EStringUiIds.eStrMi:
        return 2971764296;
      case EStringUiIds.eStrFt:
        return 2971764090;
      case EStringUiIds.eStrMph:
        return 1930380281;
      case EStringUiIds.eStrKmH:
        return 1930378234;
      case EStringUiIds.eStrTon:
        return 1930386983;
      case EStringUiIds.eStringR66LANE_01:
        return 3803955128;
      case EStringUiIds.eStringR66LANE_02:
        return 3803955129;
      case EStringUiIds.eStringR66LANE_03:
        return 3803955130;
      case EStringUiIds.eStringR66LANE_04:
        return 3803955131;
      case EStringUiIds.eStringR66LANE_05:
        return 3803955132;
      case EStringUiIds.eStringR66LANE_06:
        return 3803955133;
      case EStringUiIds.eStringR66LANE_07:
        return 3803955134;
      case EStringUiIds.eStringR66LANE_08:
        return 3803955135;
      case EStringUiIds.eStringR66LANE_09:
        return 3803955136;
      case EStringUiIds.eStringR66LANE_10:
        return 3803955158;
      case EStringUiIds.eStringR66LANE_11:
        return 3803955159;
      case EStringUiIds.eStringR66LANE_12:
        return 3803955160;
      case EStringUiIds.eStringR66LANE_13:
        return 3803955161;
      case EStringUiIds.eStringR66LANE_14:
        return 3803955162;
      case EStringUiIds.eStringR66LANE_15:
        return 3803955163;
      case EStringUiIds.eStrLmcAccomodation:
        return 439669303;
      case EStringUiIds.eStrLmcBussiness:
        return 390032631;
      case EStringUiIds.eStrLmcCommunication:
        return 2470423456;
      case EStringUiIds.eStrLmcEducationalInstitute:
        return 3480500856;
      case EStringUiIds.eStrLmcEntertainment:
        return 4005714770;
      case EStringUiIds.eStrLmcFoodAndBeverage:
        return 3059152258;
      case EStringUiIds.eStrLmcGeographicalArea:
        return 1229315205;
      case EStringUiIds.eStrLmcOutdoorActivities:
        return 1395240915;
      case EStringUiIds.eStrLmcPeople:
        return 455124485;
      case EStringUiIds.eStrLmcPublicService:
        return 2460135382;
      case EStringUiIds.eStrLmcReligiousPlaces:
        return 2119124913;
      case EStringUiIds.eStrLmcShopping:
        return 2884067166;
      case EStringUiIds.eStrLmcSightseeing:
        return 2572864726;
      case EStringUiIds.eStrLmcSports:
        return 551172853;
      case EStringUiIds.eStrLmcTransport:
        return 2353088499;
      case EStringUiIds.eStringMpROUTE66:
        return 2746368880;
      case EStringUiIds.eStringMpNAVTEQ:
        return 3424859766;
      case EStringUiIds.eStringMpTELEATLAS:
        return 2752585224;
      case EStringUiIds.eStringMpNAV2:
        return 499652648;
      case EStringUiIds.eStringMpNAVTURK:
        return 3091453124;
      case EStringUiIds.eStringMpNAVURI:
        return 3424861122;
      case EStringUiIds.eStringMpTRANSNAVICOM:
        return 3919691788;
      case EStringUiIds.eStringMpSUNCART:
        return 3798673427;
      case EStringUiIds.eStringMpMAPMYINDIA:
        return 1309645832;
      case EStringUiIds.eStringMpSENSIS:
        return 3571460442;
      case EStringUiIds.eStringMpMICROPARTES:
        return 2422119628;
      case EStringUiIds.eStringMpRITU:
        return 499779473;
      case EStringUiIds.eStringMpOSM:
        return 293214000;
      case EStringUiIds.eStringMpKINGWAY:
        return 650201247;
      case EStringUiIds.eStringMpVIETMAP:
        return 1814873121;
      case EStringUiIds.eStringMpCopyright:
        return 2723145390;
      case EStringUiIds.eStrDistanceTillDestination:
        return 1978815544;
      case EStringUiIds.eStrIntermediateDestinationReached:
        return 2265787625;
      case EStringUiIds.eStrDestinationReached:
        return 228998672;
      case EStringUiIds.eStrDestinationRestrictedAccess:
        return 2834351777;
      case EStringUiIds.eStrThen:
        return 4007414729;
      case EStringUiIds.eStrAndThen:
        return 2468711272;
      case EStringUiIds.eStrThenImmediately:
        return 2108748149;
      case EStringUiIds.eStrNow:
        return 1930381226;
      case EStringUiIds.eStrAhead:
        return 3953225109;
      case EStringUiIds.eStrPlease:
        return 2724026006;
      case EStringUiIds.eStrFollowRoad:
        return 961608477;
      case EStringUiIds.eStrFollowRoadTillNewInstructions:
        return 4015549843;
      case EStringUiIds.eStrAtSecondRoad:
        return 2874733555;
      case EStringUiIds.eStrAtThirdRoad:
        return 47846152;
      case EStringUiIds.eStrEnterMotorway:
        return 3003873574;
      case EStringUiIds.eStrAnd:
        return 1930368683;
      case EStringUiIds.eStrTakeExit:
        return 3831696881;
      case EStringUiIds.eStrTakeFirstExit:
        return 2327240443;
      case EStringUiIds.eStrTakeSecondExit:
        return 4033102405;
      case EStringUiIds.eStrTakeThirdExit:
        return 1608867378;
      case EStringUiIds.eStrTakeFourthExit:
        return 1246962923;
      case EStringUiIds.eStrTakeFifthExit:
        return 284677762;
      case EStringUiIds.eStrTakeSixthExit:
        return 1352770593;
      case EStringUiIds.eStrTakeSeventhExit:
        return 730876876;
      case EStringUiIds.eStrTurnArroundWhenPossible:
        return 1922062975;
      case EStringUiIds.eStrMakeUTurn:
        return 2599481112;
      case EStringUiIds.eStrAtRoundabout:
        return 2306298110;
      case EStringUiIds.eStrLeaveMotorway:
        return 2546954757;
      case EStringUiIds.eStrChangeMotorway:
        return 2561171670;
      case EStringUiIds.eStrAfterOneKm:
        return 221189784;
      case EStringUiIds.eStrAfterQuarterMile:
        return 3738272017;
      case EStringUiIds.eStrAfterHalfMile:
        return 3242096824;
      case EStringUiIds.eStrAfterOneMile:
        return 2110044107;
      case EStringUiIds.eStrAfterTwo:
        return 1184591484;
      case EStringUiIds.eStrAfterThree:
        return 225641934;
      case EStringUiIds.eStrAfterFour:
        return 2362173174;
      case EStringUiIds.eStrAfterFive:
        return 2362167426;
      case EStringUiIds.eStrAfterFifty:
        return 212731384;
      case EStringUiIds.eStrAfterHundred:
        return 401895006;
      case EStringUiIds.eStrAfterHundredFifty:
        return 437490186;
      case EStringUiIds.eStrAfterTwoHundreds:
        return 3664544417;
      case EStringUiIds.eStrAfterTwoHundredsFifty:
        return 3051138983;
      case EStringUiIds.eStrAfterThreeHundreds:
        return 3047729139;
      case EStringUiIds.eStrAfterFourHundreds:
        return 2906775835;
      case EStringUiIds.eStrAfterFiveHundreds:
        return 2629140135;
      case EStringUiIds.eStrAfterSixHundreds:
        return 535529271;
      case EStringUiIds.eStrAfterSevenHundreds:
        return 973824866;
      case EStringUiIds.eStrAfterEightHundreds:
        return 3937931748;
      case EStringUiIds.eStrAfterNineHundreds:
        return 938942631;
      case EStringUiIds.eStrStraightAhead:
        return 3540945595;
      case EStringUiIds.eStrBearRight:
        return 3767835804;
      case EStringUiIds.eStrBearLeft:
        return 1506833799;
      case EStringUiIds.eStrTurnSharpRight:
        return 2462080859;
      case EStringUiIds.eStrTurnSharpLeft:
        return 1741807336;
      case EStringUiIds.eStrTurnSlightlyRight:
        return 3444695811;
      case EStringUiIds.eStrTurnSlightlyLeft:
        return 1219315264;
      case EStringUiIds.eStrTurnRight:
        return 1206764915;
      case EStringUiIds.eStrTurnLeft:
        return 315839952;
      case EStringUiIds.eStrStayInRightLane:
        return 3814638910;
      case EStringUiIds.eStrStayInLeftLane:
        return 1337664701;
      case EStringUiIds.eStrGoRightThenLeft:
        return 3810439372;
      case EStringUiIds.eStrGoLeftThenRight:
        return 268943492;
      case EStringUiIds.eStrTakeFerry:
        return 2818852519;
      case EStringUiIds.eStrTakeTrain:
        return 2832152469;
      case EStringUiIds.eStrMetres:
        return 2632136688;
      case EStringUiIds.eStrKilometres:
        return 528511121;
      case EStringUiIds.eStrYards:
        return 3975193677;
      case EStringUiIds.eStrMiles:
        return 3964344018;
      case EStringUiIds.eStrFeet:
        return 4006994778;
      case EStringUiIds.eStrWarning:
        return 160481904;
      case EStringUiIds.eStrDistanceTillIntermediateDestination:
        return 3786614399;
      case EStringUiIds.eStrFollowRoadDistance:
        return 3807542834;
      case EStringUiIds.eStrFollowSignpostsDestination:
        return 3554444277;
      case EStringUiIds.eStrOnStreetName:
        return 1080915481;
      case EStringUiIds.eStrFollowStreetName:
        return 1591234411;
      case EStringUiIds.eStrTakeNameExit:
        return 2880773532;
      case EStringUiIds.eStrTakeExitName:
        return 3212680220;
      case EStringUiIds.eStrFollowRoadForKilometre:
        return 3491485506;
      case EStringUiIds.eStrFollowRoadForKilometres:
        return 861868401;
      case EStringUiIds.eStrFollowRoadForMile:
        return 1928981153;
      case EStringUiIds.eStrFollowRoadForMiles:
        return 3963841010;
      case EStringUiIds.eStrFollowRoadForMetres:
        return 2616543440;
      case EStringUiIds.eStringFollowFor:
        return 3226399522;
      case EStringUiIds.eStringOnto:
        return 3611747984;
      case EStringUiIds.eStringFollowTheRoadFor:
        return 836098911;
      case EStringUiIds.eStrLength:
        return 2603318674;
      case EStringUiIds.eStrDelay:
        return 3955913047;
      case EStringUiIds.eStrFrom:
        return 4007007574;
      case EStringUiIds.eStrTo:
        return 2971764519;
      case EStringUiIds.eStrTrafficValidFrom:
        return 2212660213;
      case EStringUiIds.eStrTrafficExpired:
        return 3851758868;
      case EStringUiIds.eStrDestinationOnRight:
        return 2105442363;
      case EStringUiIds.eStrDestinationOnLeft:
        return 1314660872;
      case EStringUiIds.eStrIntermediateDestinationOnRight:
        return 4142231316;
      case EStringUiIds.eStrIntermediateDestinationOnLeft:
        return 3042931727;
      case EStringUiIds.eStrContinueOnStreetName:
        return 3780823136;
      case EStringUiIds.eStrGoRightThenRight:
        return 2165164535;
      case EStringUiIds.eStrGoLeftThenLeft:
        return 3472176287;
      case EStringUiIds.eStrVCShowMapOfXCountry:
        return 2578836283;
      case EStringUiIds.eStrVCNavigateHome:
        return 174627785;
      case EStringUiIds.eStrVCNavigateToWork:
        return 656484502;
      case EStringUiIds.eStrVCNavigateToXDestination:
        return 3439033595;
      case EStringUiIds.eStrVCChangToNightColours:
        return 3023613382;
      case EStringUiIds.eStrVCMute:
        return 2857240818;
      case EStringUiIds.eStrVCMuteVoiceGuidance:
        return 2871959256;
      case EStringUiIds.eStrVCUnmute:
        return 1546703051;
      case EStringUiIds.eStrVCUnmuteVoiceGuidance:
        return 1967595423;
      case EStringUiIds.eStrVCShowTraffic:
        return 2683341639;
      case EStringUiIds.eStrVCHideTraffic:
        return 2174771554;
      case EStringUiIds.eStrVCShowSatellite:
        return 3615098885;
      case EStringUiIds.eStrVCHideSatellite:
        return 210551648;
      case EStringUiIds.eStrVCShowRouteOverview:
        return 579368108;
      case EStringUiIds.eStrVCShowAlternateRoutes:
        return 3346628526;
      case EStringUiIds.eStrVCShowNextTurn:
        return 1730514438;
      case EStringUiIds.eStrVCShowMyETA:
        return 671368208;
      case EStringUiIds.eStrVCAvoidTolls:
        return 130721340;
      case EStringUiIds.eStrVCEnableTolls:
        return 1923364316;
      case EStringUiIds.eStrVCAvoidHighways:
        return 2463503842;
      case EStringUiIds.eStrVCEnableHighways:
        return 3467043394;
      case EStringUiIds.eStrVCAvoidFerries:
        return 1248428508;
      case EStringUiIds.eStrVCEnableFerries:
        return 1696442748;
      case EStringUiIds.eStrVCExitNavigation:
        return 2378960235;
      case EStringUiIds.eStrUnknown:
        return 3046162206;
      case EStringUiIds.eStrTimeH:
        return 3970809583;
      case EStringUiIds.eStrTimeMin:
        return 2017058585;
      case EStringUiIds.eStrTimeS:
        return 3970809594;
      case EStringUiIds.eStrSecond:
        return 2803402528;
      case EStringUiIds.eStrSeconds:
        return 1006132563;
      case EStringUiIds.eStrMinute:
        return 2635655360;
      case EStringUiIds.eStrMinutes:
        return 100937651;
      case EStringUiIds.eStrHour:
        return 4007064464;
      case EStringUiIds.eStrHours:
        return 3959914211;
      case EStringUiIds.eStrRoadBlock:
        return 451114785;
      case EStringUiIds.eStrHoursAbbrev:
        return 949341541;
      case EStringUiIds.eStrErrDatabasesExpired:
        return 2832836102;
      case EStringUiIds.eStrErrNoResults:
        return 3038110908;
      case EStringUiIds.eStrErrNoResultsDueToTransferTime:
        return 3389576491;
      case EStringUiIds.eStrErrResourcesUnavailable:
        return 3014716612;
      case EStringUiIds.eStrErrInvalidDate:
        return 2638026316;
      case EStringUiIds.eStrNoDataBetweenLocations:
        return 483390989;
      case EStringUiIds.eStrErrFailedPedestrianRouteSection:
        return 1864676013;
      case EStringUiIds.eStringDistanceTimeToDestination:
        return 2219921691;
      case EStringUiIds.eStringFollowStreetUntil:
        return 860800628;
      case EStringUiIds.eStringFollowNotPrecised:
        return 3209925301;
      case EStringUiIds.eStringCrossIntersection:
        return 3081031859;
      case EStringUiIds.eStringCrossIntersectionAndFollowStreet:
        return 1305083224;
      case EStringUiIds.eStringAtTheIntersection:
        return 2677970609;
      case EStringUiIds.eStringAtTheEndOf:
        return 3305257194;
      case EStringUiIds.eStringTheStreet:
        return 1748281246;
      case EStringUiIds.eStringTheRoad:
        return 19661179;
      case EStringUiIds.eStringTheTrail:
        return 611433227;
      case EStringUiIds.eStringTheSteps:
        return 610573356;
      case EStringUiIds.eStringTakeTheSteps:
        return 2376422099;
      case EStringUiIds.eStringTheIntersection:
        return 700850660;
      case EStringUiIds.eStringTakeTheCrosswalk:
        return 3298087861;
      case EStringUiIds.eStrRouteUpdated:
        return 3678528478;
      case EStringUiIds.eStrBike:
        return 4006879629;
      case EStringUiIds.eStrCar:
        return 1930370216;
      case EStringUiIds.eStrTruck:
        return 3971085363;
      case EStringUiIds.eStrPedestrian:
        return 1323670503;
      case EStringUiIds.eStrCountryRegion:
        return 195855870;
      case EStringUiIds.eStrStateProvince:
        return 1986451125;
      case EStringUiIds.eStrErrMsgKGeneralShort:
        return 4202906327;
      case EStringUiIds.eStrErrMsgKGeneral:
        return 1835331749;
      case EStringUiIds.eStrUnknownErr:
        return 4149319015;
      case EStringUiIds.eStrErrMsgKActivation:
        return 3170313273;
      case EStringUiIds.eStrErrMsgKCancel:
        return 495180573;
      case EStringUiIds.eStrErrMsgKNotSupported:
        return 2813996414;
      case EStringUiIds.eStrErrMsgKExist:
        return 3897826804;
      case EStringUiIds.eStrErrMsgKIo:
        return 700941129;
      case EStringUiIds.eStrErrMsgKAccessDenied:
        return 3664002;
      case EStringUiIds.eStrErrMsgKReadonlyDrive:
        return 3659524709;
      case EStringUiIds.eStrErrMsgKNoDiskSpace:
        return 2293672421;
      case EStringUiIds.eStrErrMsgKInUse:
        return 3901203743;
      case EStringUiIds.eStrErrMsgKNotFound:
        return 803657810;
      case EStringUiIds.eStrErrMsgKOutOfRange:
        return 171942299;
      case EStringUiIds.eStrErrMsgKInvalidated:
        return 3984439238;
      case EStringUiIds.eStrErrMsgKNoMemory:
        return 4010652165;
      case EStringUiIds.eStrErrMsgKInvalidInput:
        return 3236200054;
      case EStringUiIds.eStrErrMsgKRequired:
        return 3152165762;
      case EStringUiIds.eStrErrMsgKReducedResult:
        return 1335987064;
      case EStringUiIds.eStrErrMsgKNoRoute:
        return 4013624517;
      case EStringUiIds.eStrErrMsgKWaypointAccess:
        return 2826845800;
      case EStringUiIds.eStrErrMsgKRouteTooLong:
        return 2392132042;
      case EStringUiIds.eStrErrMsgKInternalAbort:
        return 512655472;
      case EStringUiIds.eStrErrMsgKNetworkFailed:
        return 1672242696;
      case EStringUiIds.eStrErrMsgKNoConnection:
        return 3368374754;
      case EStringUiIds.eStrErrMsgKConnectionRequired:
        return 192880832;
      case EStringUiIds.eStrErrMsgKContentStoreNotOpened:
        return 1705089809;
      case EStringUiIds.eStrErrMsgKSuspended:
        return 868645464;
      case EStringUiIds.eStrErrMsgKUpToDate:
        return 126363431;
      case EStringUiIds.eStrErrMsgKResourceMissingTitle:
        return 1904633635;
      case EStringUiIds.eStrErrMsgKResourceMissing:
        return 3010602037;
      case EStringUiIds.eStrErrMsgKOperationTimeout:
        return 1945959133;
      case EStringUiIds.eStrErrMsgKCouldNotStart:
        return 2910109485;
      case EStringUiIds.eStrErrMsgKNetworkCouldntResume:
        return 4180769065;
      case EStringUiIds.eStrErrMsgKNetworkTimeout:
        return 72594678;
      case EStringUiIds.eStrKiloByte:
        return 3874144181;
      case EStringUiIds.eStrMegaByte:
        return 3653675078;
      case EStringUiIds.eStrGigaByte:
        return 1041795088;
      case EStringUiIds.eStrAm:
        return 2971763928;
      case EStringUiIds.eStrPm:
        return 2971764393;
      case EStringUiIds.eStrByte:
        return 4006895284;
      case EStringUiIds.eStrLeavingLane:
        return 1199451796;
      case EStringUiIds.eStrKeepLane:
        return 124923581;
      case EStringUiIds.eStrMovingTraffic:
        return 3440664995;
      case EStringUiIds.eStrKeepDistance:
        return 46422086;
      case EStringUiIds.eStrWatchOutForVehicle:
        return 795880494;
      case EStringUiIds.eStrMindYourSpeed:
        return 414114678;
      case EStringUiIds.eStrADASNotEnabledDevicePortrait:
        return 3899948768;
      case EStringUiIds.eStrADASNotEnabledNoSafetyEye:
        return 4250646735;
      case EStringUiIds.eStrADASEnabled:
        return 925970144;
      case EStringUiIds.eStrADASDisabled:
        return 1564019389;
      case EStringUiIds.eStrHapticNotifDisabled:
        return 2560949577;
      case EStringUiIds.eStrCalibrationGeneric:
        return 1188138297;
      case EStringUiIds.eStrDiagnosticHeavyRain:
        return 2465323496;
      case EStringUiIds.eStrDiagnosticBadExposure:
        return 690611673;
      case EStringUiIds.eStrDiagnosticLowVisibility:
        return 3045355507;
      case EStringUiIds.eStrDiagnosticLowImageQuality:
        return 1358420933;
      case EStringUiIds.eStrDiagnosticExcessiveMovement:
        return 785956095;
      case EStringUiIds.eStringLEGEND_SYMBOLS_WAYPOINTS:
        return 4010213906;
      case EStringUiIds.eStringTrafficDelay:
        return 4172467580;
      case EStringUiIds.eStringAlternativeRoute:
        return 2042946450;
      case EStringUiIds.eStringOnFastestRoute:
        return 545509044;
      case EStringUiIds.eStrYes:
        return 1930391483;
      case EStringUiIds.eStrNo:
        return 2971764333;
      case EStringUiIds.eStrGettingPos:
        return 1047955740;
      case EStringUiIds.eStrOptionAvailableInWiFi:
        return 512275650;
      case EStringUiIds.eStrOptions:
        return 2081528178;
      case EStringUiIds.eStrSearch:
        return 2803345492;
      case EStringUiIds.eStrTempDirections:
        return 332080756;
      case EStringUiIds.eStrRouteDetails:
        return 1175713125;
      case EStringUiIds.eStrTempDownloadMaps:
        return 1458115807;
      case EStringUiIds.eStrStopCrtNav:
        return 1179754572;
      case EStringUiIds.eStrShow:
        return 4007385257;
      case EStringUiIds.eStrHelp:
        return 4007054573;
      case EStringUiIds.eStrAbout:
        return 3953056609;
      case EStringUiIds.eStrAddress:
        return 2183311048;
      case EStringUiIds.eStrContacts:
        return 3909396479;
      case EStringUiIds.eNStrFavorites:
        return 2489585231;
      case EStringUiIds.eStrPOI:
        return 1930382110;
      case EStringUiIds.eStrHistory:
        return 4257937256;
      case EStringUiIds.eStrAlongRoute:
        return 1222742680;
      case EStringUiIds.eStrAroundDest:
        return 1101239995;
      case EStringUiIds.eStrAroundGpsPos:
        return 1825695523;
      case EStringUiIds.eStrCity:
        return 4006909719;
      case EStringUiIds.eStrStreet:
        return 2817692335;
      case EStringUiIds.eStrNumberAbbv:
        return 2595955658;
      case EStringUiIds.eStrCrossing:
        return 2305187662;
      case EStringUiIds.eStrCountries:
        return 2695973000;
      case EStringUiIds.eStrTempAnywhere:
        return 3314859035;
      case EStringUiIds.eStrLocDetails:
        return 4143041422;
      case EStringUiIds.eStrUnnamed:
        return 3048542996;
      case EStringUiIds.eStrCall:
        return 4006901770;
      case EStringUiIds.eStrOpenWebPage:
        return 3482061613;
      case EStringUiIds.eNStrSaveAsContact:
        return 3161495177;
      case EStringUiIds.eStrTempWhatsNearby:
        return 3376192494;
      case EStringUiIds.eStrTempSearchAround:
        return 4247293749;
      case EStringUiIds.eStrTempContactAddError:
        return 119428231;
      case EStringUiIds.eStrEdit:
        return 4006964150;
      case EStringUiIds.eStrTempEditFavorite:
        return 3940239206;
      case EStringUiIds.eStrName:
        return 4007229495;
      case EStringUiIds.eStrZipCode:
        return 3048903554;
      case EStringUiIds.eStrState:
        return 3970202725;
      case EStringUiIds.eStrPhone:
        return 3967087938;
      case EStringUiIds.eStrUrl:
        return 1930388035;
      case EStringUiIds.eStrLatitude:
        return 3036869656;
      case EStringUiIds.eStrLongitude:
        return 1480701827;
      case EStringUiIds.eStrAltitude:
        return 2218431054;
      case EStringUiIds.eStrSave:
        return 4007378729;
      case EStringUiIds.eStrNameNotFilled:
        return 1263636382;
      case EStringUiIds.eStrMyPosition:
        return 4197362593;
      case EStringUiIds.eStrSetDep:
        return 2803867385;
      case EStringUiIds.eStrSetDest:
        return 1020543224;
      case EStringUiIds.eStrAddWpt:
        return 2287161094;
      case EStringUiIds.eStrFromAtoB:
        return 3231631260;
      case EStringUiIds.eStrToB:
        return 1930386939;
      case EStringUiIds.eStrRouteNotValid:
        return 2610307622;
      case EStringUiIds.eStrTempMapLayers:
        return 1945534494;
      case EStringUiIds.eStrTemp3DBuildings:
        return 343923534;
      case EStringUiIds.eStrWeather:
        return 259476168;
      case EStringUiIds.eStrTempMapStyles:
        return 2163491774;
      case EStringUiIds.eStrMap:
        return 1930379824;
      case EStringUiIds.eStrSatellite:
        return 4059199247;
      case EStringUiIds.eStrAllCategories:
        return 2756340337;
      case EStringUiIds.eStrDone:
        return 4006945070;
      case EStringUiIds.eStrCalculating:
        return 1520920439;
      case EStringUiIds.eStrSearching:
        return 3121553166;
      case EStringUiIds.eStrProcessing:
        return 3410901951;
      case EStringUiIds.eStrDel:
        return 1930371295;
      case EStringUiIds.eStrCancel:
        return 2341957926;
      case EStringUiIds.eStrResume:
        return 2775255769;
      case EStringUiIds.eStrGPRSDownloadLimitReached:
        return 204406101;
      case EStringUiIds.eStrNavigation:
        return 556406464;
      case EStringUiIds.eStrTrafficInformation:
        return 156396443;
      case EStringUiIds.eStrTempDay:
        return 1902860796;
      case EStringUiIds.eStrTempDays:
        return 3154109943;
      case EStringUiIds.eStrOk:
        return 2971764360;
      case EStringUiIds.eStrAccept:
        return 2286221236;
      case EStringUiIds.eStrDeny:
        return 4006935480;
      case EStringUiIds.eStrNightColors:
        return 180036732;
      case EStringUiIds.eStr2dPerspective:
        return 1212822622;
      case EStringUiIds.eStr3dPerspective:
        return 919419615;
      case EStringUiIds.eStrTempTimeFormatHour:
        return 3775319752;
      case EStringUiIds.eStrTempTimeFormatMin:
        return 1784357102;
      case EStringUiIds.eStrTempTimeFormatSec:
        return 1784362733;
      case EStringUiIds.eStrNowAdv:
        return 2670043305;
      case EStringUiIds.eStrCardPointN:
        return 3548333210;
      case EStringUiIds.eStrCardPointE:
        return 3548333201;
      case EStringUiIds.eStrCardPointS:
        return 3548333215;
      case EStringUiIds.eStrCardPointW:
        return 3548333219;
      case EStringUiIds.eStrGeneral:
        return 3250854844;
      case EStringUiIds.eStrVolume:
        return 2898799046;
      case EStringUiIds.eStrOn:
        return 2971764363;
      case EStringUiIds.eStrOff:
        return 1930381891;
      case EStringUiIds.eStrTravelMode:
        return 3670416521;
      case EStringUiIds.eStrAskAlways:
        return 3111528380;
      case EStringUiIds.eStrVoiceLanguage:
        return 1684744830;
      case EStringUiIds.eStrAvoid:
        return 3953652041;
      case EStringUiIds.eStrAvoidCarpoolLanes:
        return 3515646944;
      case EStringUiIds.eStrFerries:
        return 2367424012;
      case EStringUiIds.eStrAvoidFerries:
        return 3199616431;
      case EStringUiIds.eStrMotorways:
        return 940717869;
      case EStringUiIds.eStrAvoidMotorways:
        return 1813715472;
      case EStringUiIds.eStrTollRoads:
        return 2547664556;
      case EStringUiIds.eStrAvoidTollRoads:
        return 3420662159;
      case EStringUiIds.eStrTraffic:
        return 2263692497;
      case EStringUiIds.eStrAvoidTraffic:
        return 3095884916;
      case EStringUiIds.eStrUnpavedRoads:
        return 3050611892;
      case EStringUiIds.eStrAvoidUnpavedRoads:
        return 200258289;
      case EStringUiIds.eStrTempSendFeedback:
        return 580086989;
      case EStringUiIds.eNStrDeviceID:
        return 3048204025;
      case EStringUiIds.eStrUnknownErrShort:
        return 3924379477;
      case EStringUiIds.eStrNoGpsSourceEnableSettingsTitle:
        return 3535654554;
      case EStringUiIds.eStrNoGpsSourceEnableSettings:
        return 3021450846;
      case EStringUiIds.eStrFastest:
        return 2253887102;
      case EStringUiIds.eStrShortest:
        return 4134349622;
      case EStringUiIds.eStrEconomic:
        return 1063454625;
      case EStringUiIds.eStrNoSearchResShort:
        return 3998609745;
      case EStringUiIds.eStrGPSDisabledTitle:
        return 108791902;
      case EStringUiIds.eStrGPSDisabled:
        return 4152715802;
      case EStringUiIds.eStrLatLong:
        return 3283683215;
      case EStringUiIds.eStrInvalidCoordinates:
        return 1630896176;
      case EStringUiIds.eStrRename:
        return 2775087594;
      case EStringUiIds.eStrSameName:
        return 2146390973;
      case EStringUiIds.eStrRouteName:
        return 1510801992;
      case EStringUiIds.eStrEditRoute:
        return 3760142387;
      case EStringUiIds.eStrFromAToBViaC:
        return 2715475857;
      case EStringUiIds.eStrToBViaC:
        return 2148701840;
      case EStringUiIds.eStrContinue:
        return 3909645395;
      case EStringUiIds.eStrDoNotShowAgain:
        return 4111232935;
      case EStringUiIds.eStrView:
        return 4007475281;
      case EStringUiIds.eStrEmail:
        return 3957064560;
      case EStringUiIds.eStrInvalidEmail:
        return 3612253585;
      case EStringUiIds.eStrRoute:
        return 3969149469;
      case EStringUiIds.eStrCannotConnectToStore:
        return 4116036715;
      case EStringUiIds.eStrComputerVoices:
        return 3640297256;
      case EStringUiIds.eStrStandard:
        return 1494509161;
      case EStringUiIds.eStrStopRouteCalculation:
        return 2500389518;
      case EStringUiIds.eStrChooseContactAddress:
        return 2582617943;
      case EStringUiIds.eStrSetBlock:
        return 1570426103;
      case EStringUiIds.eStrProductDownloaded:
        return 140441418;
      case EStringUiIds.eStrDemoRouteSimulation:
        return 831617441;
      case EStringUiIds.eStrSaveOneMinute:
        return 1321450225;
      case EStringUiIds.eStrSaveSeveralMinutes:
        return 1997489356;
      case EStringUiIds.eStrSpeedCamera:
        return 4057966368;
      case EStringUiIds.eStrSafetyCams:
        return 2891473186;
      case EStringUiIds.eStrOnRoadName:
        return 881069430;
      case EStringUiIds.eStrMobileDataOff:
        return 3364765239;
      case EStringUiIds.eStrShareThisApp:
        return 1345181552;
      case EStringUiIds.eStrRateThisApp:
        return 2917293687;
      case EStringUiIds.eStrDownloadOverMobileNetworkWarning:
        return 464973336;
      case EStringUiIds.eStrHome:
        return 4007064203;
      case EStringUiIds.eStrWork:
        return 4007511229;
      case EStringUiIds.eStrSetHomeAddress:
        return 3346818815;
      case EStringUiIds.eStrSetWorkAddress:
        return 3581941901;
      case EStringUiIds.eStrTapToSet:
        return 3960358320;
      case EStringUiIds.eStrSetHomeTitle:
        return 2461414435;
      case EStringUiIds.eStrSetWorkTitle:
        return 1433727281;
      case EStringUiIds.eStrUpdateHomeQuerry:
        return 3257386732;
      case EStringUiIds.eStrUpdateWorkQuerry:
        return 1463856030;
      case EStringUiIds.eStrRouteWithTolls:
        return 3159388117;
      case EStringUiIds.eStrRouteWithFerry:
        return 3146166871;
      case EStringUiIds.eStrSmartCarKit:
        return 1489401439;
      case EStringUiIds.eStrSortByName:
        return 1792325484;
      case EStringUiIds.eStrSortByTime:
        return 1792511918;
      case EStringUiIds.eStrSortByDistance:
        return 2637656150;
      case EStringUiIds.eStrSetAlert:
        return 1569493446;
      case EStringUiIds.eStrRadius:
        return 2771103550;
      case EStringUiIds.eStrArrivingMessage:
        return 2479875687;
      case EStringUiIds.eStrLeavingMessage:
        return 4042670687;
      case EStringUiIds.eStrAlerts:
        return 2294605123;
      case EStringUiIds.eStrEditAlert:
        return 3744337734;
      case EStringUiIds.eStrSendFeedbackError:
        return 2189482159;
      case EStringUiIds.eStrAccessContactsError:
        return 2279378757;
      case EStringUiIds.eStrSendLocationDetailsError:
        return 1587704975;
      case EStringUiIds.eStrPhoneCallError:
        return 1374103336;
      case EStringUiIds.eStrUninstallSpeedCams:
        return 727902549;
      case EStringUiIds.eStrUninstallSpeedCamsConfirmation:
        return 565735978;
      case EStringUiIds.eStrResetToDefaults:
        return 97819504;
      case EStringUiIds.eStrRestoreToDefaultsConfirmation:
        return 1672452804;
      case EStringUiIds.eStrFacebook:
        return 679010930;
      case EStringUiIds.eStrTwitter:
        return 2414656839;
      case EStringUiIds.eStrEmailSubjectEnteringArea:
        return 1252140915;
      case EStringUiIds.eStrEmailSubjectLeavingArea:
        return 1012680485;
      case EStringUiIds.eStrNoSearchResAppNotOnlineYet:
        return 4277951832;
      case EStringUiIds.eStrNoSearchResConnectToInternet:
        return 901520571;
      case EStringUiIds.eStrAddressNotLocatedCheckDetails:
        return 3353367457;
      case EStringUiIds.eStrMapsStorage:
        return 43127992;
      case EStringUiIds.eStrInternalPreferred:
        return 3047769112;
      case EStringUiIds.eStrExternalPreferred:
        return 1119123146;
      case EStringUiIds.eStrSaveAsFavourite:
        return 677466542;
      case EStringUiIds.eStrToRecipient:
        return 2653562546;
      case EStringUiIds.eStrCloudBackup:
        return 427068715;
      case EStringUiIds.eStrShowAll:
        return 1103297592;
      case EStringUiIds.eStrShowDownloaded:
        return 2336524464;
      case EStringUiIds.eStrShowDownloading:
        return 3712785905;
      case EStringUiIds.eStrShowFavourites:
        return 883436147;
      case EStringUiIds.eStrShowPOIs:
        return 4137872306;
      case EStringUiIds.eStrShowAlerts:
        return 3248719008;
      case EStringUiIds.eStrShowPlaces:
        return 3678022229;
      case EStringUiIds.eStrShowRoutes:
        return 3738663251;
      case EStringUiIds.eStrSimulationSpeed:
        return 2458096980;
      case EStringUiIds.eStrStopCrtSimulation:
        return 1798143678;
      case EStringUiIds.eStrDemo:
        return 4006935439;
      case EStringUiIds.eStrFullScreen:
        return 2182640775;
      case EStringUiIds.eStrSearchResults:
        return 16901378;
      case EStringUiIds.eStrConnectToInternetToDownloadMaps:
        return 3199942964;
      case EStringUiIds.eStrInsideBuiltUpAreas:
        return 447872533;
      case EStringUiIds.eStrOutsideBuiltUpAreas:
        return 1242759782;
      case EStringUiIds.eStrImportFileQuery:
        return 2166568283;
      case EStringUiIds.eStrCancelPOIImportQuery:
        return 1130987071;
      case EStringUiIds.eStrNoPOIImported:
        return 1606753985;
      case EStringUiIds.eStrPOIImportSuccessful:
        return 2914124637;
      case EStringUiIds.eStrEmailSubjectShareCurrentLocation:
        return 2195685419;
      case EStringUiIds.eStrEmailBodyShareCurrentLocation:
        return 3937543873;
      case EStringUiIds.eStrEmailSubjectSendLocationDetails:
        return 3468430057;
      case EStringUiIds.eStrEmailBodySendLocationDetails:
        return 3108977043;
      case EStringUiIds.eStrFromDeparture:
        return 2812195902;
      case EStringUiIds.eStrToDestination:
        return 3904124519;
      case EStringUiIds.eStrFromGetDirections:
        return 2587268884;
      case EStringUiIds.eStrToGetDirections:
        return 1977376995;
      case EStringUiIds.eStrViaSearchBar:
        return 3360028297;
      case EStringUiIds.eStrNavigate:
        return 2284375325;
      case EStringUiIds.eStrClear:
        return 3955191329;
      case EStringUiIds.eStrEnd:
        return 1930372527;
      case EStringUiIds.eStrOverview:
        return 711996709;
      case EStringUiIds.eStrAppName:
        return 2536866592;
      case EStringUiIds.eStrSupport:
        return 1476235939;
      case EStringUiIds.eStrShareMagicMapsAppMessage:
        return 2946515191;
      case EStringUiIds.eStrAllMaps:
        return 2418626220;
      case EStringUiIds.eStrDownloadedMaps:
        return 4142479626;
      case EStringUiIds.eStrDownloadingMaps:
        return 3427557093;
      case EStringUiIds.eStrBrandName:
        return 555863174;
      case EStringUiIds.eStrThirdPartyLicences:
        return 2051967949;
      case EStringUiIds.eStrContactSupportAt:
        return 3575532494;
      case EStringUiIds.eStrTerrain:
        return 1907566089;
      case EStringUiIds.eStrTerrainAndSatellite:
        return 3341305293;
      case EStringUiIds.eStrLocationWhenInUseUsagePermission:
        return 2710404777;
      case EStringUiIds.eStrDriveVia:
        return 3878558160;
      case EStringUiIds.eStrEveryXTime:
        return 3363843510;
      case EStringUiIds.eStrTowardsXLocation:
        return 649337725;
      case EStringUiIds.eStrNoOfTransfer:
        return 1559453999;
      case EStringUiIds.eStrNoOfTransfers:
        return 1098433828;
      case EStringUiIds.eSTrNoOfStopAndTime:
        return 2833401598;
      case EStringUiIds.eSTrNoOfStopsAndTime:
        return 2194753207;
      case EStringUiIds.eStrNotAllPreferencesMet:
        return 1605828318;
      case EStringUiIds.eStrBestRoute:
        return 2620483737;
      case EStringUiIds.eStrFewerTransfers:
        return 2608392143;
      case EStringUiIds.eStrLessWalking:
        return 2929718900;
      case EStringUiIds.eStrMinTransferTime:
        return 2428346270;
      case EStringUiIds.eStrPreferredMeansOfTransport:
        return 658695513;
      case EStringUiIds.eStrBus:
        return 1930369876;
      case EStringUiIds.eStrUnderground:
        return 3251118899;
      case EStringUiIds.eStrRailway:
        return 9572593;
      case EStringUiIds.eStrTram:
        return 4007424214;
      case EStringUiIds.eStrFerry:
        return 3957766382;
      case EStringUiIds.eStrOtherTransportMeans:
        return 1164555177;
      case EStringUiIds.eStrPreferredAccessibility:
        return 2300340473;
      case EStringUiIds.eStrWheelchair:
        return 347080950;
      case EStringUiIds.eStrBicycle:
        return 3213243347;
      case EStringUiIds.eStrDateTime:
        return 1974630215;
      case EStringUiIds.eStrDepart:
        return 2374339232;
      case EStringUiIds.eStrArrive:
        return 2300524931;
      case EStringUiIds.eStrLast:
        return 4007170114;
      case EStringUiIds.eStrXTimeEarly:
        return 2897985450;
      case EStringUiIds.eStrXTimeLate:
        return 1479165311;
      case EStringUiIds.eStrOnTime:
        return 2696744952;
      case EStringUiIds.eStrBicycleSupport:
        return 1290633340;
      case EStringUiIds.eStrWheelchairSupport:
        return 365112825;
      case EStringUiIds.eStrBicycleAndWheelchairSupport:
        return 3717309313;
      case EStringUiIds.eStrEarlier:
        return 1365224980;
      case EStringUiIds.eStrLater:
        return 3963189856;
      case EStringUiIds.eStrRoutes:
        return 2784549366;
      case EStringUiIds.eStrDistanceTimeWalking:
        return 2701832075;
      case EStringUiIds.eStrDistances:
        return 1695654130;
      case EStringUiIds.eStrInKilometres:
        return 3215160470;
      case EStringUiIds.eStrInMilesFeet:
        return 3550125819;
      case EStringUiIds.eStrInMilesYards:
        return 2697157836;
      case EStringUiIds.eStrVoiceVolume:
        return 2477461440;
      case EStringUiIds.eStrMapLabels:
        return 2037787215;
      case EStringUiIds.eStrAutomatic:
        return 3017007103;
      case EStringUiIds.eStrInLocalLanguage:
        return 101556626;
      case EStringUiIds.eStrBatteryMode:
        return 183768612;
      case EStringUiIds.eStrNormalUsedForVBattery:
        return 4006363280;
      case EStringUiIds.eStrPowerSavingUsedForBattery:
        return 3033826484;
      case EStringUiIds.eStrUltraPowerSavingUsedForBattery:
        return 2017099584;
      case EStringUiIds.eStrGetInTouch:
        return 1659410832;
      case EStringUiIds.eStrSettings:
        return 1616511951;
      case EStringUiIds.eStrAdvancedSettings:
        return 1917723153;
      case EStringUiIds.eStrWarnings:
        return 679971843;
      case EStringUiIds.eStrWarningTiming:
        return 3498248922;
      case EStringUiIds.eStrEarlyUsedForWarningTiming:
        return 741486705;
      case EStringUiIds.eStrNormalUsedForWarningTiming:
        return 1811913421;
      case EStringUiIds.eStrLateUsedForWarningTiming:
        return 1240159756;
      case EStringUiIds.eStrSpeedWarningTolerance:
        return 3902215692;
      case EStringUiIds.eStrDashCamVideoSize:
        return 2581921899;
      case EStringUiIds.eStrVideoLength:
        return 3284155413;
      case EStringUiIds.eStrDepartAt:
        return 1112369907;
      case EStringUiIds.eStrArriveAt:
        return 3191270678;
      case EStringUiIds.eStrDriveTo:
        return 956398713;
      case EStringUiIds.eStrBikeTo:
        return 2320628968;
      case EStringUiIds.eStrWalkTo:
        return 2914488528;
      case EStringUiIds.eStrPublicTransportTo:
        return 2466774831;
      case EStringUiIds.eStrAgencyInfo:
        return 1342207743;
      case EStringUiIds.eStrDefineHomeOnDev:
        return 1515819888;
      case EStringUiIds.eStrDefineWorkOnDev:
        return 488132734;
      case EStringUiIds.eStrPublicTransport:
        return 4226025876;
      case EStringUiIds.eStrPlatformNo:
        return 673787456;
      case EStringUiIds.eStrChangeFromPlatformNoToPlatformNo:
        return 1646257641;
      case EStringUiIds.eStrChangeToPlatformNo:
        return 4219760363;
      case EStringUiIds.eStrGo:
        return 2971764116;
      case EStringUiIds.eStrContinueOnSameVehicle:
        return 294677236;
      case EStringUiIds.eStrScreenAlwaysOn:
        return 698884998;
      case EStringUiIds.eStrScreenOnWhileNavigating:
        return 3593881576;
      case EStringUiIds.eStrScreenTurnOffAutomatically:
        return 1073337417;
      case EStringUiIds.eStrSortByArrivalTime:
        return 2224798309;
      case EStringUiIds.eStrSortByDepartureTime:
        return 3685738016;
      case EStringUiIds.eStrSortByTripDuration:
        return 4216323258;
      case EStringUiIds.eStrStandardMap:
        return 1291502131;
      case EStringUiIds.eStrContactsUsagePermission:
        return 558988369;
      case EStringUiIds.eStrMicrophoneUsagePermission:
        return 4221777306;
      case EStringUiIds.eStrForwardCollisionWarning:
        return 3948313539;
      case EStringUiIds.eStrPedestrianCollisionWarning:
        return 1059264017;
      case EStringUiIds.eStrHeadwayWarning:
        return 501542457;
      case EStringUiIds.eStrLaneDepartureWarning:
        return 3364857792;
      case EStringUiIds.eStrMovingTrafficHaptic:
        return 428333594;
      case EStringUiIds.eStrNearbyVehicleHaptic:
        return 2176892280;
      case EStringUiIds.eStrAudio:
        return 3953611690;
      case EStringUiIds.eStrPlayAsBluetoothPhoneCall:
        return 3273765552;
      case EStringUiIds.eStrMobileData:
        return 867295256;
      case EStringUiIds.eStrUseMobileDataConnection:
        return 3076698725;
      case EStringUiIds.eStrUpdateNow:
        return 3689088801;
      case EStringUiIds.eStrUpdateTonight:
        return 3555748168;
      case EStringUiIds.eStrRemindMeLater:
        return 727752419;
      case EStringUiIds.eStrDangerousHeadway:
        return 1284578065;
      case EStringUiIds.eStrLaneDepartureSolidLine:
        return 4198497379;
      case EStringUiIds.eStrLaneDepartureDashedLine:
        return 2263853217;
      case EStringUiIds.eStrContactPermissionRequiredEnableInSettings:
        return 2736711437;
      case EStringUiIds.eStrRouteCrosesesRestrictedAreas:
        return 3388531743;
      case EStringUiIds.eStrSpeedLimits:
        return 28053523;
      case EStringUiIds.eStrPedestrianCollision:
        return 1886600971;
      case EStringUiIds.eStrWaitingForInternetConnection:
        return 2086216455;
      case EStringUiIds.eStrErrMapDataNotSupportedOnline:
        return 1915707099;
      case EStringUiIds.eStrForwardCollision:
        return 3008691609;
      case EStringUiIds.eStrStopAndGo:
        return 2945568785;
      case EStringUiIds.eStrNavigationAutostart:
        return 4034182451;
      case EStringUiIds.eStrInTenSeconds:
        return 4260710483;
      case EStringUiIds.eStrWhenMoving:
        return 3163650260;
      case EStringUiIds.eStrMapData:
        return 4167241210;
      case EStringUiIds.eStrMapDataOSM:
        return 253274799;
      case EStringUiIds.eStrPreferCurrentRoute:
        return 2352781100;
      case EStringUiIds.eStrPreferFasterRoute:
        return 100370276;
      case EStringUiIds.eStrMobileDataSettingOffInApp:
        return 4024688069;
      case EStringUiIds.eStrMobileDataSettingOnInAppNoInternet:
        return 2697287655;
      case EStringUiIds.eStrMapDataDescription:
        return 2168290722;
      case EStringUiIds.eStrResetStatistics:
        return 3673985702;
      case EStringUiIds.eStrMapDataOff:
        return 253275413;
      case EStringUiIds.eStrSearchPerformedOffline:
        return 3651572343;
      case EStringUiIds.eStrMapDataOffAddressSearch:
        return 2734707623;
      case EStringUiIds.eStrCannotCalculateRouteMissingOfflineMaps:
        return 3786644870;
      case EStringUiIds.eStrDrivingMode:
        return 2855761630;
      case EStringUiIds.eStrMapVersion:
        return 3456670856;
      case EStringUiIds.eStrUpload:
        return 2871087277;
      case EStringUiIds.eStrEnterNameOptional:
        return 3303661527;
      case EStringUiIds.eStrEnterEmailMandatory:
        return 215235433;
      case EStringUiIds.eStrEmailNeededForIssueCommunication:
        return 689332705;
      case EStringUiIds.eStrProblemDescription:
        return 3884810377;
      case EStringUiIds.eStrEnterProblemDescriptionOptional:
        return 2310831657;
      case EStringUiIds.eStrVideoLogs:
        return 2676049566;
      case EStringUiIds.eStrVideoLog:
        return 1333250165;
      case EStringUiIds.eStrCancelUpload:
        return 1343518407;
      case EStringUiIds.eStrUploadVideoLog:
        return 3616225430;
      case EStringUiIds.eStrLogUploaded:
        return 1464642200;
      case EStringUiIds.eStrMapDataCacheSize:
        return 1743166921;
      case EStringUiIds.eStrUpdateAppOldMapsStillSupportedOnline:
        return 2335838795;
      case EStringUiIds.eStrUpdateAppNoOnlineMapsAtAll:
        return 855435767;
      case EStringUiIds.eStrFolder:
        return 2440716058;
      case EStringUiIds.eStrMainFolder:
        return 3076664371;
      case EStringUiIds.eStrMove:
        return 4007213437;
      case EStringUiIds.eStrSelectFolder:
        return 478159414;
      case EStringUiIds.eStrCreateNewFolder:
        return 313971558;
      case EStringUiIds.eStrCreateFolder:
        return 4268068406;
      case EStringUiIds.eStrFolderName:
        return 2160472261;
      case EStringUiIds.eStrRenameFolder:
        return 2711481080;
      case EStringUiIds.eStrTipsAndTricks:
        return 356897715;
      case EStringUiIds.eStrListening:
        return 124620431;
      case EStringUiIds.eStrElevation:
        return 1338956849;
      case EStringUiIds.eStrNearbyPOIs:
        return 3247730484;
      case EStringUiIds.eStrTrafficInformationNotAvailable:
        return 2946739313;
      case EStringUiIds.eStrNoTrafficEvents:
        return 1066467337;
      case EStringUiIds.eStrTrafficMapLayerDisabled:
        return 3011537378;
      case EStringUiIds.eStrNoTrafficDueToOutdatedMaps:
        return 535659230;
      case EStringUiIds.eStrTrafficMobileDataDisabled:
        return 609223865;
      case EStringUiIds.eStrMotionUsagePermission:
        return 753905550;
      case EStringUiIds.eStrPhotoLibraryUsagePermission:
        return 4291832251;
      case EStringUiIds.eStrSpeechRecognitionUsagePermission:
        return 3043930055;
      case EStringUiIds.eStrCameraPermissionForDriverAssistanceAndDashCam:
        return 28181423;
      case EStringUiIds.eStrSpeedWarnings:
        return 523048338;
      case EStringUiIds.eStrRecordingTimeAfterCrash:
        return 3373466877;
      case EStringUiIds.eStrRecordingTimeAfterStandstill:
        return 3527530492;
      case EStringUiIds.eStrHeadUpDisplay:
        return 2866913147;
      case EStringUiIds.eStrTypeParam:
        return 1848294215;
      case EStringUiIds.eStrBikeType:
        return 1036424807;
      case EStringUiIds.eStrRoad:
        return 4007361740;
      case EStringUiIds.eStrCross:
        return 3955380244;
      case EStringUiIds.eStrMountain:
        return 58090041;
      case EStringUiIds.eStrAvoidHills:
        return 90205833;
      case EStringUiIds.eStrHills:
        return 3959726630;
      case EStringUiIds.eStrAllowHills:
        return 1625426229;
      case EStringUiIds.eStrCommonSettings:
        return 485164506;
      case EStringUiIds.eStrSpecificSettings:
        return 926651169;
      case EStringUiIds.eStrPedestrianSettings:
        return 741860650;
      case EStringUiIds.eStrBikeSettings:
        return 2956027088;
      case EStringUiIds.eStrCarSettings:
        return 377033963;
      case EStringUiIds.eStrVoiceAndVolume:
        return 3794312555;
      case EStringUiIds.eStrWarningsVolume:
        return 2272334077;
      case EStringUiIds.eStrBluetooth:
        return 3312218242;
      case EStringUiIds.eStrPlaySoundToPhoneSpeaker:
        return 1216464571;
      case EStringUiIds.eStrCallTimingDelay:
        return 258481391;
      case EStringUiIds.eStrMapUpdateAvailable:
        return 4098692016;
      case EStringUiIds.eStrMapsCanUpdateAutomatically:
        return 3345876877;
      case EStringUiIds.eStrMapUpdateRequiresBackgroundAppRefreshSetting:
        return 807231873;
      case EStringUiIds.eStrWaitingForWiFi:
        return 2648684349;
      case EStringUiIds.eStrCancelUpdate:
        return 1343267215;
      case EStringUiIds.eStrMapUpdate:
        return 2309358361;
      case EStringUiIds.eStrMapUpdateFailedNoWiFi:
        return 2313387244;
      case EStringUiIds.eStrMapUpdateFailedNotCharging:
        return 3076103118;
      case EStringUiIds.eStrMapUpdateFailedAppWasKilled:
        return 3347351419;
      case EStringUiIds.eStrMapUpdateFailedMissingBgndAppRefreshSetting:
        return 609869323;
      case EStringUiIds.eStrMapUpdateComplete:
        return 2881580914;
      case EStringUiIds.eStrMapsAreUpToDate:
        return 2540817781;
      case EStringUiIds.eStrMotorway:
        return 30345734;
      case EStringUiIds.eStrPath:
        return 4007289297;
      case EStringUiIds.eStrRouteProfile:
        return 3603533004;
      case EStringUiIds.eStrClimbDetails:
        return 1527336825;
      case EStringUiIds.eStrSurfaces:
        return 2861232402;
      case EStringUiIds.eStrWays:
        return 4007498000;
      case EStringUiIds.eStrSteepness:
        return 2388953722;
      case EStringUiIds.eStrRating:
        return 2771579977;
      case EStringUiIds.eStartEndPoints:
        return 2100978465;
      case EStringUiIds.eStrStartEndElevation:
        return 3463691032;
      case EStringUiIds.eStrAvgGrade:
        return 2099875793;
      case EStringUiIds.eStrAsphalt:
        return 2623528595;
      case EStringUiIds.eStrPaved:
        return 3966885848;
      case EStringUiIds.eStrUnpaved:
        return 3050398687;
      case EStringUiIds.eStrStateRoad:
        return 3552359717;
      case EStringUiIds.eStrCycleway:
        return 3872327669;
      case EStringUiIds.eStrSingleTrack:
        return 713650871;
      case EStringUiIds.eStrTrafficInfoMsg:
        return 2811423202;
      case EStringUiIds.eStringMetre:
        return 292922841;
      case EStringUiIds.eStrYard:
        return 4007557350;
      case EStringUiIds.eStrStrFoot:
        return 1448202515;
      case EStringUiIds.eStrEG:
        return 2971764014;
      case EStringUiIds.eStrAllowDownloadOverMobileNetwork:
        return 2131991155;
      case EStringUiIds.eStrMapsCanUpdateAutomaticallyGeneric:
        return 1585672586;
      case EStringUiIds.eStrMapUpdateFailedNoInternet:
        return 1768809848;
      case EStringUiIds.eStrUploadAll:
        return 2582402484;
      case EStringUiIds.eStrDeleteUploaded:
        return 2509276119;
      case EStringUiIds.eStrDeleteAll:
        return 984597962;
      case EStringUiIds.eStrWikipedia:
        return 2902327947;
      case EStringUiIds.eStringLegend_Nodes_Restaurant:
        return 2922985991;
      case EStringUiIds.eStrSupportEmail:
        return 1540552377;
      case EStringUiIds.eStrSupportEmailAlpha:
        return 1057887781;
      case EStringUiIds.eStrSupportEmailBeta:
        return 3082189897;
      case EStringUiIds.eStrDebugMode:
        return 1144885354;
      case EStringUiIds.eStrTracks:
        return 2843966260;
      case EStringUiIds.eStrSize:
        return 4007386541;
      case EStringUiIds.eStrUploadTrack:
        return 3510375582;
      case EStringUiIds.eStrTrackName:
        return 2072965194;
      case EStringUiIds.eStrPrivacyFirstTitle:
        return 2437766404;
      case EStringUiIds.eStrPrivacyFirstMessage:
        return 4198514611;
      case EStringUiIds.eStrPrivacyFirstMessage1:
        return 1304934110;
      case EStringUiIds.eStrPrivacyFirstMessage2:
        return 1304934111;
      case EStringUiIds.eStrNavigationDisclaimerTitle:
        return 2387365533;
      case EStringUiIds.eStrNavigationDisclaimerMessage:
        return 3007917836;
      case EStringUiIds.eStrRecording:
        return 2336893893;
      case EStringUiIds.eStrSaveRecording:
        return 895016136;
      case EStringUiIds.eStrReportEvent:
        return 2185090714;
      case EStringUiIds.eStrIn:
        return 2971764177;
      case EStringUiIds.eStrOutIn:
        return 3966555367;
      case EStringUiIds.eStrReportSent:
        return 625077144;
      case EStringUiIds.eStrReportScheduled:
        return 3767608493;
      case EStringUiIds.eStrReportLimitReached:
        return 2934711575;
      case EStringUiIds.eStrCaution:
        return 3888194111;
      case EStringUiIds.eStrAIDashCam:
        return 3597154185;
      case EStringUiIds.eStrDriverAssistance:
        return 2975606060;
      case EStringUiIds.eStrTakeScreenshot:
        return 3193221113;
      case EStringUiIds.eStrTakePhoto:
        return 2828174271;
      case EStringUiIds.eStrAddMark:
        return 2182204898;
      case EStringUiIds.eStrRecordingSavedToPhotos:
        return 1838277310;
      case EStringUiIds.eStrNoSpaceForRecording:
        return 504500321;
      case EStringUiIds.eStrNoBatteryForRecording:
        return 3573580328;
      case EStringUiIds.eStrRecordingInterruptedDueToSystemFailure:
        return 2578904361;
      case EStringUiIds.eStrRecordingInterruptedDueToOtherAppMicrophoneUsage:
        return 2152842420;
      case EStringUiIds.eStrRecordingInterruptedDueToOtherAppCameraUsage:
        return 935999001;
      case EStringUiIds.eStrRecordingNotAvailableWhileManyAppsInForeground:
        return 1698819023;
      case EStringUiIds.eStrRecordingInterruptedToPreventDeviceOverheating:
        return 4149868072;
      case EStringUiIds.eStrAdasDisabledToPreventDeviceOverheating:
        return 3579742152;
      case EStringUiIds.eStrOSMMode:
        return 1214431008;
      case EStringUiIds.eStrPermissionsRequired:
        return 873805079;
      case EStringUiIds.eStrAIDashCamPermissions:
        return 2284684603;
      case EStringUiIds.eStrCameraPermission:
        return 2567067264;
      case EStringUiIds.eStrMicrophonePermission:
        return 2981459013;
      case EStringUiIds.eStrRecordingCouldNotBeSaved:
        return 1229203149;
      case EStringUiIds.eStrThanks:
        return 2834741621;
      case EStringUiIds.eStrNotThere:
        return 1747906301;
      case EStringUiIds.eStrDebug:
        return 3955904039;
      case EStringUiIds.eStrInTrafficInfoMsg:
        return 3067765607;
      case EStringUiIds.eStrUseAIDashCamWhileDriving:
        return 3983342096;
      case EStringUiIds.eStrTurnOnLocationHighAccuracy:
        return 2724468504;
      case EStringUiIds.eStrPoisImportRequiresStoragePermission:
        return 1227050146;
      case EStringUiIds.eStrMapCamera:
        return 1780452725;
      case EStringUiIds.eStrLiveMode:
        return 1599361115;
      case EStringUiIds.eStrLoading:
        return 3667653648;
      case EStringUiIds.eStrEndRoute:
        return 1895289306;
      case EStringUiIds.eStrWarningType:
        return 1974603210;
      case EStringUiIds.eStrVoiceMessage:
        return 4109364257;
      case EStringUiIds.eStrBeep:
        return 4006875610;
      case EStringUiIds.eStrSendReport:
        return 3431159688;
      case EStringUiIds.eStrNotAvailable:
        return 2479689442;
      case EStringUiIds.eNStrError:
        return 4205982208;
      case EStringUiIds.eStrSystem:
        return 2822354139;
      case EStringUiIds.eStrUnsaved:
        return 3053169250;
      case EStringUiIds.eStrImportFavourites:
        return 1580209691;
      case EStringUiIds.eStrImportFavouritesAction:
        return 3424927793;
      case EStringUiIds.eStrOverwrite:
        return 598256991;
      case EStringUiIds.eStrMerge:
        return 3964230668;
      case EStringUiIds.eStrNoFavouriteImported:
        return 540882912;
      case EStringUiIds.eStrFavouritesSuccessfullyImported:
        return 2575007873;
      case EStringUiIds.eStrMyFavourites:
        return 4191144290;
      case EStringUiIds.eStrTapOnFavouritesFile:
        return 1744229340;
      case EStringUiIds.eStrReportEvents:
        return 3313302809;
      case EStringUiIds.eStrActionCanNotBeUndone:
        return 2020328259;
      case EStringUiIds.eStrDeleteOneItem:
        return 371526210;
      case EStringUiIds.eStrDeleteManyItems:
        return 3720142346;
      case EStringUiIds.eStrCancelMapUpdate:
        return 3978620607;
      case EStringUiIds.eStrRemoveNextWaypoint:
        return 2849938276;
      case EStringUiIds.eStrRemoveNextWaypointQuery:
        return 4284156868;
      case EStringUiIds.eStrShowTrafficDelaysLongerThan:
        return 1189361166;
      case EStringUiIds.eStrCopyCoordinates:
        return 575694362;
      case EStringUiIds.eStrSendMyLocation:
        return 3192741333;
      case EStringUiIds.eStrLocationPermission:
        return 613516304;
      case EStringUiIds.eStrExitApplication:
        return 131511334;
      case EStringUiIds.eStrWidth:
        return 3973571994;
      case EStringUiIds.eStrHeight:
        return 2488652755;
      case EStringUiIds.eStrWeight:
        return 2918090020;
      case EStringUiIds.eStrAxleWeight:
        return 236351284;
      case EStringUiIds.eNStrActivationFailed:
        return 607374843;
      case EStringUiIds.eStrSelect:
        return 2803660712;
      case EStringUiIds.eStrTempDldMissingItemsTitle:
        return 3902520482;
      case EStringUiIds.eStrAroundDeparture:
        return 3382876283;
      case EStringUiIds.eStrPreferredVehicle:
        return 1594495767;
      case EStringUiIds.eStrGpsInformation:
        return 970077390;
      case EStringUiIds.eStrHourly:
        return 2498256157;
      case EStringUiIds.eStrDaily:
        return 3955791341;
      case EStringUiIds.eStrGPSAccuracyIsNotGoodEnough:
        return 407917855;
      case EStringUiIds.eStrAllowAudioRecording:
        return 2347361080;
      case EStringUiIds.eStrCameraHeight:
        return 1846747736;
      case EStringUiIds.eStrFixedCameraHeight:
        return 2220283924;
      case EStringUiIds.eStrVehicleWidth:
        return 1071766438;
      case EStringUiIds.eStrCameraLateralDisplacement:
        return 3717745117;
      case EStringUiIds.eStrConnectedToAndroidAuto:
        return 991339878;
      case EStringUiIds.eStrDisconnect:
        return 3519112520;
      case EStringUiIds.eStrIAmNotDriving:
        return 1041983901;
      case EStringUiIds.eStrIAmNotDrivingExplanation:
        return 692770876;
      case EStringUiIds.eStrTapSearchForKeyboard:
        return 3892098385;
      case EStringUiIds.eStrNavigationRequiresHighAccuracyLocation:
        return 2871892286;
      case EStringUiIds.eStrLocationNotEnabledOnPhone:
        return 1217565856;
      case EStringUiIds.eStrLocationPermissionRequiredOnPhone:
        return 141791232;
      case EStringUiIds.eStrHighAccuracyLocationPermissionExplanation:
        return 1845575406;
      case EStringUiIds.eStrBluetoothConnectPermissionExplanation:
        return 106644386;
      case EStringUiIds.eStrReadPhoneStatePermissionExplanation:
        return 3580759333;
      case EStringUiIds.eStrDriveToWaypoint:
        return 263806874;
      case EStringUiIds.eStrDriveViaWaypoint:
        return 758822385;
      case EStringUiIds.eStrShare:
        return 3969845171;
      case EStringUiIds.eStrShareRouteSubject:
        return 457649654;
      case EStringUiIds.eStrShareRouteMessage:
        return 3280459985;
      case EStringUiIds.eStrGPXTracks:
        return 854056939;
      case EStringUiIds.eStrScheduled:
        return 1182625409;
      case EStringUiIds.eStrDeparted:
        return 1112371007;
      case EStringUiIds.eStrArrived:
        return 2596796225;
      case EStringUiIds.eStrCheckGoogleLocationAccuracySetting:
        return 3871802541;
      case EStringUiIds.eStrCheckGoogleLocationAccuracySettingOnPhone:
        return 110197090;
      case EStringUiIds.eStrLocalTime:
        return 138127020;
      case EStringUiIds.eStrUpdatedAt:
        return 3689108514;
      case EStringUiIds.eStrMoviesCount:
        return 2104710240;
      case EStringUiIds.eStrStillHeadingTo:
        return 2935783937;
      case EStringUiIds.eStrNoItems:
        return 1126002003;
      case EStringUiIds.eStrBackgroundGPSPermissionExplanation:
        return 1599574586;
      case EStringUiIds.eStrLatLonFormat:
        return 1541019119;
      case EStringUiIds.eStrDecimalDegrees:
        return 3592329538;
      case EStringUiIds.eStrQuickInput:
        return 352909961;
      case EStringUiIds.eStrDetailedInput:
        return 3717932238;
      case EStringUiIds.eStrPleaseEnsure:
        return 2070812276;
      case EStringUiIds.eStrFieldInInterval:
        return 462777464;
      case EStringUiIds.eStrMinuteAndSecond:
        return 3908156491;
      case EStringUiIds.eStrAllowAllTheTime:
        return 2660488442;
      case EStringUiIds.eStrWhatsNew:
        return 2116642973;
      case EStringUiIds.eStrAndroidAuto:
        return 3392553362;
      case EStringUiIds.eStrTruckNavigation:
        return 221804199;
      case EStringUiIds.eStrPublicTransportStationInfo:
        return 3431774670;
      case EStringUiIds.eStrRestoreInterruptedNavigation:
        return 1556325812;
      case EStringUiIds.eStrShareRoute:
        return 1188598358;
      case EStringUiIds.eStrChangeButtonsOrder:
        return 1882284233;
      case EStringUiIds.eStrDayStyle:
        return 2102121249;
      case EStringUiIds.eStrDayStyles:
        return 741249394;
      case EStringUiIds.eStrNightStyle:
        return 2376049957;
      case EStringUiIds.eStrNightStyles:
        return 643104750;
      case EStringUiIds.eStrMaps:
        return 4007199811;
      case EStringUiIds.eStrGetStarted:
        return 2128382199;
      case EStringUiIds.eStrNeuralNetworkEngineType:
        return 3992297535;
      case EStringUiIds.eStrTensorflowLite:
        return 3242031361;
      case EStringUiIds.eStrSnapdragonNeuralProcessingEngine:
        return 2189389181;
      case EStringUiIds.eStrImageProcessing:
        return 1892154786;
      case EStringUiIds.eStrAcceptAppDisclaimer:
        return 1968747336;
      case EStringUiIds.eStrAddingAlertRequiresLocationPermission:
        return 2800337441;
      case EStringUiIds.eStrDriverBehavior:
        return 2991906118;
      case EStringUiIds.eStrInstantAnalysis:
        return 2242792113;
      case EStringUiIds.eStrInstant:
        return 993605813;
      case EStringUiIds.eStrOngoingAnalysis:
        return 1809986123;
      case EStringUiIds.eStrLastAnalysis:
        return 364365118;
      case EStringUiIds.eStrOverallAnalysis:
        return 175969565;
      case EStringUiIds.eStrAverage:
        return 2699555057;
      case EStringUiIds.eStrAggregates:
        return 4124231488;
      case EStringUiIds.eStrAggregateScore:
        return 3003705023;
      case EStringUiIds.eStrOverallScore:
        return 2192993265;
      case EStringUiIds.eStrRange:
        return 3968725265;
      case EStringUiIds.eStrTransportMode:
        return 435457088;
      case EStringUiIds.eStrRangeType:
        return 591725547;
      case EStringUiIds.eStrRangeValue:
        return 1164751584;
      case EStringUiIds.eStrBikeWeight:
        return 3934007909;
      case EStringUiIds.eStrBikerWeight:
        return 3778479965;
      case EStringUiIds.eStrAdd:
        return 1930368373;
      case EStringUiIds.eStrWattHour:
        return 741789562;
      case EStringUiIds.eStrKg:
        return 2971764232;
      case EStringUiIds.eStrTruckProfile:
        return 999726582;
      case EStringUiIds.eStrMaxSpeed:
        return 578777327;
      case EStringUiIds.eStrSpeeding:
        return 2345674215;
      case EStringUiIds.eStrSpeedVariation:
        return 691730488;
      case EStringUiIds.eStrHarshAcceleration:
        return 1299581986;
      case EStringUiIds.eStrHarshBraking:
        return 1182782534;
      case EStringUiIds.eStrCornering:
        return 19609409;
      case EStringUiIds.eStrTailgating:
        return 858138564;
      case EStringUiIds.eStrFatigue:
        return 2254484891;
      case EStringUiIds.eStrTrafficSignRecognition:
        return 1936418985;
      case EStringUiIds.eStrNorthUp:
        return 1163868500;
      case EStringUiIds.eStrLockVideo:
        return 404721636;
      case EStringUiIds.eStrCopyrightWebsite:
        return 1570398848;
      case EStringUiIds.eStrDownloadableContent:
        return 1386472715;
      case EStringUiIds.eStrDownloadableContentOff:
        return 4003213412;
      case EStringUiIds.eStrPostNotificationsPermissionExplanation:
        return 1293362222;
      case EStringUiIds.eStrAppCanNotWriteOnSDCard:
        return 3966825287;
      case EStringUiIds.eStrRecents:
        return 118331468;
      case EStringUiIds.eStrFolders:
        return 2647753881;
      case EStringUiIds.eStrAccessible:
        return 1847306338;
      case EStringUiIds.eStrCameraView:
        return 976643094;
      case EStringUiIds.eStrVoices:
        return 2898692141;
      case EStringUiIds.eStrDefaultStyles:
        return 2871822935;
      case EStringUiIds.eStrCustomStyles:
        return 3497232735;
      case EStringUiIds.eStrMapStyle:
        return 349882721;
      case EStringUiIds.eStrFollowMapStyle:
        return 282507058;
      case EStringUiIds.eStrFollowMapStyleDescription:
        return 2817679722;
      case EStringUiIds.eStrAudioRecording:
        return 4216703335;
      case EStringUiIds.eStrRender:
        return 2775090242;
      case EStringUiIds.eStrRenderMode:
        return 4182589701;
      case EStringUiIds.eStrConfiguration:
        return 3830585546;
      case EStringUiIds.eStrParameters:
        return 3447443094;
      case EStringUiIds.eStrReset:
        return 3968849187;
      case EStringUiIds.eStrIgnoredStopSigns:
        return 1892097646;
      case EStringUiIds.eStrSwerving:
        return 4275774697;
      case EStringUiIds.eStrTotal:
        return 3970994968;
      case EStringUiIds.eStrReported:
        return 4049808511;
      case EStringUiIds.eStrFasterBy:
        return 1151021036;
      case EStringUiIds.eStrStillHere:
        return 1839579020;
      case EStringUiIds.eStrCleared:
        return 4187780736;
      case EStringUiIds.eStrAudioRecordings:
        return 1868784620;
      case EStringUiIds.eStrTimestamp:
        return 1398462186;
      case EStringUiIds.eStrUsage:
        return 3972019573;
      case EStringUiIds.eStrDiscoverAIDashCam:
        return 4021199264;
      case EStringUiIds.eStrAutoRecordingDescription:
        return 2984251718;
      case EStringUiIds.eStrUpdatingToVersion:
        return 2604971787;
      case EStringUiIds.eStrImporting:
        return 1134818289;
      case EStringUiIds.eStrLowDiskSpace:
        return 2447669793;
      case EStringUiIds.eStrRecordingDidStop:
        return 2521054620;
      case EStringUiIds.eStrCoolDownDevice:
        return 1214531693;
      case EStringUiIds.eStrIgnoreRestrictions:
        return 2350919109;
      case EStringUiIds.eStrVideoCouldNotBeLocked:
        return 4259106830;
      case EStringUiIds.eStrVideoCouldNotBeUploaded:
        return 3846965860;
      case EStringUiIds.eStrIgnoreRestrictionsDescription:
        return 3259310327;
      case EStringUiIds.eStrAddStop:
        return 2182401815;
      case EStringUiIds.eStrPlayVideo:
        return 3752142715;
      case EStringUiIds.eStrPlayLog:
        return 2837411396;
      case EStringUiIds.eStrGrantAccess:
        return 2158274164;
      case EStringUiIds.eStrNotNow:
        return 2669966767;
      case EStringUiIds.eStrShowTrip:
        return 4138026094;
      case EStringUiIds.eStrShowTripsHistory:
        return 2838010639;
      case EStringUiIds.eStrShowVideo:
        return 3726331218;
      case EStringUiIds.eStrImportSucceeded:
        return 146519824;
      case EStringUiIds.eStrImportFailed:
        return 670201326;
      case EStringUiIds.eStrAudioMarks:
        return 225921468;
      case EStringUiIds.eStrImport:
        return 2524886609;
      case EStringUiIds.eStrImportTripsHistory:
        return 2422488247;
      case EStringUiIds.eStrImportTrip:
        return 819006998;
      case EStringUiIds.eStrImportVideo:
        return 3915954346;
      case EStringUiIds.eStrCheckSettings:
        return 1452155167;
      case EStringUiIds.eStrRemoveCategoryMsg:
        return 2333472851;
      case EStringUiIds.eStrDeleteFolder:
        return 1972237221;
      case EStringUiIds.eStrDeleteAllHistoryMsg:
        return 1359904695;
      case EStringUiIds.eStrDeleteAllFavouritesMsg:
        return 4059118733;
      case EStringUiIds.eStrClearHistoryAndData:
        return 1351068526;
      case EStringUiIds.eStrDeleteAllDriverBehaviorDataMsg:
        return 2431968211;
      case EStringUiIds.eStrViewTerms:
        return 4054690742;
      case EStringUiIds.eStrDeleteAllRecentsMsg:
        return 4054811731;
      case EStringUiIds.eStrNewVersionAvailable:
        return 1664459621;
      case EStringUiIds.eStrVersion:
        return 3682611116;
      case EStringUiIds.eStrMapUpdateFailed:
        return 2404322486;
      case EStringUiIds.eStrNoOfflineMaps:
        return 3848448621;
      case EStringUiIds.eStrAutoStartStop:
        return 2968853097;
      case EStringUiIds.eStrUseMapMatchedPos:
        return 543794801;
      case EStringUiIds.eStrAIDashCamDescription:
        return 3721401523;
      case EStringUiIds.eStrDriverBehaviorDescription:
        return 3290523350;
      case EStringUiIds.eStrDiscoverAIDashCamMsg:
        return 319531457;
      case EStringUiIds.eStrCloudBackupDescription:
        return 1435977169;
      case EStringUiIds.eStrPreferOtherTransportation:
        return 957859392;
      case EStringUiIds.eStrApplicationEncounteredProblem:
        return 4070405745;
      case EStringUiIds.eStrReportNotFoundOrExpired:
        return 274211859;
      case EStringUiIds.eStrVideoFileInvalid:
        return 2761364748;
      case EStringUiIds.eStrFolderNameInUseMsg:
        return 972190180;
      case EStringUiIds.eStrFileSameNameMsg:
        return 2056587624;
      case EStringUiIds.eStrCarPlayRouteTransportModeNotAvailable:
        return 2155220117;
      case EStringUiIds.eStrRemoveHomeMsg:
        return 4186013906;
      case EStringUiIds.eStrRemoveWorkMsg:
        return 323496288;
      case EStringUiIds.eStrDisclaimer:
        return 3421078087;
      case EStringUiIds.eStrOnline:
        return 2697459967;
      case EStringUiIds.eStrOffline:
        return 1782390967;
      case EStringUiIds.eStrTempMore:
        return 3154391285;
      case EStringUiIds.eStrViaGetDirections:
        return 1897917192;
      case EStringUiIds.eStrLearnMore:
        return 2898192781;
      case EStringUiIds.eStrDriverAssistanceDescription:
        return 422728496;
      case EStringUiIds.eStrImportLandmark:
        return 1821303977;
      case EStringUiIds.eStrImportKml:
        return 1134789433;
      case EStringUiIds.eStrDriver:
        return 2386156244;
      case EStringUiIds.eStrLane:
        return 4007169944;
      case EStringUiIds.eStrNewVersionAvailableShort:
        return 754206743;
      default:
        return -1;
    }
  }

  static EStringUiIds fromId(int id) {
    switch (id) {
      case 3611718958:
        return EStringUiIds.eStringNone;
      case 3954178123:
        return EStringUiIds.eStringTurnNone;
      case 3336167726:
        return EStringUiIds.eStringTurnWaypointStart;
      case 107618742:
        return EStringUiIds.eStringTurnWaypointStop;
      case 1036399245:
        return EStringUiIds.eStringTurnStraight;
      case 2323946345:
        return EStringUiIds.eStringTurnRight;
      case 3954108698:
        return EStringUiIds.eStringTurnLeft;
      case 3171957002:
        return EStringUiIds.eStringTurnLightLeft;
      case 3847047545:
        return EStringUiIds.eStringTurnLightRight;
      case 2582565669:
        return EStringUiIds.eStringTurnSharpRight;
      case 914409950:
        return EStringUiIds.eStringTurnSharpLeft;
      case 1415296556:
        return EStringUiIds.eStringTurnRoundaboutExitRight;
      case 184019447:
        return EStringUiIds.eStringTurnRoundaboutExitLeft;
      case 3923323282:
        return EStringUiIds.eStringTurnRoundabout;
      case 3909670913:
        return EStringUiIds.eStringTurnRoundRight;
      case 2481240450:
        return EStringUiIds.eStringTurnRoundLeft;
      case 1104643691:
        return EStringUiIds.eStringTurnExitRight;
      case 1420924376:
        return EStringUiIds.eStringTurnExitLeft;
      case 3998059137:
        return EStringUiIds.eStringInfoSign;
      case 649208598:
        return EStringUiIds.eStringTurnDriveOn;
      case 2964603861:
        return EStringUiIds.eStringTurnExitNr;
      case 2660127378:
        return EStringUiIds.eStringTurnIntoRoundabout;
      case 910363271:
        return EStringUiIds.eStringTurnBoatFerry;
      case 1707383669:
        return EStringUiIds.eStringTurnRailFerry;
      case 3997843120:
        return EStringUiIds.eStringInfoLane;
      case 273348243:
        return EStringUiIds.eStringInfoGeneric;
      case 3067248033:
        return EStringUiIds.eStringHINT_RT_FASTEST_AUTOMOBILE;
      case 4122764171:
        return EStringUiIds.eStringHINT_RT_SHORTEST_AUTOMOBILE;
      case 697272239:
        return EStringUiIds.eStringHINT_RT_FASTEST_TRUCK;
      case 1465128837:
        return EStringUiIds.eStringHINT_RT_SHORTEST_TRUCK;
      case 191675638:
        return EStringUiIds.eStringHINT_RT_PEDESTRIAN;
      case 1122640798:
        return EStringUiIds.eStringRoundaboutExit1;
      case 1122640799:
        return EStringUiIds.eStringRoundaboutExit2;
      case 1122640800:
        return EStringUiIds.eStringRoundaboutExit3;
      case 1122640801:
        return EStringUiIds.eStringRoundaboutExit4;
      case 1122640802:
        return EStringUiIds.eStringRoundaboutExit5;
      case 1122640803:
        return EStringUiIds.eStringRoundaboutExit6;
      case 1122640804:
        return EStringUiIds.eStringRoundaboutExit7;
      case 1122640805:
        return EStringUiIds.eStringRoundaboutExit8;
      case 1122640827:
        return EStringUiIds.eStringRoundaboutExitN;
      case 21278871:
        return EStringUiIds.eStringNodeNearby;
      case 1967168301:
        return EStringUiIds.eStringUnnamedStreet;
      case 976152151:
        return EStringUiIds.eStringLEGEND_ROADS;
      case 960545418:
        return EStringUiIds.eStringLEGEND_AREAS;
      case 2620617491:
        return EStringUiIds.eStringLEGEND_NODES_CITIES;
      case 3518342970:
        return EStringUiIds.eStringLEGEND_NODES_CITIES_DISTRICT;
      case 3964232541:
        return EStringUiIds.eStrMeter;
      case 2971764238:
        return EStringUiIds.eStrKm;
      case 2971764663:
        return EStringUiIds.eStrYd;
      case 2971764296:
        return EStringUiIds.eStrMi;
      case 2971764090:
        return EStringUiIds.eStrFt;
      case 1930380281:
        return EStringUiIds.eStrMph;
      case 1930378234:
        return EStringUiIds.eStrKmH;
      case 1930386983:
        return EStringUiIds.eStrTon;
      case 3803955128:
        return EStringUiIds.eStringR66LANE_01;
      case 3803955129:
        return EStringUiIds.eStringR66LANE_02;
      case 3803955130:
        return EStringUiIds.eStringR66LANE_03;
      case 3803955131:
        return EStringUiIds.eStringR66LANE_04;
      case 3803955132:
        return EStringUiIds.eStringR66LANE_05;
      case 3803955133:
        return EStringUiIds.eStringR66LANE_06;
      case 3803955134:
        return EStringUiIds.eStringR66LANE_07;
      case 3803955135:
        return EStringUiIds.eStringR66LANE_08;
      case 3803955136:
        return EStringUiIds.eStringR66LANE_09;
      case 3803955158:
        return EStringUiIds.eStringR66LANE_10;
      case 3803955159:
        return EStringUiIds.eStringR66LANE_11;
      case 3803955160:
        return EStringUiIds.eStringR66LANE_12;
      case 3803955161:
        return EStringUiIds.eStringR66LANE_13;
      case 3803955162:
        return EStringUiIds.eStringR66LANE_14;
      case 3803955163:
        return EStringUiIds.eStringR66LANE_15;
      case 439669303:
        return EStringUiIds.eStrLmcAccomodation;
      case 390032631:
        return EStringUiIds.eStrLmcBussiness;
      case 2470423456:
        return EStringUiIds.eStrLmcCommunication;
      case 3480500856:
        return EStringUiIds.eStrLmcEducationalInstitute;
      case 4005714770:
        return EStringUiIds.eStrLmcEntertainment;
      case 3059152258:
        return EStringUiIds.eStrLmcFoodAndBeverage;
      case 1229315205:
        return EStringUiIds.eStrLmcGeographicalArea;
      case 1395240915:
        return EStringUiIds.eStrLmcOutdoorActivities;
      case 455124485:
        return EStringUiIds.eStrLmcPeople;
      case 2460135382:
        return EStringUiIds.eStrLmcPublicService;
      case 2119124913:
        return EStringUiIds.eStrLmcReligiousPlaces;
      case 2884067166:
        return EStringUiIds.eStrLmcShopping;
      case 2572864726:
        return EStringUiIds.eStrLmcSightseeing;
      case 551172853:
        return EStringUiIds.eStrLmcSports;
      case 2353088499:
        return EStringUiIds.eStrLmcTransport;
      case 2746368880:
        return EStringUiIds.eStringMpROUTE66;
      case 3424859766:
        return EStringUiIds.eStringMpNAVTEQ;
      case 2752585224:
        return EStringUiIds.eStringMpTELEATLAS;
      case 499652648:
        return EStringUiIds.eStringMpNAV2;
      case 3091453124:
        return EStringUiIds.eStringMpNAVTURK;
      case 3424861122:
        return EStringUiIds.eStringMpNAVURI;
      case 3919691788:
        return EStringUiIds.eStringMpTRANSNAVICOM;
      case 3798673427:
        return EStringUiIds.eStringMpSUNCART;
      case 1309645832:
        return EStringUiIds.eStringMpMAPMYINDIA;
      case 3571460442:
        return EStringUiIds.eStringMpSENSIS;
      case 2422119628:
        return EStringUiIds.eStringMpMICROPARTES;
      case 499779473:
        return EStringUiIds.eStringMpRITU;
      case 293214000:
        return EStringUiIds.eStringMpOSM;
      case 650201247:
        return EStringUiIds.eStringMpKINGWAY;
      case 1814873121:
        return EStringUiIds.eStringMpVIETMAP;
      case 2723145390:
        return EStringUiIds.eStringMpCopyright;
      case 1978815544:
        return EStringUiIds.eStrDistanceTillDestination;
      case 2265787625:
        return EStringUiIds.eStrIntermediateDestinationReached;
      case 228998672:
        return EStringUiIds.eStrDestinationReached;
      case 2834351777:
        return EStringUiIds.eStrDestinationRestrictedAccess;
      case 4007414729:
        return EStringUiIds.eStrThen;
      case 2468711272:
        return EStringUiIds.eStrAndThen;
      case 2108748149:
        return EStringUiIds.eStrThenImmediately;
      case 1930381226:
        return EStringUiIds.eStrNow;
      case 3953225109:
        return EStringUiIds.eStrAhead;
      case 2724026006:
        return EStringUiIds.eStrPlease;
      case 961608477:
        return EStringUiIds.eStrFollowRoad;
      case 4015549843:
        return EStringUiIds.eStrFollowRoadTillNewInstructions;
      case 2874733555:
        return EStringUiIds.eStrAtSecondRoad;
      case 47846152:
        return EStringUiIds.eStrAtThirdRoad;
      case 3003873574:
        return EStringUiIds.eStrEnterMotorway;
      case 1930368683:
        return EStringUiIds.eStrAnd;
      case 3831696881:
        return EStringUiIds.eStrTakeExit;
      case 2327240443:
        return EStringUiIds.eStrTakeFirstExit;
      case 4033102405:
        return EStringUiIds.eStrTakeSecondExit;
      case 1608867378:
        return EStringUiIds.eStrTakeThirdExit;
      case 1246962923:
        return EStringUiIds.eStrTakeFourthExit;
      case 284677762:
        return EStringUiIds.eStrTakeFifthExit;
      case 1352770593:
        return EStringUiIds.eStrTakeSixthExit;
      case 730876876:
        return EStringUiIds.eStrTakeSeventhExit;
      case 1922062975:
        return EStringUiIds.eStrTurnArroundWhenPossible;
      case 2599481112:
        return EStringUiIds.eStrMakeUTurn;
      case 2306298110:
        return EStringUiIds.eStrAtRoundabout;
      case 2546954757:
        return EStringUiIds.eStrLeaveMotorway;
      case 2561171670:
        return EStringUiIds.eStrChangeMotorway;
      case 221189784:
        return EStringUiIds.eStrAfterOneKm;
      case 3738272017:
        return EStringUiIds.eStrAfterQuarterMile;
      case 3242096824:
        return EStringUiIds.eStrAfterHalfMile;
      case 2110044107:
        return EStringUiIds.eStrAfterOneMile;
      case 1184591484:
        return EStringUiIds.eStrAfterTwo;
      case 225641934:
        return EStringUiIds.eStrAfterThree;
      case 2362173174:
        return EStringUiIds.eStrAfterFour;
      case 2362167426:
        return EStringUiIds.eStrAfterFive;
      case 212731384:
        return EStringUiIds.eStrAfterFifty;
      case 401895006:
        return EStringUiIds.eStrAfterHundred;
      case 437490186:
        return EStringUiIds.eStrAfterHundredFifty;
      case 3664544417:
        return EStringUiIds.eStrAfterTwoHundreds;
      case 3051138983:
        return EStringUiIds.eStrAfterTwoHundredsFifty;
      case 3047729139:
        return EStringUiIds.eStrAfterThreeHundreds;
      case 2906775835:
        return EStringUiIds.eStrAfterFourHundreds;
      case 2629140135:
        return EStringUiIds.eStrAfterFiveHundreds;
      case 535529271:
        return EStringUiIds.eStrAfterSixHundreds;
      case 973824866:
        return EStringUiIds.eStrAfterSevenHundreds;
      case 3937931748:
        return EStringUiIds.eStrAfterEightHundreds;
      case 938942631:
        return EStringUiIds.eStrAfterNineHundreds;
      case 3540945595:
        return EStringUiIds.eStrStraightAhead;
      case 3767835804:
        return EStringUiIds.eStrBearRight;
      case 1506833799:
        return EStringUiIds.eStrBearLeft;
      case 2462080859:
        return EStringUiIds.eStrTurnSharpRight;
      case 1741807336:
        return EStringUiIds.eStrTurnSharpLeft;
      case 3444695811:
        return EStringUiIds.eStrTurnSlightlyRight;
      case 1219315264:
        return EStringUiIds.eStrTurnSlightlyLeft;
      case 1206764915:
        return EStringUiIds.eStrTurnRight;
      case 315839952:
        return EStringUiIds.eStrTurnLeft;
      case 3814638910:
        return EStringUiIds.eStrStayInRightLane;
      case 1337664701:
        return EStringUiIds.eStrStayInLeftLane;
      case 3810439372:
        return EStringUiIds.eStrGoRightThenLeft;
      case 268943492:
        return EStringUiIds.eStrGoLeftThenRight;
      case 2818852519:
        return EStringUiIds.eStrTakeFerry;
      case 2832152469:
        return EStringUiIds.eStrTakeTrain;
      case 2632136688:
        return EStringUiIds.eStrMetres;
      case 528511121:
        return EStringUiIds.eStrKilometres;
      case 3975193677:
        return EStringUiIds.eStrYards;
      case 3964344018:
        return EStringUiIds.eStrMiles;
      case 4006994778:
        return EStringUiIds.eStrFeet;
      case 160481904:
        return EStringUiIds.eStrWarning;
      case 3786614399:
        return EStringUiIds.eStrDistanceTillIntermediateDestination;
      case 3807542834:
        return EStringUiIds.eStrFollowRoadDistance;
      case 3554444277:
        return EStringUiIds.eStrFollowSignpostsDestination;
      case 1080915481:
        return EStringUiIds.eStrOnStreetName;
      case 1591234411:
        return EStringUiIds.eStrFollowStreetName;
      case 2880773532:
        return EStringUiIds.eStrTakeNameExit;
      case 3212680220:
        return EStringUiIds.eStrTakeExitName;
      case 3491485506:
        return EStringUiIds.eStrFollowRoadForKilometre;
      case 861868401:
        return EStringUiIds.eStrFollowRoadForKilometres;
      case 1928981153:
        return EStringUiIds.eStrFollowRoadForMile;
      case 3963841010:
        return EStringUiIds.eStrFollowRoadForMiles;
      case 2616543440:
        return EStringUiIds.eStrFollowRoadForMetres;
      case 3226399522:
        return EStringUiIds.eStringFollowFor;
      case 3611747984:
        return EStringUiIds.eStringOnto;
      case 836098911:
        return EStringUiIds.eStringFollowTheRoadFor;
      case 2603318674:
        return EStringUiIds.eStrLength;
      case 3955913047:
        return EStringUiIds.eStrDelay;
      case 4007007574:
        return EStringUiIds.eStrFrom;
      case 2971764519:
        return EStringUiIds.eStrTo;
      case 2212660213:
        return EStringUiIds.eStrTrafficValidFrom;
      case 3851758868:
        return EStringUiIds.eStrTrafficExpired;
      case 2105442363:
        return EStringUiIds.eStrDestinationOnRight;
      case 1314660872:
        return EStringUiIds.eStrDestinationOnLeft;
      case 4142231316:
        return EStringUiIds.eStrIntermediateDestinationOnRight;
      case 3042931727:
        return EStringUiIds.eStrIntermediateDestinationOnLeft;
      case 3780823136:
        return EStringUiIds.eStrContinueOnStreetName;
      case 2165164535:
        return EStringUiIds.eStrGoRightThenRight;
      case 3472176287:
        return EStringUiIds.eStrGoLeftThenLeft;
      case 2578836283:
        return EStringUiIds.eStrVCShowMapOfXCountry;
      case 174627785:
        return EStringUiIds.eStrVCNavigateHome;
      case 656484502:
        return EStringUiIds.eStrVCNavigateToWork;
      case 3439033595:
        return EStringUiIds.eStrVCNavigateToXDestination;
      case 3023613382:
        return EStringUiIds.eStrVCChangToNightColours;
      case 2857240818:
        return EStringUiIds.eStrVCMute;
      case 2871959256:
        return EStringUiIds.eStrVCMuteVoiceGuidance;
      case 1546703051:
        return EStringUiIds.eStrVCUnmute;
      case 1967595423:
        return EStringUiIds.eStrVCUnmuteVoiceGuidance;
      case 2683341639:
        return EStringUiIds.eStrVCShowTraffic;
      case 2174771554:
        return EStringUiIds.eStrVCHideTraffic;
      case 3615098885:
        return EStringUiIds.eStrVCShowSatellite;
      case 210551648:
        return EStringUiIds.eStrVCHideSatellite;
      case 579368108:
        return EStringUiIds.eStrVCShowRouteOverview;
      case 3346628526:
        return EStringUiIds.eStrVCShowAlternateRoutes;
      case 1730514438:
        return EStringUiIds.eStrVCShowNextTurn;
      case 671368208:
        return EStringUiIds.eStrVCShowMyETA;
      case 130721340:
        return EStringUiIds.eStrVCAvoidTolls;
      case 1923364316:
        return EStringUiIds.eStrVCEnableTolls;
      case 2463503842:
        return EStringUiIds.eStrVCAvoidHighways;
      case 3467043394:
        return EStringUiIds.eStrVCEnableHighways;
      case 1248428508:
        return EStringUiIds.eStrVCAvoidFerries;
      case 1696442748:
        return EStringUiIds.eStrVCEnableFerries;
      case 2378960235:
        return EStringUiIds.eStrVCExitNavigation;
      case 3046162206:
        return EStringUiIds.eStrUnknown;
      case 3970809583:
        return EStringUiIds.eStrTimeH;
      case 2017058585:
        return EStringUiIds.eStrTimeMin;
      case 3970809594:
        return EStringUiIds.eStrTimeS;
      case 2803402528:
        return EStringUiIds.eStrSecond;
      case 1006132563:
        return EStringUiIds.eStrSeconds;
      case 2635655360:
        return EStringUiIds.eStrMinute;
      case 100937651:
        return EStringUiIds.eStrMinutes;
      case 4007064464:
        return EStringUiIds.eStrHour;
      case 3959914211:
        return EStringUiIds.eStrHours;
      case 451114785:
        return EStringUiIds.eStrRoadBlock;
      case 949341541:
        return EStringUiIds.eStrHoursAbbrev;
      case 2832836102:
        return EStringUiIds.eStrErrDatabasesExpired;
      case 3038110908:
        return EStringUiIds.eStrErrNoResults;
      case 3389576491:
        return EStringUiIds.eStrErrNoResultsDueToTransferTime;
      case 3014716612:
        return EStringUiIds.eStrErrResourcesUnavailable;
      case 2638026316:
        return EStringUiIds.eStrErrInvalidDate;
      case 483390989:
        return EStringUiIds.eStrNoDataBetweenLocations;
      case 1864676013:
        return EStringUiIds.eStrErrFailedPedestrianRouteSection;
      case 2219921691:
        return EStringUiIds.eStringDistanceTimeToDestination;
      case 860800628:
        return EStringUiIds.eStringFollowStreetUntil;
      case 3209925301:
        return EStringUiIds.eStringFollowNotPrecised;
      case 3081031859:
        return EStringUiIds.eStringCrossIntersection;
      case 1305083224:
        return EStringUiIds.eStringCrossIntersectionAndFollowStreet;
      case 2677970609:
        return EStringUiIds.eStringAtTheIntersection;
      case 3305257194:
        return EStringUiIds.eStringAtTheEndOf;
      case 1748281246:
        return EStringUiIds.eStringTheStreet;
      case 19661179:
        return EStringUiIds.eStringTheRoad;
      case 611433227:
        return EStringUiIds.eStringTheTrail;
      case 610573356:
        return EStringUiIds.eStringTheSteps;
      case 2376422099:
        return EStringUiIds.eStringTakeTheSteps;
      case 700850660:
        return EStringUiIds.eStringTheIntersection;
      case 3298087861:
        return EStringUiIds.eStringTakeTheCrosswalk;
      case 3678528478:
        return EStringUiIds.eStrRouteUpdated;
      case 4006879629:
        return EStringUiIds.eStrBike;
      case 1930370216:
        return EStringUiIds.eStrCar;
      case 3971085363:
        return EStringUiIds.eStrTruck;
      case 1323670503:
        return EStringUiIds.eStrPedestrian;
      case 195855870:
        return EStringUiIds.eStrCountryRegion;
      case 1986451125:
        return EStringUiIds.eStrStateProvince;
      case 4202906327:
        return EStringUiIds.eStrErrMsgKGeneralShort;
      case 1835331749:
        return EStringUiIds.eStrErrMsgKGeneral;
      case 4149319015:
        return EStringUiIds.eStrUnknownErr;
      case 3170313273:
        return EStringUiIds.eStrErrMsgKActivation;
      case 495180573:
        return EStringUiIds.eStrErrMsgKCancel;
      case 2813996414:
        return EStringUiIds.eStrErrMsgKNotSupported;
      case 3897826804:
        return EStringUiIds.eStrErrMsgKExist;
      case 700941129:
        return EStringUiIds.eStrErrMsgKIo;
      case 3664002:
        return EStringUiIds.eStrErrMsgKAccessDenied;
      case 3659524709:
        return EStringUiIds.eStrErrMsgKReadonlyDrive;
      case 2293672421:
        return EStringUiIds.eStrErrMsgKNoDiskSpace;
      case 3901203743:
        return EStringUiIds.eStrErrMsgKInUse;
      case 803657810:
        return EStringUiIds.eStrErrMsgKNotFound;
      case 171942299:
        return EStringUiIds.eStrErrMsgKOutOfRange;
      case 3984439238:
        return EStringUiIds.eStrErrMsgKInvalidated;
      case 4010652165:
        return EStringUiIds.eStrErrMsgKNoMemory;
      case 3236200054:
        return EStringUiIds.eStrErrMsgKInvalidInput;
      case 3152165762:
        return EStringUiIds.eStrErrMsgKRequired;
      case 1335987064:
        return EStringUiIds.eStrErrMsgKReducedResult;
      case 4013624517:
        return EStringUiIds.eStrErrMsgKNoRoute;
      case 2826845800:
        return EStringUiIds.eStrErrMsgKWaypointAccess;
      case 2392132042:
        return EStringUiIds.eStrErrMsgKRouteTooLong;
      case 512655472:
        return EStringUiIds.eStrErrMsgKInternalAbort;
      case 1672242696:
        return EStringUiIds.eStrErrMsgKNetworkFailed;
      case 3368374754:
        return EStringUiIds.eStrErrMsgKNoConnection;
      case 192880832:
        return EStringUiIds.eStrErrMsgKConnectionRequired;
      case 1705089809:
        return EStringUiIds.eStrErrMsgKContentStoreNotOpened;
      case 868645464:
        return EStringUiIds.eStrErrMsgKSuspended;
      case 126363431:
        return EStringUiIds.eStrErrMsgKUpToDate;
      case 1904633635:
        return EStringUiIds.eStrErrMsgKResourceMissingTitle;
      case 3010602037:
        return EStringUiIds.eStrErrMsgKResourceMissing;
      case 1945959133:
        return EStringUiIds.eStrErrMsgKOperationTimeout;
      case 2910109485:
        return EStringUiIds.eStrErrMsgKCouldNotStart;
      case 4180769065:
        return EStringUiIds.eStrErrMsgKNetworkCouldntResume;
      case 72594678:
        return EStringUiIds.eStrErrMsgKNetworkTimeout;
      case 3874144181:
        return EStringUiIds.eStrKiloByte;
      case 3653675078:
        return EStringUiIds.eStrMegaByte;
      case 1041795088:
        return EStringUiIds.eStrGigaByte;
      case 2971763928:
        return EStringUiIds.eStrAm;
      case 2971764393:
        return EStringUiIds.eStrPm;
      case 4006895284:
        return EStringUiIds.eStrByte;
      case 1199451796:
        return EStringUiIds.eStrLeavingLane;
      case 124923581:
        return EStringUiIds.eStrKeepLane;
      case 3440664995:
        return EStringUiIds.eStrMovingTraffic;
      case 46422086:
        return EStringUiIds.eStrKeepDistance;
      case 795880494:
        return EStringUiIds.eStrWatchOutForVehicle;
      case 414114678:
        return EStringUiIds.eStrMindYourSpeed;
      case 3899948768:
        return EStringUiIds.eStrADASNotEnabledDevicePortrait;
      case 4250646735:
        return EStringUiIds.eStrADASNotEnabledNoSafetyEye;
      case 925970144:
        return EStringUiIds.eStrADASEnabled;
      case 1564019389:
        return EStringUiIds.eStrADASDisabled;
      case 2560949577:
        return EStringUiIds.eStrHapticNotifDisabled;
      case 1188138297:
        return EStringUiIds.eStrCalibrationGeneric;
      case 2465323496:
        return EStringUiIds.eStrDiagnosticHeavyRain;
      case 690611673:
        return EStringUiIds.eStrDiagnosticBadExposure;
      case 3045355507:
        return EStringUiIds.eStrDiagnosticLowVisibility;
      case 1358420933:
        return EStringUiIds.eStrDiagnosticLowImageQuality;
      case 785956095:
        return EStringUiIds.eStrDiagnosticExcessiveMovement;
      case 4010213906:
        return EStringUiIds.eStringLEGEND_SYMBOLS_WAYPOINTS;
      case 4172467580:
        return EStringUiIds.eStringTrafficDelay;
      case 2042946450:
        return EStringUiIds.eStringAlternativeRoute;
      case 545509044:
        return EStringUiIds.eStringOnFastestRoute;
      case 1930391483:
        return EStringUiIds.eStrYes;
      case 2971764333:
        return EStringUiIds.eStrNo;
      case 1047955740:
        return EStringUiIds.eStrGettingPos;
      case 512275650:
        return EStringUiIds.eStrOptionAvailableInWiFi;
      case 2081528178:
        return EStringUiIds.eStrOptions;
      case 2803345492:
        return EStringUiIds.eStrSearch;
      case 332080756:
        return EStringUiIds.eStrTempDirections;
      case 1175713125:
        return EStringUiIds.eStrRouteDetails;
      case 1458115807:
        return EStringUiIds.eStrTempDownloadMaps;
      case 1179754572:
        return EStringUiIds.eStrStopCrtNav;
      case 4007385257:
        return EStringUiIds.eStrShow;
      case 4007054573:
        return EStringUiIds.eStrHelp;
      case 3953056609:
        return EStringUiIds.eStrAbout;
      case 2183311048:
        return EStringUiIds.eStrAddress;
      case 3909396479:
        return EStringUiIds.eStrContacts;
      case 2489585231:
        return EStringUiIds.eNStrFavorites;
      case 1930382110:
        return EStringUiIds.eStrPOI;
      case 4257937256:
        return EStringUiIds.eStrHistory;
      case 1222742680:
        return EStringUiIds.eStrAlongRoute;
      case 1101239995:
        return EStringUiIds.eStrAroundDest;
      case 1825695523:
        return EStringUiIds.eStrAroundGpsPos;
      case 4006909719:
        return EStringUiIds.eStrCity;
      case 2817692335:
        return EStringUiIds.eStrStreet;
      case 2595955658:
        return EStringUiIds.eStrNumberAbbv;
      case 2305187662:
        return EStringUiIds.eStrCrossing;
      case 2695973000:
        return EStringUiIds.eStrCountries;
      case 3314859035:
        return EStringUiIds.eStrTempAnywhere;
      case 4143041422:
        return EStringUiIds.eStrLocDetails;
      case 3048542996:
        return EStringUiIds.eStrUnnamed;
      case 4006901770:
        return EStringUiIds.eStrCall;
      case 3482061613:
        return EStringUiIds.eStrOpenWebPage;
      case 3161495177:
        return EStringUiIds.eNStrSaveAsContact;
      case 3376192494:
        return EStringUiIds.eStrTempWhatsNearby;
      case 4247293749:
        return EStringUiIds.eStrTempSearchAround;
      case 119428231:
        return EStringUiIds.eStrTempContactAddError;
      case 4006964150:
        return EStringUiIds.eStrEdit;
      case 3940239206:
        return EStringUiIds.eStrTempEditFavorite;
      case 4007229495:
        return EStringUiIds.eStrName;
      case 3048903554:
        return EStringUiIds.eStrZipCode;
      case 3970202725:
        return EStringUiIds.eStrState;
      case 3967087938:
        return EStringUiIds.eStrPhone;
      case 1930388035:
        return EStringUiIds.eStrUrl;
      case 3036869656:
        return EStringUiIds.eStrLatitude;
      case 1480701827:
        return EStringUiIds.eStrLongitude;
      case 2218431054:
        return EStringUiIds.eStrAltitude;
      case 4007378729:
        return EStringUiIds.eStrSave;
      case 1263636382:
        return EStringUiIds.eStrNameNotFilled;
      case 4197362593:
        return EStringUiIds.eStrMyPosition;
      case 2803867385:
        return EStringUiIds.eStrSetDep;
      case 1020543224:
        return EStringUiIds.eStrSetDest;
      case 2287161094:
        return EStringUiIds.eStrAddWpt;
      case 3231631260:
        return EStringUiIds.eStrFromAtoB;
      case 1930386939:
        return EStringUiIds.eStrToB;
      case 2610307622:
        return EStringUiIds.eStrRouteNotValid;
      case 1945534494:
        return EStringUiIds.eStrTempMapLayers;
      case 343923534:
        return EStringUiIds.eStrTemp3DBuildings;
      case 259476168:
        return EStringUiIds.eStrWeather;
      case 2163491774:
        return EStringUiIds.eStrTempMapStyles;
      case 1930379824:
        return EStringUiIds.eStrMap;
      case 4059199247:
        return EStringUiIds.eStrSatellite;
      case 2756340337:
        return EStringUiIds.eStrAllCategories;
      case 4006945070:
        return EStringUiIds.eStrDone;
      case 1520920439:
        return EStringUiIds.eStrCalculating;
      case 3121553166:
        return EStringUiIds.eStrSearching;
      case 3410901951:
        return EStringUiIds.eStrProcessing;
      case 1930371295:
        return EStringUiIds.eStrDel;
      case 2341957926:
        return EStringUiIds.eStrCancel;
      case 2775255769:
        return EStringUiIds.eStrResume;
      case 204406101:
        return EStringUiIds.eStrGPRSDownloadLimitReached;
      case 556406464:
        return EStringUiIds.eStrNavigation;
      case 156396443:
        return EStringUiIds.eStrTrafficInformation;
      case 1902860796:
        return EStringUiIds.eStrTempDay;
      case 3154109943:
        return EStringUiIds.eStrTempDays;
      case 2971764360:
        return EStringUiIds.eStrOk;
      case 2286221236:
        return EStringUiIds.eStrAccept;
      case 4006935480:
        return EStringUiIds.eStrDeny;
      case 180036732:
        return EStringUiIds.eStrNightColors;
      case 1212822622:
        return EStringUiIds.eStr2dPerspective;
      case 919419615:
        return EStringUiIds.eStr3dPerspective;
      case 3775319752:
        return EStringUiIds.eStrTempTimeFormatHour;
      case 1784357102:
        return EStringUiIds.eStrTempTimeFormatMin;
      case 1784362733:
        return EStringUiIds.eStrTempTimeFormatSec;
      case 2670043305:
        return EStringUiIds.eStrNowAdv;
      case 3548333210:
        return EStringUiIds.eStrCardPointN;
      case 3548333201:
        return EStringUiIds.eStrCardPointE;
      case 3548333215:
        return EStringUiIds.eStrCardPointS;
      case 3548333219:
        return EStringUiIds.eStrCardPointW;
      case 3250854844:
        return EStringUiIds.eStrGeneral;
      case 2898799046:
        return EStringUiIds.eStrVolume;
      case 2971764363:
        return EStringUiIds.eStrOn;
      case 1930381891:
        return EStringUiIds.eStrOff;
      case 3670416521:
        return EStringUiIds.eStrTravelMode;
      case 3111528380:
        return EStringUiIds.eStrAskAlways;
      case 1684744830:
        return EStringUiIds.eStrVoiceLanguage;
      case 3953652041:
        return EStringUiIds.eStrAvoid;
      case 3515646944:
        return EStringUiIds.eStrAvoidCarpoolLanes;
      case 2367424012:
        return EStringUiIds.eStrFerries;
      case 3199616431:
        return EStringUiIds.eStrAvoidFerries;
      case 940717869:
        return EStringUiIds.eStrMotorways;
      case 1813715472:
        return EStringUiIds.eStrAvoidMotorways;
      case 2547664556:
        return EStringUiIds.eStrTollRoads;
      case 3420662159:
        return EStringUiIds.eStrAvoidTollRoads;
      case 2263692497:
        return EStringUiIds.eStrTraffic;
      case 3095884916:
        return EStringUiIds.eStrAvoidTraffic;
      case 3050611892:
        return EStringUiIds.eStrUnpavedRoads;
      case 200258289:
        return EStringUiIds.eStrAvoidUnpavedRoads;
      case 580086989:
        return EStringUiIds.eStrTempSendFeedback;
      case 3048204025:
        return EStringUiIds.eNStrDeviceID;
      case 3924379477:
        return EStringUiIds.eStrUnknownErrShort;
      case 3535654554:
        return EStringUiIds.eStrNoGpsSourceEnableSettingsTitle;
      case 3021450846:
        return EStringUiIds.eStrNoGpsSourceEnableSettings;
      case 2253887102:
        return EStringUiIds.eStrFastest;
      case 4134349622:
        return EStringUiIds.eStrShortest;
      case 1063454625:
        return EStringUiIds.eStrEconomic;
      case 3998609745:
        return EStringUiIds.eStrNoSearchResShort;
      case 108791902:
        return EStringUiIds.eStrGPSDisabledTitle;
      case 4152715802:
        return EStringUiIds.eStrGPSDisabled;
      case 3283683215:
        return EStringUiIds.eStrLatLong;
      case 1630896176:
        return EStringUiIds.eStrInvalidCoordinates;
      case 2775087594:
        return EStringUiIds.eStrRename;
      case 2146390973:
        return EStringUiIds.eStrSameName;
      case 1510801992:
        return EStringUiIds.eStrRouteName;
      case 3760142387:
        return EStringUiIds.eStrEditRoute;
      case 2715475857:
        return EStringUiIds.eStrFromAToBViaC;
      case 2148701840:
        return EStringUiIds.eStrToBViaC;
      case 3909645395:
        return EStringUiIds.eStrContinue;
      case 4111232935:
        return EStringUiIds.eStrDoNotShowAgain;
      case 4007475281:
        return EStringUiIds.eStrView;
      case 3957064560:
        return EStringUiIds.eStrEmail;
      case 3612253585:
        return EStringUiIds.eStrInvalidEmail;
      case 3969149469:
        return EStringUiIds.eStrRoute;
      case 4116036715:
        return EStringUiIds.eStrCannotConnectToStore;
      case 3640297256:
        return EStringUiIds.eStrComputerVoices;
      case 1494509161:
        return EStringUiIds.eStrStandard;
      case 2500389518:
        return EStringUiIds.eStrStopRouteCalculation;
      case 2582617943:
        return EStringUiIds.eStrChooseContactAddress;
      case 1570426103:
        return EStringUiIds.eStrSetBlock;
      case 140441418:
        return EStringUiIds.eStrProductDownloaded;
      case 831617441:
        return EStringUiIds.eStrDemoRouteSimulation;
      case 1321450225:
        return EStringUiIds.eStrSaveOneMinute;
      case 1997489356:
        return EStringUiIds.eStrSaveSeveralMinutes;
      case 4057966368:
        return EStringUiIds.eStrSpeedCamera;
      case 2891473186:
        return EStringUiIds.eStrSafetyCams;
      case 881069430:
        return EStringUiIds.eStrOnRoadName;
      case 3364765239:
        return EStringUiIds.eStrMobileDataOff;
      case 1345181552:
        return EStringUiIds.eStrShareThisApp;
      case 2917293687:
        return EStringUiIds.eStrRateThisApp;
      case 464973336:
        return EStringUiIds.eStrDownloadOverMobileNetworkWarning;
      case 4007064203:
        return EStringUiIds.eStrHome;
      case 4007511229:
        return EStringUiIds.eStrWork;
      case 3346818815:
        return EStringUiIds.eStrSetHomeAddress;
      case 3581941901:
        return EStringUiIds.eStrSetWorkAddress;
      case 3960358320:
        return EStringUiIds.eStrTapToSet;
      case 2461414435:
        return EStringUiIds.eStrSetHomeTitle;
      case 1433727281:
        return EStringUiIds.eStrSetWorkTitle;
      case 3257386732:
        return EStringUiIds.eStrUpdateHomeQuerry;
      case 1463856030:
        return EStringUiIds.eStrUpdateWorkQuerry;
      case 3159388117:
        return EStringUiIds.eStrRouteWithTolls;
      case 3146166871:
        return EStringUiIds.eStrRouteWithFerry;
      case 1489401439:
        return EStringUiIds.eStrSmartCarKit;
      case 1792325484:
        return EStringUiIds.eStrSortByName;
      case 1792511918:
        return EStringUiIds.eStrSortByTime;
      case 2637656150:
        return EStringUiIds.eStrSortByDistance;
      case 1569493446:
        return EStringUiIds.eStrSetAlert;
      case 2771103550:
        return EStringUiIds.eStrRadius;
      case 2479875687:
        return EStringUiIds.eStrArrivingMessage;
      case 4042670687:
        return EStringUiIds.eStrLeavingMessage;
      case 2294605123:
        return EStringUiIds.eStrAlerts;
      case 3744337734:
        return EStringUiIds.eStrEditAlert;
      case 2189482159:
        return EStringUiIds.eStrSendFeedbackError;
      case 2279378757:
        return EStringUiIds.eStrAccessContactsError;
      case 1587704975:
        return EStringUiIds.eStrSendLocationDetailsError;
      case 1374103336:
        return EStringUiIds.eStrPhoneCallError;
      case 727902549:
        return EStringUiIds.eStrUninstallSpeedCams;
      case 565735978:
        return EStringUiIds.eStrUninstallSpeedCamsConfirmation;
      case 97819504:
        return EStringUiIds.eStrResetToDefaults;
      case 1672452804:
        return EStringUiIds.eStrRestoreToDefaultsConfirmation;
      case 679010930:
        return EStringUiIds.eStrFacebook;
      case 2414656839:
        return EStringUiIds.eStrTwitter;
      case 1252140915:
        return EStringUiIds.eStrEmailSubjectEnteringArea;
      case 1012680485:
        return EStringUiIds.eStrEmailSubjectLeavingArea;
      case 4277951832:
        return EStringUiIds.eStrNoSearchResAppNotOnlineYet;
      case 901520571:
        return EStringUiIds.eStrNoSearchResConnectToInternet;
      case 3353367457:
        return EStringUiIds.eStrAddressNotLocatedCheckDetails;
      case 43127992:
        return EStringUiIds.eStrMapsStorage;
      case 3047769112:
        return EStringUiIds.eStrInternalPreferred;
      case 1119123146:
        return EStringUiIds.eStrExternalPreferred;
      case 677466542:
        return EStringUiIds.eStrSaveAsFavourite;
      case 2653562546:
        return EStringUiIds.eStrToRecipient;
      case 427068715:
        return EStringUiIds.eStrCloudBackup;
      case 1103297592:
        return EStringUiIds.eStrShowAll;
      case 2336524464:
        return EStringUiIds.eStrShowDownloaded;
      case 3712785905:
        return EStringUiIds.eStrShowDownloading;
      case 883436147:
        return EStringUiIds.eStrShowFavourites;
      case 4137872306:
        return EStringUiIds.eStrShowPOIs;
      case 3248719008:
        return EStringUiIds.eStrShowAlerts;
      case 3678022229:
        return EStringUiIds.eStrShowPlaces;
      case 3738663251:
        return EStringUiIds.eStrShowRoutes;
      case 2458096980:
        return EStringUiIds.eStrSimulationSpeed;
      case 1798143678:
        return EStringUiIds.eStrStopCrtSimulation;
      case 4006935439:
        return EStringUiIds.eStrDemo;
      case 2182640775:
        return EStringUiIds.eStrFullScreen;
      case 16901378:
        return EStringUiIds.eStrSearchResults;
      case 3199942964:
        return EStringUiIds.eStrConnectToInternetToDownloadMaps;
      case 447872533:
        return EStringUiIds.eStrInsideBuiltUpAreas;
      case 1242759782:
        return EStringUiIds.eStrOutsideBuiltUpAreas;
      case 2166568283:
        return EStringUiIds.eStrImportFileQuery;
      case 1130987071:
        return EStringUiIds.eStrCancelPOIImportQuery;
      case 1606753985:
        return EStringUiIds.eStrNoPOIImported;
      case 2914124637:
        return EStringUiIds.eStrPOIImportSuccessful;
      case 2195685419:
        return EStringUiIds.eStrEmailSubjectShareCurrentLocation;
      case 3937543873:
        return EStringUiIds.eStrEmailBodyShareCurrentLocation;
      case 3468430057:
        return EStringUiIds.eStrEmailSubjectSendLocationDetails;
      case 3108977043:
        return EStringUiIds.eStrEmailBodySendLocationDetails;
      case 2812195902:
        return EStringUiIds.eStrFromDeparture;
      case 3904124519:
        return EStringUiIds.eStrToDestination;
      case 2587268884:
        return EStringUiIds.eStrFromGetDirections;
      case 1977376995:
        return EStringUiIds.eStrToGetDirections;
      case 3360028297:
        return EStringUiIds.eStrViaSearchBar;
      case 2284375325:
        return EStringUiIds.eStrNavigate;
      case 3955191329:
        return EStringUiIds.eStrClear;
      case 1930372527:
        return EStringUiIds.eStrEnd;
      case 711996709:
        return EStringUiIds.eStrOverview;
      case 2536866592:
        return EStringUiIds.eStrAppName;
      case 1476235939:
        return EStringUiIds.eStrSupport;
      case 2946515191:
        return EStringUiIds.eStrShareMagicMapsAppMessage;
      case 2418626220:
        return EStringUiIds.eStrAllMaps;
      case 4142479626:
        return EStringUiIds.eStrDownloadedMaps;
      case 3427557093:
        return EStringUiIds.eStrDownloadingMaps;
      case 555863174:
        return EStringUiIds.eStrBrandName;
      case 2051967949:
        return EStringUiIds.eStrThirdPartyLicences;
      case 3575532494:
        return EStringUiIds.eStrContactSupportAt;
      case 1907566089:
        return EStringUiIds.eStrTerrain;
      case 3341305293:
        return EStringUiIds.eStrTerrainAndSatellite;
      case 2710404777:
        return EStringUiIds.eStrLocationWhenInUseUsagePermission;
      case 3878558160:
        return EStringUiIds.eStrDriveVia;
      case 3363843510:
        return EStringUiIds.eStrEveryXTime;
      case 649337725:
        return EStringUiIds.eStrTowardsXLocation;
      case 1559453999:
        return EStringUiIds.eStrNoOfTransfer;
      case 1098433828:
        return EStringUiIds.eStrNoOfTransfers;
      case 2833401598:
        return EStringUiIds.eSTrNoOfStopAndTime;
      case 2194753207:
        return EStringUiIds.eSTrNoOfStopsAndTime;
      case 1605828318:
        return EStringUiIds.eStrNotAllPreferencesMet;
      case 2620483737:
        return EStringUiIds.eStrBestRoute;
      case 2608392143:
        return EStringUiIds.eStrFewerTransfers;
      case 2929718900:
        return EStringUiIds.eStrLessWalking;
      case 2428346270:
        return EStringUiIds.eStrMinTransferTime;
      case 658695513:
        return EStringUiIds.eStrPreferredMeansOfTransport;
      case 1930369876:
        return EStringUiIds.eStrBus;
      case 3251118899:
        return EStringUiIds.eStrUnderground;
      case 9572593:
        return EStringUiIds.eStrRailway;
      case 4007424214:
        return EStringUiIds.eStrTram;
      case 3957766382:
        return EStringUiIds.eStrFerry;
      case 1164555177:
        return EStringUiIds.eStrOtherTransportMeans;
      case 2300340473:
        return EStringUiIds.eStrPreferredAccessibility;
      case 347080950:
        return EStringUiIds.eStrWheelchair;
      case 3213243347:
        return EStringUiIds.eStrBicycle;
      case 1974630215:
        return EStringUiIds.eStrDateTime;
      case 2374339232:
        return EStringUiIds.eStrDepart;
      case 2300524931:
        return EStringUiIds.eStrArrive;
      case 4007170114:
        return EStringUiIds.eStrLast;
      case 2897985450:
        return EStringUiIds.eStrXTimeEarly;
      case 1479165311:
        return EStringUiIds.eStrXTimeLate;
      case 2696744952:
        return EStringUiIds.eStrOnTime;
      case 1290633340:
        return EStringUiIds.eStrBicycleSupport;
      case 365112825:
        return EStringUiIds.eStrWheelchairSupport;
      case 3717309313:
        return EStringUiIds.eStrBicycleAndWheelchairSupport;
      case 1365224980:
        return EStringUiIds.eStrEarlier;
      case 3963189856:
        return EStringUiIds.eStrLater;
      case 2784549366:
        return EStringUiIds.eStrRoutes;
      case 2701832075:
        return EStringUiIds.eStrDistanceTimeWalking;
      case 1695654130:
        return EStringUiIds.eStrDistances;
      case 3215160470:
        return EStringUiIds.eStrInKilometres;
      case 3550125819:
        return EStringUiIds.eStrInMilesFeet;
      case 2697157836:
        return EStringUiIds.eStrInMilesYards;
      case 2477461440:
        return EStringUiIds.eStrVoiceVolume;
      case 2037787215:
        return EStringUiIds.eStrMapLabels;
      case 3017007103:
        return EStringUiIds.eStrAutomatic;
      case 101556626:
        return EStringUiIds.eStrInLocalLanguage;
      case 183768612:
        return EStringUiIds.eStrBatteryMode;
      case 4006363280:
        return EStringUiIds.eStrNormalUsedForVBattery;
      case 3033826484:
        return EStringUiIds.eStrPowerSavingUsedForBattery;
      case 2017099584:
        return EStringUiIds.eStrUltraPowerSavingUsedForBattery;
      case 1659410832:
        return EStringUiIds.eStrGetInTouch;
      case 1616511951:
        return EStringUiIds.eStrSettings;
      case 1917723153:
        return EStringUiIds.eStrAdvancedSettings;
      case 679971843:
        return EStringUiIds.eStrWarnings;
      case 3498248922:
        return EStringUiIds.eStrWarningTiming;
      case 741486705:
        return EStringUiIds.eStrEarlyUsedForWarningTiming;
      case 1811913421:
        return EStringUiIds.eStrNormalUsedForWarningTiming;
      case 1240159756:
        return EStringUiIds.eStrLateUsedForWarningTiming;
      case 3902215692:
        return EStringUiIds.eStrSpeedWarningTolerance;
      case 2581921899:
        return EStringUiIds.eStrDashCamVideoSize;
      case 3284155413:
        return EStringUiIds.eStrVideoLength;
      case 1112369907:
        return EStringUiIds.eStrDepartAt;
      case 3191270678:
        return EStringUiIds.eStrArriveAt;
      case 956398713:
        return EStringUiIds.eStrDriveTo;
      case 2320628968:
        return EStringUiIds.eStrBikeTo;
      case 2914488528:
        return EStringUiIds.eStrWalkTo;
      case 2466774831:
        return EStringUiIds.eStrPublicTransportTo;
      case 1342207743:
        return EStringUiIds.eStrAgencyInfo;
      case 1515819888:
        return EStringUiIds.eStrDefineHomeOnDev;
      case 488132734:
        return EStringUiIds.eStrDefineWorkOnDev;
      case 4226025876:
        return EStringUiIds.eStrPublicTransport;
      case 673787456:
        return EStringUiIds.eStrPlatformNo;
      case 1646257641:
        return EStringUiIds.eStrChangeFromPlatformNoToPlatformNo;
      case 4219760363:
        return EStringUiIds.eStrChangeToPlatformNo;
      case 2971764116:
        return EStringUiIds.eStrGo;
      case 294677236:
        return EStringUiIds.eStrContinueOnSameVehicle;
      case 698884998:
        return EStringUiIds.eStrScreenAlwaysOn;
      case 3593881576:
        return EStringUiIds.eStrScreenOnWhileNavigating;
      case 1073337417:
        return EStringUiIds.eStrScreenTurnOffAutomatically;
      case 2224798309:
        return EStringUiIds.eStrSortByArrivalTime;
      case 3685738016:
        return EStringUiIds.eStrSortByDepartureTime;
      case 4216323258:
        return EStringUiIds.eStrSortByTripDuration;
      case 1291502131:
        return EStringUiIds.eStrStandardMap;
      case 558988369:
        return EStringUiIds.eStrContactsUsagePermission;
      case 4221777306:
        return EStringUiIds.eStrMicrophoneUsagePermission;
      case 3948313539:
        return EStringUiIds.eStrForwardCollisionWarning;
      case 1059264017:
        return EStringUiIds.eStrPedestrianCollisionWarning;
      case 501542457:
        return EStringUiIds.eStrHeadwayWarning;
      case 3364857792:
        return EStringUiIds.eStrLaneDepartureWarning;
      case 428333594:
        return EStringUiIds.eStrMovingTrafficHaptic;
      case 2176892280:
        return EStringUiIds.eStrNearbyVehicleHaptic;
      case 3953611690:
        return EStringUiIds.eStrAudio;
      case 3273765552:
        return EStringUiIds.eStrPlayAsBluetoothPhoneCall;
      case 867295256:
        return EStringUiIds.eStrMobileData;
      case 3076698725:
        return EStringUiIds.eStrUseMobileDataConnection;
      case 3689088801:
        return EStringUiIds.eStrUpdateNow;
      case 3555748168:
        return EStringUiIds.eStrUpdateTonight;
      case 727752419:
        return EStringUiIds.eStrRemindMeLater;
      case 1284578065:
        return EStringUiIds.eStrDangerousHeadway;
      case 4198497379:
        return EStringUiIds.eStrLaneDepartureSolidLine;
      case 2263853217:
        return EStringUiIds.eStrLaneDepartureDashedLine;
      case 2736711437:
        return EStringUiIds.eStrContactPermissionRequiredEnableInSettings;
      case 3388531743:
        return EStringUiIds.eStrRouteCrosesesRestrictedAreas;
      case 28053523:
        return EStringUiIds.eStrSpeedLimits;
      case 1886600971:
        return EStringUiIds.eStrPedestrianCollision;
      case 2086216455:
        return EStringUiIds.eStrWaitingForInternetConnection;
      case 1915707099:
        return EStringUiIds.eStrErrMapDataNotSupportedOnline;
      case 3008691609:
        return EStringUiIds.eStrForwardCollision;
      case 2945568785:
        return EStringUiIds.eStrStopAndGo;
      case 4034182451:
        return EStringUiIds.eStrNavigationAutostart;
      case 4260710483:
        return EStringUiIds.eStrInTenSeconds;
      case 3163650260:
        return EStringUiIds.eStrWhenMoving;
      case 4167241210:
        return EStringUiIds.eStrMapData;
      case 253274799:
        return EStringUiIds.eStrMapDataOSM;
      case 2352781100:
        return EStringUiIds.eStrPreferCurrentRoute;
      case 100370276:
        return EStringUiIds.eStrPreferFasterRoute;
      case 4024688069:
        return EStringUiIds.eStrMobileDataSettingOffInApp;
      case 2697287655:
        return EStringUiIds.eStrMobileDataSettingOnInAppNoInternet;
      case 2168290722:
        return EStringUiIds.eStrMapDataDescription;
      case 3673985702:
        return EStringUiIds.eStrResetStatistics;
      case 253275413:
        return EStringUiIds.eStrMapDataOff;
      case 3651572343:
        return EStringUiIds.eStrSearchPerformedOffline;
      case 2734707623:
        return EStringUiIds.eStrMapDataOffAddressSearch;
      case 3786644870:
        return EStringUiIds.eStrCannotCalculateRouteMissingOfflineMaps;
      case 2855761630:
        return EStringUiIds.eStrDrivingMode;
      case 3456670856:
        return EStringUiIds.eStrMapVersion;
      case 2871087277:
        return EStringUiIds.eStrUpload;
      case 3303661527:
        return EStringUiIds.eStrEnterNameOptional;
      case 215235433:
        return EStringUiIds.eStrEnterEmailMandatory;
      case 689332705:
        return EStringUiIds.eStrEmailNeededForIssueCommunication;
      case 3884810377:
        return EStringUiIds.eStrProblemDescription;
      case 2310831657:
        return EStringUiIds.eStrEnterProblemDescriptionOptional;
      case 2676049566:
        return EStringUiIds.eStrVideoLogs;
      case 1333250165:
        return EStringUiIds.eStrVideoLog;
      case 1343518407:
        return EStringUiIds.eStrCancelUpload;
      case 3616225430:
        return EStringUiIds.eStrUploadVideoLog;
      case 1464642200:
        return EStringUiIds.eStrLogUploaded;
      case 1743166921:
        return EStringUiIds.eStrMapDataCacheSize;
      case 2335838795:
        return EStringUiIds.eStrUpdateAppOldMapsStillSupportedOnline;
      case 855435767:
        return EStringUiIds.eStrUpdateAppNoOnlineMapsAtAll;
      case 2440716058:
        return EStringUiIds.eStrFolder;
      case 3076664371:
        return EStringUiIds.eStrMainFolder;
      case 4007213437:
        return EStringUiIds.eStrMove;
      case 478159414:
        return EStringUiIds.eStrSelectFolder;
      case 313971558:
        return EStringUiIds.eStrCreateNewFolder;
      case 4268068406:
        return EStringUiIds.eStrCreateFolder;
      case 2160472261:
        return EStringUiIds.eStrFolderName;
      case 2711481080:
        return EStringUiIds.eStrRenameFolder;
      case 356897715:
        return EStringUiIds.eStrTipsAndTricks;
      case 124620431:
        return EStringUiIds.eStrListening;
      case 1338956849:
        return EStringUiIds.eStrElevation;
      case 3247730484:
        return EStringUiIds.eStrNearbyPOIs;
      case 2946739313:
        return EStringUiIds.eStrTrafficInformationNotAvailable;
      case 1066467337:
        return EStringUiIds.eStrNoTrafficEvents;
      case 3011537378:
        return EStringUiIds.eStrTrafficMapLayerDisabled;
      case 535659230:
        return EStringUiIds.eStrNoTrafficDueToOutdatedMaps;
      case 609223865:
        return EStringUiIds.eStrTrafficMobileDataDisabled;
      case 753905550:
        return EStringUiIds.eStrMotionUsagePermission;
      case 4291832251:
        return EStringUiIds.eStrPhotoLibraryUsagePermission;
      case 3043930055:
        return EStringUiIds.eStrSpeechRecognitionUsagePermission;
      case 28181423:
        return EStringUiIds.eStrCameraPermissionForDriverAssistanceAndDashCam;
      case 523048338:
        return EStringUiIds.eStrSpeedWarnings;
      case 3373466877:
        return EStringUiIds.eStrRecordingTimeAfterCrash;
      case 3527530492:
        return EStringUiIds.eStrRecordingTimeAfterStandstill;
      case 2866913147:
        return EStringUiIds.eStrHeadUpDisplay;
      case 1848294215:
        return EStringUiIds.eStrTypeParam;
      case 1036424807:
        return EStringUiIds.eStrBikeType;
      case 4007361740:
        return EStringUiIds.eStrRoad;
      case 3955380244:
        return EStringUiIds.eStrCross;
      case 58090041:
        return EStringUiIds.eStrMountain;
      case 90205833:
        return EStringUiIds.eStrAvoidHills;
      case 3959726630:
        return EStringUiIds.eStrHills;
      case 1625426229:
        return EStringUiIds.eStrAllowHills;
      case 485164506:
        return EStringUiIds.eStrCommonSettings;
      case 926651169:
        return EStringUiIds.eStrSpecificSettings;
      case 741860650:
        return EStringUiIds.eStrPedestrianSettings;
      case 2956027088:
        return EStringUiIds.eStrBikeSettings;
      case 377033963:
        return EStringUiIds.eStrCarSettings;
      case 3794312555:
        return EStringUiIds.eStrVoiceAndVolume;
      case 2272334077:
        return EStringUiIds.eStrWarningsVolume;
      case 3312218242:
        return EStringUiIds.eStrBluetooth;
      case 1216464571:
        return EStringUiIds.eStrPlaySoundToPhoneSpeaker;
      case 258481391:
        return EStringUiIds.eStrCallTimingDelay;
      case 4098692016:
        return EStringUiIds.eStrMapUpdateAvailable;
      case 3345876877:
        return EStringUiIds.eStrMapsCanUpdateAutomatically;
      case 807231873:
        return EStringUiIds.eStrMapUpdateRequiresBackgroundAppRefreshSetting;
      case 2648684349:
        return EStringUiIds.eStrWaitingForWiFi;
      case 1343267215:
        return EStringUiIds.eStrCancelUpdate;
      case 2309358361:
        return EStringUiIds.eStrMapUpdate;
      case 2313387244:
        return EStringUiIds.eStrMapUpdateFailedNoWiFi;
      case 3076103118:
        return EStringUiIds.eStrMapUpdateFailedNotCharging;
      case 3347351419:
        return EStringUiIds.eStrMapUpdateFailedAppWasKilled;
      case 609869323:
        return EStringUiIds.eStrMapUpdateFailedMissingBgndAppRefreshSetting;
      case 2881580914:
        return EStringUiIds.eStrMapUpdateComplete;
      case 2540817781:
        return EStringUiIds.eStrMapsAreUpToDate;
      case 30345734:
        return EStringUiIds.eStrMotorway;
      case 4007289297:
        return EStringUiIds.eStrPath;
      case 3603533004:
        return EStringUiIds.eStrRouteProfile;
      case 1527336825:
        return EStringUiIds.eStrClimbDetails;
      case 2861232402:
        return EStringUiIds.eStrSurfaces;
      case 4007498000:
        return EStringUiIds.eStrWays;
      case 2388953722:
        return EStringUiIds.eStrSteepness;
      case 2771579977:
        return EStringUiIds.eStrRating;
      case 2100978465:
        return EStringUiIds.eStartEndPoints;
      case 3463691032:
        return EStringUiIds.eStrStartEndElevation;
      case 2099875793:
        return EStringUiIds.eStrAvgGrade;
      case 2623528595:
        return EStringUiIds.eStrAsphalt;
      case 3966885848:
        return EStringUiIds.eStrPaved;
      case 3050398687:
        return EStringUiIds.eStrUnpaved;
      case 3552359717:
        return EStringUiIds.eStrStateRoad;
      case 3872327669:
        return EStringUiIds.eStrCycleway;
      case 713650871:
        return EStringUiIds.eStrSingleTrack;
      case 2811423202:
        return EStringUiIds.eStrTrafficInfoMsg;
      case 292922841:
        return EStringUiIds.eStringMetre;
      case 4007557350:
        return EStringUiIds.eStrYard;
      case 1448202515:
        return EStringUiIds.eStrStrFoot;
      case 2971764014:
        return EStringUiIds.eStrEG;
      case 2131991155:
        return EStringUiIds.eStrAllowDownloadOverMobileNetwork;
      case 1585672586:
        return EStringUiIds.eStrMapsCanUpdateAutomaticallyGeneric;
      case 1768809848:
        return EStringUiIds.eStrMapUpdateFailedNoInternet;
      case 2582402484:
        return EStringUiIds.eStrUploadAll;
      case 2509276119:
        return EStringUiIds.eStrDeleteUploaded;
      case 984597962:
        return EStringUiIds.eStrDeleteAll;
      case 2902327947:
        return EStringUiIds.eStrWikipedia;
      case 2922985991:
        return EStringUiIds.eStringLegend_Nodes_Restaurant;
      case 1540552377:
        return EStringUiIds.eStrSupportEmail;
      case 1057887781:
        return EStringUiIds.eStrSupportEmailAlpha;
      case 3082189897:
        return EStringUiIds.eStrSupportEmailBeta;
      case 1144885354:
        return EStringUiIds.eStrDebugMode;
      case 2843966260:
        return EStringUiIds.eStrTracks;
      case 4007386541:
        return EStringUiIds.eStrSize;
      case 3510375582:
        return EStringUiIds.eStrUploadTrack;
      case 2072965194:
        return EStringUiIds.eStrTrackName;
      case 2437766404:
        return EStringUiIds.eStrPrivacyFirstTitle;
      case 4198514611:
        return EStringUiIds.eStrPrivacyFirstMessage;
      case 1304934110:
        return EStringUiIds.eStrPrivacyFirstMessage1;
      case 1304934111:
        return EStringUiIds.eStrPrivacyFirstMessage2;
      case 2387365533:
        return EStringUiIds.eStrNavigationDisclaimerTitle;
      case 3007917836:
        return EStringUiIds.eStrNavigationDisclaimerMessage;
      case 2336893893:
        return EStringUiIds.eStrRecording;
      case 895016136:
        return EStringUiIds.eStrSaveRecording;
      case 2185090714:
        return EStringUiIds.eStrReportEvent;
      case 2971764177:
        return EStringUiIds.eStrIn;
      case 3966555367:
        return EStringUiIds.eStrOutIn;
      case 625077144:
        return EStringUiIds.eStrReportSent;
      case 3767608493:
        return EStringUiIds.eStrReportScheduled;
      case 2934711575:
        return EStringUiIds.eStrReportLimitReached;
      case 3888194111:
        return EStringUiIds.eStrCaution;
      case 3597154185:
        return EStringUiIds.eStrAIDashCam;
      case 2975606060:
        return EStringUiIds.eStrDriverAssistance;
      case 3193221113:
        return EStringUiIds.eStrTakeScreenshot;
      case 2828174271:
        return EStringUiIds.eStrTakePhoto;
      case 2182204898:
        return EStringUiIds.eStrAddMark;
      case 1838277310:
        return EStringUiIds.eStrRecordingSavedToPhotos;
      case 504500321:
        return EStringUiIds.eStrNoSpaceForRecording;
      case 3573580328:
        return EStringUiIds.eStrNoBatteryForRecording;
      case 2578904361:
        return EStringUiIds.eStrRecordingInterruptedDueToSystemFailure;
      case 2152842420:
        return EStringUiIds
            .eStrRecordingInterruptedDueToOtherAppMicrophoneUsage;
      case 935999001:
        return EStringUiIds.eStrRecordingInterruptedDueToOtherAppCameraUsage;
      case 1698819023:
        return EStringUiIds.eStrRecordingNotAvailableWhileManyAppsInForeground;
      case 4149868072:
        return EStringUiIds.eStrRecordingInterruptedToPreventDeviceOverheating;
      case 3579742152:
        return EStringUiIds.eStrAdasDisabledToPreventDeviceOverheating;
      case 1214431008:
        return EStringUiIds.eStrOSMMode;
      case 873805079:
        return EStringUiIds.eStrPermissionsRequired;
      case 2284684603:
        return EStringUiIds.eStrAIDashCamPermissions;
      case 2567067264:
        return EStringUiIds.eStrCameraPermission;
      case 2981459013:
        return EStringUiIds.eStrMicrophonePermission;
      case 1229203149:
        return EStringUiIds.eStrRecordingCouldNotBeSaved;
      case 2834741621:
        return EStringUiIds.eStrThanks;
      case 1747906301:
        return EStringUiIds.eStrNotThere;
      case 3955904039:
        return EStringUiIds.eStrDebug;
      case 3067765607:
        return EStringUiIds.eStrInTrafficInfoMsg;
      case 3983342096:
        return EStringUiIds.eStrUseAIDashCamWhileDriving;
      case 2724468504:
        return EStringUiIds.eStrTurnOnLocationHighAccuracy;
      case 1227050146:
        return EStringUiIds.eStrPoisImportRequiresStoragePermission;
      case 1780452725:
        return EStringUiIds.eStrMapCamera;
      case 1599361115:
        return EStringUiIds.eStrLiveMode;
      case 3667653648:
        return EStringUiIds.eStrLoading;
      case 1895289306:
        return EStringUiIds.eStrEndRoute;
      case 1974603210:
        return EStringUiIds.eStrWarningType;
      case 4109364257:
        return EStringUiIds.eStrVoiceMessage;
      case 4006875610:
        return EStringUiIds.eStrBeep;
      case 3431159688:
        return EStringUiIds.eStrSendReport;
      case 2479689442:
        return EStringUiIds.eStrNotAvailable;
      case 4205982208:
        return EStringUiIds.eNStrError;
      case 2822354139:
        return EStringUiIds.eStrSystem;
      case 3053169250:
        return EStringUiIds.eStrUnsaved;
      case 1580209691:
        return EStringUiIds.eStrImportFavourites;
      case 3424927793:
        return EStringUiIds.eStrImportFavouritesAction;
      case 598256991:
        return EStringUiIds.eStrOverwrite;
      case 3964230668:
        return EStringUiIds.eStrMerge;
      case 540882912:
        return EStringUiIds.eStrNoFavouriteImported;
      case 2575007873:
        return EStringUiIds.eStrFavouritesSuccessfullyImported;
      case 4191144290:
        return EStringUiIds.eStrMyFavourites;
      case 1744229340:
        return EStringUiIds.eStrTapOnFavouritesFile;
      case 3313302809:
        return EStringUiIds.eStrReportEvents;
      case 2020328259:
        return EStringUiIds.eStrActionCanNotBeUndone;
      case 371526210:
        return EStringUiIds.eStrDeleteOneItem;
      case 3720142346:
        return EStringUiIds.eStrDeleteManyItems;
      case 3978620607:
        return EStringUiIds.eStrCancelMapUpdate;
      case 2849938276:
        return EStringUiIds.eStrRemoveNextWaypoint;
      case 4284156868:
        return EStringUiIds.eStrRemoveNextWaypointQuery;
      case 1189361166:
        return EStringUiIds.eStrShowTrafficDelaysLongerThan;
      case 575694362:
        return EStringUiIds.eStrCopyCoordinates;
      case 3192741333:
        return EStringUiIds.eStrSendMyLocation;
      case 613516304:
        return EStringUiIds.eStrLocationPermission;
      case 131511334:
        return EStringUiIds.eStrExitApplication;
      case 3973571994:
        return EStringUiIds.eStrWidth;
      case 2488652755:
        return EStringUiIds.eStrHeight;
      case 2918090020:
        return EStringUiIds.eStrWeight;
      case 236351284:
        return EStringUiIds.eStrAxleWeight;
      case 607374843:
        return EStringUiIds.eNStrActivationFailed;
      case 2803660712:
        return EStringUiIds.eStrSelect;
      case 3902520482:
        return EStringUiIds.eStrTempDldMissingItemsTitle;
      case 3382876283:
        return EStringUiIds.eStrAroundDeparture;
      case 1594495767:
        return EStringUiIds.eStrPreferredVehicle;
      case 970077390:
        return EStringUiIds.eStrGpsInformation;
      case 2498256157:
        return EStringUiIds.eStrHourly;
      case 3955791341:
        return EStringUiIds.eStrDaily;
      case 407917855:
        return EStringUiIds.eStrGPSAccuracyIsNotGoodEnough;
      case 2347361080:
        return EStringUiIds.eStrAllowAudioRecording;
      case 1846747736:
        return EStringUiIds.eStrCameraHeight;
      case 2220283924:
        return EStringUiIds.eStrFixedCameraHeight;
      case 1071766438:
        return EStringUiIds.eStrVehicleWidth;
      case 3717745117:
        return EStringUiIds.eStrCameraLateralDisplacement;
      case 991339878:
        return EStringUiIds.eStrConnectedToAndroidAuto;
      case 3519112520:
        return EStringUiIds.eStrDisconnect;
      case 1041983901:
        return EStringUiIds.eStrIAmNotDriving;
      case 692770876:
        return EStringUiIds.eStrIAmNotDrivingExplanation;
      case 3892098385:
        return EStringUiIds.eStrTapSearchForKeyboard;
      case 2871892286:
        return EStringUiIds.eStrNavigationRequiresHighAccuracyLocation;
      case 1217565856:
        return EStringUiIds.eStrLocationNotEnabledOnPhone;
      case 141791232:
        return EStringUiIds.eStrLocationPermissionRequiredOnPhone;
      case 1845575406:
        return EStringUiIds.eStrHighAccuracyLocationPermissionExplanation;
      case 106644386:
        return EStringUiIds.eStrBluetoothConnectPermissionExplanation;
      case 3580759333:
        return EStringUiIds.eStrReadPhoneStatePermissionExplanation;
      case 263806874:
        return EStringUiIds.eStrDriveToWaypoint;
      case 758822385:
        return EStringUiIds.eStrDriveViaWaypoint;
      case 3969845171:
        return EStringUiIds.eStrShare;
      case 457649654:
        return EStringUiIds.eStrShareRouteSubject;
      case 3280459985:
        return EStringUiIds.eStrShareRouteMessage;
      case 854056939:
        return EStringUiIds.eStrGPXTracks;
      case 1182625409:
        return EStringUiIds.eStrScheduled;
      case 1112371007:
        return EStringUiIds.eStrDeparted;
      case 2596796225:
        return EStringUiIds.eStrArrived;
      case 3871802541:
        return EStringUiIds.eStrCheckGoogleLocationAccuracySetting;
      case 110197090:
        return EStringUiIds.eStrCheckGoogleLocationAccuracySettingOnPhone;
      case 138127020:
        return EStringUiIds.eStrLocalTime;
      case 3689108514:
        return EStringUiIds.eStrUpdatedAt;
      case 2104710240:
        return EStringUiIds.eStrMoviesCount;
      case 2935783937:
        return EStringUiIds.eStrStillHeadingTo;
      case 1126002003:
        return EStringUiIds.eStrNoItems;
      case 1599574586:
        return EStringUiIds.eStrBackgroundGPSPermissionExplanation;
      case 1541019119:
        return EStringUiIds.eStrLatLonFormat;
      case 3592329538:
        return EStringUiIds.eStrDecimalDegrees;
      case 352909961:
        return EStringUiIds.eStrQuickInput;
      case 3717932238:
        return EStringUiIds.eStrDetailedInput;
      case 2070812276:
        return EStringUiIds.eStrPleaseEnsure;
      case 462777464:
        return EStringUiIds.eStrFieldInInterval;
      case 3908156491:
        return EStringUiIds.eStrMinuteAndSecond;
      case 2660488442:
        return EStringUiIds.eStrAllowAllTheTime;
      case 2116642973:
        return EStringUiIds.eStrWhatsNew;
      case 3392553362:
        return EStringUiIds.eStrAndroidAuto;
      case 221804199:
        return EStringUiIds.eStrTruckNavigation;
      case 3431774670:
        return EStringUiIds.eStrPublicTransportStationInfo;
      case 1556325812:
        return EStringUiIds.eStrRestoreInterruptedNavigation;
      case 1188598358:
        return EStringUiIds.eStrShareRoute;
      case 1882284233:
        return EStringUiIds.eStrChangeButtonsOrder;
      case 2102121249:
        return EStringUiIds.eStrDayStyle;
      case 741249394:
        return EStringUiIds.eStrDayStyles;
      case 2376049957:
        return EStringUiIds.eStrNightStyle;
      case 643104750:
        return EStringUiIds.eStrNightStyles;
      case 4007199811:
        return EStringUiIds.eStrMaps;
      case 2128382199:
        return EStringUiIds.eStrGetStarted;
      case 3992297535:
        return EStringUiIds.eStrNeuralNetworkEngineType;
      case 3242031361:
        return EStringUiIds.eStrTensorflowLite;
      case 2189389181:
        return EStringUiIds.eStrSnapdragonNeuralProcessingEngine;
      case 1892154786:
        return EStringUiIds.eStrImageProcessing;
      case 1968747336:
        return EStringUiIds.eStrAcceptAppDisclaimer;
      case 2800337441:
        return EStringUiIds.eStrAddingAlertRequiresLocationPermission;
      case 2991906118:
        return EStringUiIds.eStrDriverBehavior;
      case 2242792113:
        return EStringUiIds.eStrInstantAnalysis;
      case 993605813:
        return EStringUiIds.eStrInstant;
      case 1809986123:
        return EStringUiIds.eStrOngoingAnalysis;
      case 364365118:
        return EStringUiIds.eStrLastAnalysis;
      case 175969565:
        return EStringUiIds.eStrOverallAnalysis;
      case 2699555057:
        return EStringUiIds.eStrAverage;
      case 4124231488:
        return EStringUiIds.eStrAggregates;
      case 3003705023:
        return EStringUiIds.eStrAggregateScore;
      case 2192993265:
        return EStringUiIds.eStrOverallScore;
      case 3968725265:
        return EStringUiIds.eStrRange;
      case 435457088:
        return EStringUiIds.eStrTransportMode;
      case 591725547:
        return EStringUiIds.eStrRangeType;
      case 1164751584:
        return EStringUiIds.eStrRangeValue;
      case 3934007909:
        return EStringUiIds.eStrBikeWeight;
      case 3778479965:
        return EStringUiIds.eStrBikerWeight;
      case 1930368373:
        return EStringUiIds.eStrAdd;
      case 741789562:
        return EStringUiIds.eStrWattHour;
      case 2971764232:
        return EStringUiIds.eStrKg;
      case 999726582:
        return EStringUiIds.eStrTruckProfile;
      case 578777327:
        return EStringUiIds.eStrMaxSpeed;
      case 2345674215:
        return EStringUiIds.eStrSpeeding;
      case 691730488:
        return EStringUiIds.eStrSpeedVariation;
      case 1299581986:
        return EStringUiIds.eStrHarshAcceleration;
      case 1182782534:
        return EStringUiIds.eStrHarshBraking;
      case 19609409:
        return EStringUiIds.eStrCornering;
      case 858138564:
        return EStringUiIds.eStrTailgating;
      case 2254484891:
        return EStringUiIds.eStrFatigue;
      case 1936418985:
        return EStringUiIds.eStrTrafficSignRecognition;
      case 1163868500:
        return EStringUiIds.eStrNorthUp;
      case 404721636:
        return EStringUiIds.eStrLockVideo;
      case 1570398848:
        return EStringUiIds.eStrCopyrightWebsite;
      case 1386472715:
        return EStringUiIds.eStrDownloadableContent;
      case 4003213412:
        return EStringUiIds.eStrDownloadableContentOff;
      case 1293362222:
        return EStringUiIds.eStrPostNotificationsPermissionExplanation;
      case 3966825287:
        return EStringUiIds.eStrAppCanNotWriteOnSDCard;
      case 118331468:
        return EStringUiIds.eStrRecents;
      case 2647753881:
        return EStringUiIds.eStrFolders;
      case 1847306338:
        return EStringUiIds.eStrAccessible;
      case 976643094:
        return EStringUiIds.eStrCameraView;
      case 2898692141:
        return EStringUiIds.eStrVoices;
      case 2871822935:
        return EStringUiIds.eStrDefaultStyles;
      case 3497232735:
        return EStringUiIds.eStrCustomStyles;
      case 349882721:
        return EStringUiIds.eStrMapStyle;
      case 282507058:
        return EStringUiIds.eStrFollowMapStyle;
      case 2817679722:
        return EStringUiIds.eStrFollowMapStyleDescription;
      case 4216703335:
        return EStringUiIds.eStrAudioRecording;
      case 2775090242:
        return EStringUiIds.eStrRender;
      case 4182589701:
        return EStringUiIds.eStrRenderMode;
      case 3830585546:
        return EStringUiIds.eStrConfiguration;
      case 3447443094:
        return EStringUiIds.eStrParameters;
      case 3968849187:
        return EStringUiIds.eStrReset;
      case 1892097646:
        return EStringUiIds.eStrIgnoredStopSigns;
      case 4275774697:
        return EStringUiIds.eStrSwerving;
      case 3970994968:
        return EStringUiIds.eStrTotal;
      case 4049808511:
        return EStringUiIds.eStrReported;
      case 1151021036:
        return EStringUiIds.eStrFasterBy;
      case 1839579020:
        return EStringUiIds.eStrStillHere;
      case 4187780736:
        return EStringUiIds.eStrCleared;
      case 1868784620:
        return EStringUiIds.eStrAudioRecordings;
      case 1398462186:
        return EStringUiIds.eStrTimestamp;
      case 3972019573:
        return EStringUiIds.eStrUsage;
      case 4021199264:
        return EStringUiIds.eStrDiscoverAIDashCam;
      case 2984251718:
        return EStringUiIds.eStrAutoRecordingDescription;
      case 2604971787:
        return EStringUiIds.eStrUpdatingToVersion;
      case 1134818289:
        return EStringUiIds.eStrImporting;
      case 2447669793:
        return EStringUiIds.eStrLowDiskSpace;
      case 2521054620:
        return EStringUiIds.eStrRecordingDidStop;
      case 1214531693:
        return EStringUiIds.eStrCoolDownDevice;
      case 2350919109:
        return EStringUiIds.eStrIgnoreRestrictions;
      case 4259106830:
        return EStringUiIds.eStrVideoCouldNotBeLocked;
      case 3846965860:
        return EStringUiIds.eStrVideoCouldNotBeUploaded;
      case 3259310327:
        return EStringUiIds.eStrIgnoreRestrictionsDescription;
      case 2182401815:
        return EStringUiIds.eStrAddStop;
      case 3752142715:
        return EStringUiIds.eStrPlayVideo;
      case 2837411396:
        return EStringUiIds.eStrPlayLog;
      case 2158274164:
        return EStringUiIds.eStrGrantAccess;
      case 2669966767:
        return EStringUiIds.eStrNotNow;
      case 4138026094:
        return EStringUiIds.eStrShowTrip;
      case 2838010639:
        return EStringUiIds.eStrShowTripsHistory;
      case 3726331218:
        return EStringUiIds.eStrShowVideo;
      case 146519824:
        return EStringUiIds.eStrImportSucceeded;
      case 670201326:
        return EStringUiIds.eStrImportFailed;
      case 225921468:
        return EStringUiIds.eStrAudioMarks;
      case 2524886609:
        return EStringUiIds.eStrImport;
      case 2422488247:
        return EStringUiIds.eStrImportTripsHistory;
      case 819006998:
        return EStringUiIds.eStrImportTrip;
      case 3915954346:
        return EStringUiIds.eStrImportVideo;
      case 1452155167:
        return EStringUiIds.eStrCheckSettings;
      case 2333472851:
        return EStringUiIds.eStrRemoveCategoryMsg;
      case 1972237221:
        return EStringUiIds.eStrDeleteFolder;
      case 1359904695:
        return EStringUiIds.eStrDeleteAllHistoryMsg;
      case 4059118733:
        return EStringUiIds.eStrDeleteAllFavouritesMsg;
      case 1351068526:
        return EStringUiIds.eStrClearHistoryAndData;
      case 2431968211:
        return EStringUiIds.eStrDeleteAllDriverBehaviorDataMsg;
      case 4054690742:
        return EStringUiIds.eStrViewTerms;
      case 4054811731:
        return EStringUiIds.eStrDeleteAllRecentsMsg;
      case 1664459621:
        return EStringUiIds.eStrNewVersionAvailable;
      case 3682611116:
        return EStringUiIds.eStrVersion;
      case 2404322486:
        return EStringUiIds.eStrMapUpdateFailed;
      case 3848448621:
        return EStringUiIds.eStrNoOfflineMaps;
      case 2968853097:
        return EStringUiIds.eStrAutoStartStop;
      case 543794801:
        return EStringUiIds.eStrUseMapMatchedPos;
      case 3721401523:
        return EStringUiIds.eStrAIDashCamDescription;
      case 3290523350:
        return EStringUiIds.eStrDriverBehaviorDescription;
      case 319531457:
        return EStringUiIds.eStrDiscoverAIDashCamMsg;
      case 1435977169:
        return EStringUiIds.eStrCloudBackupDescription;
      case 957859392:
        return EStringUiIds.eStrPreferOtherTransportation;
      case 4070405745:
        return EStringUiIds.eStrApplicationEncounteredProblem;
      case 274211859:
        return EStringUiIds.eStrReportNotFoundOrExpired;
      case 2761364748:
        return EStringUiIds.eStrVideoFileInvalid;
      case 972190180:
        return EStringUiIds.eStrFolderNameInUseMsg;
      case 2056587624:
        return EStringUiIds.eStrFileSameNameMsg;
      case 2155220117:
        return EStringUiIds.eStrCarPlayRouteTransportModeNotAvailable;
      case 4186013906:
        return EStringUiIds.eStrRemoveHomeMsg;
      case 323496288:
        return EStringUiIds.eStrRemoveWorkMsg;
      case 3421078087:
        return EStringUiIds.eStrDisclaimer;
      case 2697459967:
        return EStringUiIds.eStrOnline;
      case 1782390967:
        return EStringUiIds.eStrOffline;
      case 3154391285:
        return EStringUiIds.eStrTempMore;
      case 1897917192:
        return EStringUiIds.eStrViaGetDirections;
      case 2898192781:
        return EStringUiIds.eStrLearnMore;
      case 422728496:
        return EStringUiIds.eStrDriverAssistanceDescription;
      case 1821303977:
        return EStringUiIds.eStrImportLandmark;
      case 1134789433:
        return EStringUiIds.eStrImportKml;
      case 2386156244:
        return EStringUiIds.eStrDriver;
      case 4007169944:
        return EStringUiIds.eStrLane;
      case 754206743:
        return EStringUiIds.eStrNewVersionAvailableShort;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
