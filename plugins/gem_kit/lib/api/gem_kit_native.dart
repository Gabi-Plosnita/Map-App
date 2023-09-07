import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
import 'package:gem_kit/ffi/generated_binding.dart' as nativeBindings;
import 'dart:isolate';

class _SentryIsolateMessage {
  _SentryIsolateMessage(this.port, this.isolateId, this.nativeLibraryPath);
  final SendPort port;
  final int isolateId;
  final String? nativeLibraryPath;
}

class GemSdkNative {
  static int _isolateId = -1;
  static late StreamSubscription _callbackStream;
  nativeBindings.GEMKitFFigen? gemWebRTCNative = null;
  final DynamicLibrary libToLoad = Platform.isWindows
      ? DynamicLibrary.open('GEMWebRTC.dll')
      : Platform.isLinux
          ? DynamicLibrary.open('libGEM.so')
          : Platform.isAndroid
              ? DynamicLibrary.open('libGEM.so')
              : DynamicLibrary.process();

  GemSdkNative() {}

  void loadNative() async {
    if (gemWebRTCNative == null) {
      final lookUp = libToLoad.lookup;
      gemWebRTCNative = nativeBindings.GEMKitFFigen.fromLookup(lookUp);
      //registerCallbackPointer();
    }
  }

  void loadNativeD() {}
  void isolateEntryPoint(SendPort sendPort) {
    // This function runs in a separate isolate
    final ReceivePort receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);

    // Function to be called from the native side
    void onNotifyEventIsolate(Pointer<Char> pChar) {
      sendPort.send(pChar);
    }

    // Wait for messages from the main isolate
    receivePort.listen((message) {
      if (message is Function) {
        // Register the isolate callback with the main isolate
        //final OnNotifyEventDart callback = onNotifyEventIsolate;
        //message(callback);
      }
    });
  }

  void registerCallbackPointer() {
    final receivePort = ReceivePort();
    //Isolate.spawn(_sentryIsolate, _SentryIsolateMessage(receivePort.sendPort, isolateId, nativeLibraryPath));
    //_callbackStream = receivePort.listen((dynamic _) { _libraryExecuteCallbacks(isolateId); });
    nativeBindings.Dart_onNotifyEvent pointer =
        Pointer.fromFunction(onNotifyEvent);
    gemWebRTCNative!.native_register_callback(pointer);
  }

  static void onNotifyEvent(Pointer<Char> pChar) {
    if (pChar != nullptr) {
      final response = pChar.cast<Utf8>().toDartString();
      final decodeId = jsonDecode(response);
      int x = 3;
    }
  }

  dynamic callObjectMethod(String json, int markerId) {
    final dataNative = json.toNativeUtf8().cast<Char>();
    final result = gemWebRTCNative!
        .native_call_marker_add(dataNative, json.length, markerId);
    if (result != nullptr) {
      final response = result.cast<Utf8>().toDartString();
      malloc.free(dataNative);
      malloc.free(result);
      return response;
    }
  }

  dynamic callCreateObject(String json) {
    final dataNative = json.toNativeUtf8().cast<Char>();
    final result =
        gemWebRTCNative!.native_call_createObject(dataNative, json.length);
    malloc.free(dataNative);
    if (result != nullptr) {
      String? response;
      try {
        response = result.cast<Utf8>().toDartString();
      } catch (e) {
        int x = 3;
      }
      malloc.free(result);
      return response;
    }

    return nullptr;
  }

  void callDeleteObject(String json) {
    final dataNative = json.toNativeUtf8().cast<Char>();
    gemWebRTCNative!.native_deleteObject(dataNative, json.length);
    malloc.free(dataNative);
  }
}
