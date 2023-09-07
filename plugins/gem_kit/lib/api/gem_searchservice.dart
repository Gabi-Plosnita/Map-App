// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "dart:convert";
import "gem_apilists.dart";
import "gem_progresslistener.dart";
import "gem_addressinfo.dart";
import "gem_geographicarea.dart";
import "gem_searchpreferences.dart";
import "gem_transferstatistics.dart";
import "gem_routingservice.dart";
import "gem_coordinates.dart";
import "gem_types.dart";

class SearchService extends IGemEventHandler {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  SearchService()
      : _id = -1,
        _mapId = -1;
  SearchService.init(dynamic id, int mapId)
      : _id = id,
        _mapId = mapId;

  // Future<int> search(
  //   LandmarkList results,
  //   ProgressListener listener,
  //   String textFilter,
  //   Coordinates referenceCoordinates, {
  //   SearchPreferences? preferences,
  //   RectangleGeographicArea? locationHint,
  // }) async {
  //   try {
  //     final listenerId = listener.id;
  //     GemKitPlatform.instance.registerEventHandler(listener.id, listener);
  //     final resultString = await GemKitPlatform.instance
  //         .getChannel(mapId: _mapId)
  //         .invokeMethod<String>(
  //             'callObjectMethod',
  //             jsonEncode({
  //               'id': _id,
  //               'class': "SearchService",
  //               'method': "search",
  //               'args': {
  //                 'results': results.id,
  //                 'listener': listener.id,
  //                 'textFilter': textFilter,
  //                 'referenceCoordinates': referenceCoordinates,
  //                 if (preferences != null) 'preferences': preferences,
  //                 if (locationHint != null) 'locationHint': locationHint
  //               }
  //             }));
  //     final decodedVal = jsonDecode(resultString!);
  //     return decodedVal['result'];
  //   } catch (e) {
  //     return Future.error(e.toString());
  //   }
  // }

  /// Search using text and geographic area as discriminants.
  ///
  /// **Parameters**
  ///
  /// * **IN** *textFilter* The text filter.
  /// * **IN** *referenceCoordinates* The reference position. Results will be relevant to this position.
  /// * **IN** *onCompleteCallback* Will be invoked when the search operation is completed, providing the search results and an error code.
  /// * **IN** *preferences* The search preferences. Optional.
  /// * **IN** *locationHint* 	The location hint. The search will be restricted to the provided geographic area. Optional.

  Future<ProgressListener> search(
    String textFilter,
    Coordinates referenceCoordinates,
    void Function(int, LandmarkList?) onCompleteCallback, {
    SearchPreferences? preferences,
    RectangleGeographicArea? locationHint,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'freeTextSearch',
              jsonEncode({
                'args': {
                  'textFilter': textFilter,
                  'referenceCoordinates': referenceCoordinates,
                  if (preferences != null) 'preferences': preferences,
                  if (locationHint != null) 'locationHint': locationHint
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], _mapId);
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {
        if (err == 0) {
          final searchLandmark = LandmarkList.init(json['searchId'], _mapId);
          onCompleteCallback(err, searchLandmark);
        } else {
          onCompleteCallback(err, null);
        }
      });
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Search for landmarks along the specified route.
  ///
  /// **Parameters**
  ///
  /// * **IN** *route* The target route.
  /// * **IN** *textFilter* The text filter. Optional.
  /// * **IN** *preferences* The search preferences. Optional.
  ///
  /// If route.getRouteResultType() == ERouteResultType::RRT_Path, the search is performed along the route path.
  /// If route.getRouteResultType() == ERouteResultType::RRT_Range, the search is performed withing route range polygon.
  Future<ProgressListener> searchAlongRoute(
    Route route,
    void Function(int, LandmarkList?) onCompleteCallback, {
    String? textFilter,
    SearchPreferences? preferences,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'searchAlongRoute',
              jsonEncode({
                'args': {
                  'route': route.id,
                  if (textFilter != null) 'textFilter': textFilter,
                  if (preferences != null) 'preferences': preferences
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], _mapId);
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {
        if (err == 0) {
          final searchLandmark = LandmarkList.init(json['searchId'], _mapId);
          onCompleteCallback(err, searchLandmark);
        } else {
          onCompleteCallback(err, null);
        }
      });
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  ///Get list of landmarks for specific coordinates.
  ///
  /// **Parameters**
  ///
  /// * **IN** *position* The position.
  /// * **IN** *textFilter* The text filter. Optional.
  /// * **IN** *preferences* The search preferences. Optional.

  Future<ProgressListener> searchAroundPosition(
    Coordinates position,
    void Function(int, LandmarkList?) onCompleteCallback, {
    String? textFilter,
    SearchPreferences? preferences,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'searchAroundPosition',
              jsonEncode({
                'args': {
                  'position': position,
                  if (textFilter != null) 'textFilter': textFilter,
                  if (preferences != null) 'preferences': preferences
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], _mapId);
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {
        if (err == 0) {
          final searchLandmark = LandmarkList.init(json['searchId'], _mapId);
          onCompleteCallback(err, searchLandmark);
        } else {
          onCompleteCallback(err, null);
        }
      });
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get list of landmarks in the given geographic area.
  ///
  /// **Parameters**
  ///
  /// * **IN** *results* The landmark list where to store the result.
  /// * **IN** *listener* The listener of the operation.
  /// * **IN** *area* The search target area.
  /// * **IN** *referenceCoordinates* The reference position. Results will be relevant to this position.
  /// * **IN** *textFilter* The optional text filter. Optional.
  /// * **IN** *preferences* The search preferences. Optional.
  Future<ProgressListener> searchInArea(
    RectangleGeographicArea area,
    Coordinates referenceCoordinates,
    void Function(int, LandmarkList?) onCompleteCallback, {
    String? textFilter,
    SearchPreferences? preferences,
  }) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'searchInArea',
              jsonEncode({
                'args': {
                  'area': area,
                  'referenceCoordinates': referenceCoordinates,
                  if (textFilter != null) 'textFilter': textFilter,
                  if (preferences != null) 'preferences': preferences
                }
              }));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], _mapId);
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {
        if (err == 0) {
          final searchLandmark = LandmarkList.init(json['searchId'], _mapId);
          onCompleteCallback(err, searchLandmark);
        } else {
          onCompleteCallback(err, null);
        }
      });
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get details for the given landmark list.
  ///
  /// **Parameters**
  ///
  /// * **IN** *results* The landmark list where to store the result.
  /// * **IN** *listener* The listener of the operation.
  ///
  /// If the landmarks in list already have the details populated, the function will return *error::KUpToDate*
  Future<ProgressListener> searchLandmarkDetails(
      LandmarkList results, void Function(int) onCompleteCallback) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'searchLandmarkDetails', jsonEncode({'args': results.id}));
      final decodedVal = jsonDecode(resultString!);
      final progListener = ProgressListener.init(decodedVal['result'], _mapId);
      progListener.registerOnCompleteWithDataCallback((err, hint, json) {
        onCompleteCallback(err);
      });
      GemKitPlatform.instance
          .registerEventHandler(progListener.id, progListener);
      return progListener;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Cancel specific request identified by the progress listener.

  Future<void> cancelSearch(ProgressListener progressListener) async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'cancelSearch', jsonEncode({'searchId': progressListener.id}));
      //final decodedVal = jsonDecode(resultString!);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<TransferStatistics> getTransferStatistics() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "SearchService",
                'method': "getTransferStatistics",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return TransferStatistics.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static Future<SearchService> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "SearchService"}));
    final decodedVal = jsonDecode(resultString!);
    return SearchService.init(decodedVal['result'], mapId);
  }
}

// Please Complete the structure from the c++, it doesn't have an exact match!
