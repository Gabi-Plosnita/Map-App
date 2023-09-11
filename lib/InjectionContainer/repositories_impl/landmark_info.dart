import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';

class LandmarkInfo {
  String? name;
  Coordinates? coordinates;
  Future<Uint8List?>? image;

  LandmarkInfo(Landmark landmark){
    name=landmark.getName();
    coordinates = landmark.getCoordinates();
    final data = landmark.getImage(100, 100);
    image = _decodeImageData(data);
  }

  Future<Uint8List?> _decodeImageData(Uint8List data) async {
    Completer<Uint8List?> c = Completer<Uint8List?>();

    int width = 100;
    int height = 100;

    decodeImageFromPixels(data, width, height, PixelFormat.rgba8888,
        (Image img) async {
      final data = await img.toByteData(format: ImageByteFormat.png);
      if (data == null) {
        c.complete(null);
      }
      final list = data!.buffer.asUint8List();
      c.complete(list);
    });

    return c.future;
  }
}
