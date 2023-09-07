import 'dart:js';

class GemSdkNative {
  void loadNative() async {}
  void registerCallbackPointer() {}

  static void onNotifyEvent() {}

  dynamic callObjectMethod(String json, int markerId) {
    var pWebRTCModule = context["Module"];
    final argumentsNative = pWebRTCModule.callMethod("allocateUTF8", [json]);

    try {
      final result = pWebRTCModule.callMethod(
          "_native_call_marker_add", [argumentsNative, json.length, markerId]);
      String resultConverted =
          pWebRTCModule.callMethod("UTF8ToString", [result]);
      pWebRTCModule.callMethod("_free", [argumentsNative]);
      return resultConverted;
    } catch (e) {
      print(e);
    }
    return null;
  }

  dynamic callCreateObject(String json) {
    var pWebRTCModule = context["Module"];
    final argumentsNative = pWebRTCModule.callMethod("allocateUTF8", [json]);

    try {
      final result = pWebRTCModule.callMethod("_native_call_createObject", [
        argumentsNative,
        json.length,
      ]);
      String resultConverted =
          pWebRTCModule.callMethod("UTF8ToString", [result]);
      pWebRTCModule.callMethod("_free", [argumentsNative]);
      return resultConverted;
    } catch (e) {
      print(e);
    }
    return null;
  }

  void callDeleteObject(String json) {
    var pWebRTCModule = context["Module"];
    final argumentsNative = pWebRTCModule.callMethod("allocateUTF8", [json]);

    try {
      pWebRTCModule.callMethod("_native_deleteObject", [
        argumentsNative,
        json.length,
      ]);
      pWebRTCModule.callMethod("_free", [argumentsNative]);
    } catch (e) {
      print(e);
    }
  }
}
