// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import 'gem_kit_platform_interface.dart';

import 'dart:ui_web' show platformViewRegistry;
import 'dart:html' as html;
import 'dart:js';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

const assetsPath = 'assets/packages/gem_kit/assets/';

final Completer _completer = Completer();
final Map<int, MethodChannel> _channels = <int, MethodChannel>{};

void createScreen(String canvasId) async {
  await _completer.future;
  var pWebRTCModule = context["Module"];
  final canvasNameNative = pWebRTCModule.callMethod("allocateUTF8", [canvasId]);
  pWebRTCModule.callMethod("_createScreen", [canvasNameNative]);
  pWebRTCModule.callMethod("_free", [canvasNameNative]);
}

html.CanvasElement createCanvas(int viewId) {
  final wrapper = html.DivElement()
    ..style.width = "100%"
    ..style.height = "100%"
    ..style.position = "absolute"
    ..tabIndex = 0
    ..onContextMenu.listen((event) => event.preventDefault());
  String canvasName = "canvas$viewId";
  final canvas = html.CanvasElement()
    ..style.width = "100%"
    ..style.height = "100%"
    ..className = "emscripten"
    ..id = canvasName;
  createScreen(canvasName);
  wrapper.children.add(canvas);
  //create channel
  GemKitWeb.createChannelWithId(viewId);
  return canvas;
}

void loadWasmModule() {
  //document.body = BodyElement();
  if (html.document.head == null) {
    html.document.body
        ?.insertAdjacentElement("beforebegin", html.HeadElement());
  }
  final style = html.StyleElement();
  style.innerHtml = '''
  .emscripten {
    position: relative;
    top: 0px;
    left: 0px;
    margin: 0px;
    border: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
    display: block;
    image-rendering: optimizeSpeed;
    image-rendering: -moz-crisp-edges;
    image-rendering: -o-crisp-edges;
    image-rendering: -webkit-optimize-contrast;
    image-rendering: optimize-contrast;
    image-rendering: crisp-edges;
    image-rendering: pixelated;
    -ms-interpolation-mode: nearest-neighbor;
  }
''';
  html.document.head?.append(style);
  var script = html.ScriptElement();
  script.src = '${assetsPath}gemkitloader.js';
  script.type = 'text/javascript';
  script.onLoad.listen((_) {
    context.callMethod("initApp", []);
  });
  html.document.body?.children.add(script);
  //html.document.body?.children.add(wrapper);
  platformViewRegistry.registerViewFactory(
      'canvasView', (int viewId) => createCanvas(viewId));
}

void finishedLoadWasm() {
  GemMethodListener.initCallbackFunctions();
  GemKitWeb.initCallbackFunctions();

  var pWebRTCModule = context["Module"];
  String appToken = "YourAPPToken";
  // final appTokenNative = pWebRTCModule.callMethod("allocateUTF8", [appToken]);
  // pWebRTCModule.callMethod("_setAppAuthorization", [appTokenNative]);
  // pWebRTCModule.callMethod("_free", [appTokenNative]);
  try {
    _completer.complete();
  } catch (e) {}
}

typedef CallbackMethodListener = void Function(String);

class GemMethodListener {
  GemMethodListener(pCallbackMethod) {
    _pCallbackMethod = pCallbackMethod;
    var pWebRTCModule = context["Module"];
    _pVoidPointer =
        pWebRTCModule.callMethod("_CreateMethodListener", [pointerFunc]);
  }
  static initCallbackFunctions() {
    var pWebRTCModule = context["Module"];
    pointerFunc =
        pWebRTCModule.callMethod("addFunction", [callbackHandler, 'viii']);
  }

  static GemMethodListener produce(pCallbackMethod) {
    final gemMethodListener = GemMethodListener(pCallbackMethod);
    instanceList[gemMethodListener.getNativePointer()] = gemMethodListener;
    return gemMethodListener;
  }

  static void callbackHandler(
      int pVoidPointer, int messageType, int messageChar) {
    var pGemMethodListener = instanceList[pVoidPointer];
    if (messageType == 0) {
      var pWebRTCModule = context["Module"];
      String pCharConverted =
          pWebRTCModule.callMethod("UTF8ToString", [messageChar]);
      pGemMethodListener._pCallbackMethod(pCharConverted);
    } else if (messageType == 1) {
      var pWebRTCModule = context["Module"];
      pWebRTCModule.callMethod("_DeleteMethodListener", [pVoidPointer]);
      instanceList.remove(pVoidPointer);
    }
  }

  int getNativePointer() {
    return _pVoidPointer;
  }

  static var instanceList = new Map();
  int _pVoidPointer = 0;
  static dynamic pointerFunc;
  late CallbackMethodListener _pCallbackMethod;
}

void handleMessage(
    String methodName, String arguments, String canvasId, pFuncCallback) {
  final gemMethodListener = GemMethodListener.produce(pFuncCallback);
  var pWebRTCModule = context["Module"];
  final methodNameNative =
      pWebRTCModule.callMethod("allocateUTF8", [methodName]);
  final argumentsNative = pWebRTCModule.callMethod("allocateUTF8", [arguments]);
  final canvasIdNative = pWebRTCModule.callMethod("allocateUTF8", [canvasId]);
  try {
    pWebRTCModule.callMethod("_HandleMessage", [
      methodNameNative,
      gemMethodListener.getNativePointer(),
      argumentsNative,
      canvasIdNative
    ]);
  } catch (e) {
    print(e);
  }
  pWebRTCModule.callMethod("_free", [methodNameNative]);
  pWebRTCModule.callMethod("_free", [argumentsNative]);
  pWebRTCModule.callMethod("_free", [canvasIdNative]);
}

/// A web implementation of the GemKitPlatform of the GemKit plugin.
///
/// {@category Core}
class GemKitWeb extends GemKitPlatform {
  /// Constructs a GemKitWeb
  GemKitWeb() {
    context['finishedLoadWasm'] = JsFunction.withThis((_) {
      finishedLoadWasm();
    });
  }
  static initCallbackFunctions() {
    var pWebRTCModule = context["Module"];
    pointerFunc =
        pWebRTCModule.callMethod("addFunction", [invokeMethod, 'vii']);
    pWebRTCModule.callMethod("_registerChannelMethod", [pointerFunc]);
  }

  static invokeMethod(int methodNativeString, int argumentsString) {
    var pWebRTCModule = context["Module"];
    String methodName =
        pWebRTCModule.callMethod("UTF8ToString", [methodNativeString]);
    String arguments =
        pWebRTCModule.callMethod("UTF8ToString", [argumentsString]);
    _channels[0]!.invokeMethod(methodName, arguments);
  }

  static createChannelWithId(int id) {
    _channels[id] = MethodChannel(
      'plugins.flutter.dev/gem_maps_$id',
      const StandardMethodCodec(),
      binaryMessenger,
    );
    _channels[id]!.setMethodCallHandler((call) async {
      await _completer.future;
      switch (call.method) {
        default:
          {
            final Completer pCompleter = Completer();
            String returnMessage = "{}";
            String arg = call.arguments ?? "";
            String canvasId = "canvas$id";
            handleMessage(call.method, arg, canvasId, (String retVal) {
              returnMessage = retVal;
              pCompleter.complete();
            });
            await pCompleter.future;
            return Future.value(returnMessage);
          }
      }
    });
  }

  static dynamic pointerFunc;
  static void registerWith(Registrar registrar) {
    loadWasmModule();
    binaryMessenger = registrar.messenger;
    GemKitPlatform.instance = GemKitWeb();
    createChannelWithId(0);
  }

  static BinaryMessenger? binaryMessenger;

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
