// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:flutter/services.dart";
import "package:gem_kit/api/gem_mapviewpreferences.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_sdk.dart";
import "gem_progresslistener.dart";
import "gem_contenttypes.dart";
import "gem_listener.dart";
import "gem_apilists.dart";
import "gem_string.dart";
import "gem_time.dart";
import "gem_images.dart";
import "gem_locale.dart";
import "gem_parameters.dart";
import "gem_types.dart";
import "dart:convert";

enum EContentStoreItemStatus {
  CIS_Unavailable,
  CIS_Completed,
  CIS_Paused,
  CIS_DownloadQueued,
  CIS_DownloadWaitingNetwork,
  CIS_DownloadWaiting,
  CIS_DownloadWaitingFreeNetwork,
  CIS_DownloadRunning,
  CIS_UpdateWaiting,
}

extension EContentStoreItemStatusExtension on EContentStoreItemStatus {
  int get id {
    switch (this) {
      case EContentStoreItemStatus.CIS_Unavailable:
        return 0;
      case EContentStoreItemStatus.CIS_Completed:
        return 1;
      case EContentStoreItemStatus.CIS_Paused:
        return 2;
      case EContentStoreItemStatus.CIS_DownloadQueued:
        return 3;
      case EContentStoreItemStatus.CIS_DownloadWaitingNetwork:
        return 4;
      case EContentStoreItemStatus.CIS_DownloadWaiting:
        return 4;
      case EContentStoreItemStatus.CIS_DownloadWaitingFreeNetwork:
        return 6;
      case EContentStoreItemStatus.CIS_DownloadRunning:
        return 7;
      case EContentStoreItemStatus.CIS_UpdateWaiting:
        return 8;
      default:
        return -1;
    }
  }

  static EContentStoreItemStatus fromId(int id) {
    switch (id) {
      case 0:
        return EContentStoreItemStatus.CIS_Unavailable;
      case 1:
        return EContentStoreItemStatus.CIS_Completed;
      case 2:
        return EContentStoreItemStatus.CIS_Paused;
      case 3:
        return EContentStoreItemStatus.CIS_DownloadQueued;
      case 4:
        return EContentStoreItemStatus.CIS_DownloadWaitingNetwork;
      case 5:
        return EContentStoreItemStatus.CIS_DownloadWaiting;
      case 6:
        return EContentStoreItemStatus.CIS_DownloadWaitingFreeNetwork;
      case 7:
        return EContentStoreItemStatus.CIS_DownloadRunning;
      case 8:
        return EContentStoreItemStatus.CIS_UpdateWaiting;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class ContentStoreItem extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  ContentStoreItem()
      : _id = -1,
        _mapId = -1;
  ContentStoreItem.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  String getName() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getName",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  int getId() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getId",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  String getChapterName() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getChapterName",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  List<String> getCountryCodes() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getCountryCodes",
        'args': {}
      }));
      return (jsonDecode(resultString!)['result']).cast<String>();
    } catch (e) {
      throw (e.toString());
    }
  }

  Language getLanguage() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getLanguage",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Language.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  EContentType getType() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getType",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return EContentTypeExtension.fromId(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  String getFileName() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getFileName",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  Version getClientVersion() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getClientVersion",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Version.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  int getTotalSize() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getTotalSize",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  int getAvailableSize() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getAvailableSize",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  bool isCompleted() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "isCompleted",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  EContentStoreItemStatus getStatus() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getStatus",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return EContentStoreItemStatusExtension.fromId(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  int pauseDownload() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "pauseDownload",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  int cancelDownload() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "cancelDownload",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  int getDownloadProgress() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getDownloadProgress",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  bool canDeleteContent() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "canDeleteContent",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  int deleteContent() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "deleteContent",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  bool isImagePreviewAvailable() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "isImagePreviewAvailable",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  Uint8List getImagePreview(XyType<int> size) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getImagePreview",
        'args': size
      }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      throw (e.toString());
    }
  }

// SearchableParameterList getContentParameters() {
// try {
// final resultString = GemKitPlatform.instance
// .callObjectMethod(
// jsonEncode({
// 'id':_id,
// 'class':"ContentStoreItem",
// 'method':"getContentParameters",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return SearchableParameterList.init(decodedVal['result'],_mapId);
// } catch (e) {
// throw (e.toString());
// }
// }
  ContentStoreItem getUpdateItem() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getUpdateItem",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return ContentStoreItem.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  bool isUpdatable() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "isUpdatable",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  int getUpdateSize() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getUpdateSize",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  Version getUpdateVersion() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItem",
        'method': "getUpdateVersion",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Version.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  static ContentStoreItem create(int mapId) {
    final resultString = GemKitPlatform.instance
        .callCreateObject(jsonEncode({'class': "ContentStoreItem"}));
    final decodedVal = jsonDecode(resultString!);
    return ContentStoreItem.init(decodedVal['result'], mapId);
  }

  void dispose() {
    GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "ContentStoreItem", 'id': _id}));
  }

  Future<ProgressListener> asyncDownload(void Function(int) onCompleteCallback,
      {void Function(int)? onProgressCallback}) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: 0)
        .invokeMethod<String>(
            'callObjectMethod',
            jsonEncode({
              'id': _id,
              'class': "ContentStoreItem",
              'method': "asyncDownload",
              'args': {}
            }));
    final decodedVal = jsonDecode(resultString!);
    final progListener = ProgressListener.init(decodedVal['result'], 0);
    if (onProgressCallback != null) {
      progListener.registerOnProgressCallback((p0) {
        onProgressCallback!(p0);
      });
    }
    progListener.registerOnCompleteWithDataCallback((err, hint, json) {
      if (err == 0) {
        onCompleteCallback(0);
        //onCompleteCallback(err, result.getJson());
      } else {
        onCompleteCallback(err);
      }
    });
    GemKitPlatform.instance.registerEventHandler(progListener.id, progListener);
    return progListener;
  }
}

class ContentStoreItemList {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  ContentStoreItemList()
      : _id = -1,
        _mapId = -1;
  ContentStoreItemList.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;

  static ContentStoreItemList create(int mapId) {
    final resultString = GemKitPlatform.instance
        .callCreateObject(jsonEncode({'class': "ContentStoreItemList"}));
    final decodedVal = jsonDecode(resultString!);
    return ContentStoreItemList.init(decodedVal['result'], mapId);
  }

  void dispose() {
    GemKitPlatform.instance.callDeleteObject(
        jsonEncode({'class': "ContentStoreItemList", 'id': _id}));
  }

  ContentStoreItem operator [](int index) => get(index);
  int size() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItemList",
        'method': "size",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  ContentStoreItem get(int index) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "ContentStoreItemList",
        'method': "get",
        'args': index
      }));
      final decodedVal = jsonDecode(resultString!);
      return ContentStoreItem.init(decodedVal['result'], 0);
    } catch (e) {
      throw (e.toString());
    }
  }
}
