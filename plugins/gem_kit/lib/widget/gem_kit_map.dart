// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

/// Callback method for when the map is ready to be used.
///
/// Pass to [GemMap.onMapCreated] to receive a [GemMapController] when the map is created.
typedef MapCreatedCallback = void Function(GemMapController controller);

/// GemMap Widget
///
/// {@category Maps & 3D Scene}
class GemMap extends StatefulWidget {
  const GemMap({
    Key? key,
    this.onMapCreated,
  }) : super(key: key);

  /// Callback method for when the map is ready to be used.
  ///
  /// Used to receive a [GemMapController] for this [GemMap].
  final MapCreatedCallback? onMapCreated;

  @override
  State createState() => GemMapState();
}

/// GemMap State
///
/// {@category Maps & 3D Scene}
class GemMapState extends State<GemMap> {
  final Completer<GemMapController> _controller = Completer<GemMapController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return HtmlElementView(
          viewType: 'canvasView', onPlatformViewCreated: onPlatformViewCreated);
    }
    if (!kIsWeb && Platform.isIOS) {
      return buildNativeView(onPlatformViewCreated);
    } else if (Platform.isAndroid) {
      return buildNativeAndroidView(onPlatformViewCreated);
    } else {
      return Container();
    }
  }

  Widget buildNativeAndroidView(
      PlatformViewCreatedCallback onPlatformViewCreated) {
    // This is used in the platform side to register the view.
    const String viewType = 'plugins.flutter.dev/gem_maps';
    // Pass parameters to the platform side.
    const Map<String, dynamic> creationParams = <String, dynamic>{};

    return AndroidView(
      viewType: viewType,
      onPlatformViewCreated: onPlatformViewCreated,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }

  Widget buildNativeView(PlatformViewCreatedCallback onPlatformViewCreated) {
    // This is used in the platform side to register the view.
    const String viewType = 'plugins.flutter.dev/gem_maps';

    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = <String, dynamic>{
      'initialPosition': '45.456#25.568', // demo params.
    };

    return UiKitView(
      viewType: viewType,
      onPlatformViewCreated: onPlatformViewCreated,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }

  Future<void> onPlatformViewCreated(int id) async {
    final GemMapController controller = await GemMapController.init(id, this);
    controller.registerForEventsHandler();
    _controller.complete(controller);
    final MapCreatedCallback? onMapCreated = widget.onMapCreated;
    if (onMapCreated != null) {
      onMapCreated(controller);
    }
  }

  @override
  void didUpdateWidget(GemMap oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _disposeController();
    super.dispose();
  }

  Future<void> _disposeController() async {
    final GemMapController controller = await _controller.future;
    controller.dispose();
  }
}
