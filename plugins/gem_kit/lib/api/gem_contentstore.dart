// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/api/gem_contenttypes.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_contentstoreitem.dart";
import "gem_apilists.dart";
import "gem_string.dart";
import "gem_geographicarea.dart";
import "gem_contentupdate.dart";
import "gem_transferstatistics.dart";
import "dart:convert";
import "gem_progresslistener.dart";
import "gem_contentstoreitem.dart";

class ContentStore {
  static Future<ProgressListener> asyncGetStoreContentList(
      EContentType type,
      void Function(int, ContentStoreItemList?, bool?)
          onCompleteCallback) async {
    final resultString =
        await GemKitPlatform.instance.getChannel(mapId: 0).invokeMethod<String>(
            'callObjectMethod',
            jsonEncode({
              'id': 0,
              'class': "ContentStore",
              'method': "asyncGetStoreContentList",
              'args': type.id
            }));
    final decodedVal = jsonDecode(resultString!);
    final progListener = ProgressListener.init(decodedVal['result'], 0);
    progListener.registerOnCompleteWithDataCallback((err, hint, json) {
      if (err == 0) {
        final contentStoreListString =
            GemKitPlatform.instance.callObjectMethod(jsonEncode({
          'id': 0,
          'class': "ContentStore",
          'method': "getStoreContentList",
          'args': type.id
        }));
        final decodedRetVal = jsonDecode(contentStoreListString!);
        final listId = decodedRetVal['result']['contentStoreListId'];
        bool isCached = decodedRetVal['result']['isCached'];
        onCompleteCallback(0, ContentStoreItemList.init(listId, 0), isCached);
        //onCompleteCallback(err, result.getJson());
      } else {
        onCompleteCallback(err, null, null);
      }
    });
    GemKitPlatform.instance.registerEventHandler(progListener.id, progListener);
    return progListener;
  }
}
