import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "dart:convert";
import "gem_sdk.dart";
import "gem_databuffer.dart";
import "gem_rendercontext.dart";
import "gem_types.dart";

enum EImageFileFormat {
  IFF_Bmp,
  IFF_Jpeg,
  IFF_Gif,
  IFF_Png,
  IFF_Tga,
  IFF_Pvrtc,
  IFF_AutoDetect,
}

extension EImageFileFormatExtension on EImageFileFormat {
  int get id {
    switch (this) {
      case EImageFileFormat.IFF_Bmp:
        return 0;
      case EImageFileFormat.IFF_Jpeg:
        return 1;
      case EImageFileFormat.IFF_Gif:
        return 2;
      case EImageFileFormat.IFF_Png:
        return 3;
      case EImageFileFormat.IFF_Tga:
        return 4;
      case EImageFileFormat.IFF_Pvrtc:
        return 5;
      case EImageFileFormat.IFF_AutoDetect:
        return 6;
      default:
        return -1;
    }
  }

  static EImageFileFormat fromId(int id) {
    switch (id) {
      case 0:
        return EImageFileFormat.IFF_Bmp;
      case 1:
        return EImageFileFormat.IFF_Jpeg;
      case 2:
        return EImageFileFormat.IFF_Gif;
      case 3:
        return EImageFileFormat.IFF_Png;
      case 4:
        return EImageFileFormat.IFF_Tga;
      case 5:
        return EImageFileFormat.IFF_Pvrtc;
      case 6:
        return EImageFileFormat.IFF_AutoDetect;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EImageType {
  IT_Base,
  IT_AbstractGeometry,
  IT_RoadInfo,
  IT_Signpost,
  IT_LaneInfo,
}

extension EImageTypeExtension on EImageType {
  int get id {
    switch (this) {
      case EImageType.IT_Base:
        return 0;
      case EImageType.IT_AbstractGeometry:
        return 1;
      case EImageType.IT_RoadInfo:
        return 2;
      case EImageType.IT_Signpost:
        return 3;
      case EImageType.IT_LaneInfo:
        return 4;
      default:
        return -1;
    }
  }

  static EImageType fromId(int id) {
    switch (id) {
      case 0:
        return EImageType.IT_Base;
      case 1:
        return EImageType.IT_AbstractGeometry;
      case 2:
        return EImageType.IT_RoadInfo;
      case 3:
        return EImageType.IT_Signpost;
      case 4:
        return EImageType.IT_LaneInfo;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class AbstractGeometryImage extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  AbstractGeometryImage()
      : _id = -1,
        _mapId = -1;
  AbstractGeometryImage.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
// Future<int> render(IBitmap bitmap, settings) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"AbstractGeometryImage",
// 'method':"render",
// 'args':{'bitmap':bitmap,'settings':settings}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  static Future<AbstractGeometryImage> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectConstructor',
            jsonEncode({'class': "AbstractGeometryImage"}));
    final decodedVal = jsonDecode(resultString!);
    return AbstractGeometryImage.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "AbstractGeometryImage", 'id': _id}));
  }
}

class SignpostImage extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  SignpostImage()
      : _id = -1,
        _mapId = -1;
  SignpostImage.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
// Future<int> render(IAdjustableBitmap bitmap,{? settings,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"SignpostImage",
// 'method':"render",
// 'args':{'bitmap':bitmap,if(settings != null) 'settings':settings}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  static Future<SignpostImage> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "SignpostImage"}));
    final decodedVal = jsonDecode(resultString!);
    return SignpostImage.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "SignpostImage", 'id': _id}));
  }
}

class RoadInfoImage extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  RoadInfoImage()
      : _id = -1,
        _mapId = -1;
  RoadInfoImage.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
// Future<int> render(IAdjustableBitmap bitmap, settings) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RoadInfoImage",
// 'method':"render",
// 'args':{'bitmap':bitmap,'settings':settings}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  static Future<RoadInfoImage> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "RoadInfoImage"}));
    final decodedVal = jsonDecode(resultString!);
    return RoadInfoImage.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "RoadInfoImage", 'id': _id}));
  }
}

class LaneImage extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  LaneImage()
      : _id = -1,
        _mapId = -1;
  LaneImage.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
// Future<int> render(IAdjustableBitmap bitmap, settings) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"LaneImage",
// 'method':"render",
// 'args':{'bitmap':bitmap,'settings':settings}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
  static Future<LaneImage> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "LaneImage"}));
    final decodedVal = jsonDecode(resultString!);
    return LaneImage.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "LaneImage", 'id': _id}));
  }
}

class AbstractGeometryImageRenderSettings {
  Rgba? activeInnerColor;
  Rgba? activeOuterColor;
  Rgba? inactiveInnerColor;
  Rgba? inactiveOuterColor;
  AbstractGeometryImageRenderSettings({
    this.activeInnerColor,
    this.activeOuterColor,
    this.inactiveInnerColor,
    this.inactiveOuterColor,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (activeInnerColor != null) {
      json['activeInnerColor'] = activeInnerColor;
    }
    if (activeOuterColor != null) {
      json['activeOuterColor'] = activeOuterColor;
    }
    if (inactiveInnerColor != null) {
      json['inactiveInnerColor'] = inactiveInnerColor;
    }
    if (inactiveOuterColor != null) {
      json['inactiveOuterColor'] = inactiveOuterColor;
    }
    return json;
  }

  factory AbstractGeometryImageRenderSettings.fromJson(
      Map<String, dynamic> json) {
    return AbstractGeometryImageRenderSettings(
      activeInnerColor: json['activeInnerColor'],
      activeOuterColor: json['activeOuterColor'],
      inactiveInnerColor: json['inactiveInnerColor'],
      inactiveOuterColor: json['inactiveOuterColor'],
    );
  }
}

class SignpostImageRenderSettings {
  int borderSize;
  bool borderRoundCorners;
  int maxRows;
  bool smallMode;
  SignpostImageRenderSettings({
    this.borderSize = 10,
    this.borderRoundCorners = true,
    this.maxRows = 3,
    this.smallMode = false,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (borderSize != null) {
      json['borderSize'] = borderSize;
    }
    if (borderRoundCorners != null) {
      json['borderRoundCorners'] = borderRoundCorners;
    }
    if (maxRows != null) {
      json['maxRows'] = maxRows;
    }
    if (smallMode != null) {
      json['smallMode'] = smallMode;
    }
    return json;
  }

  factory SignpostImageRenderSettings.fromJson(Map<String, dynamic> json) {
    return SignpostImageRenderSettings(
      borderSize: json['borderSize'],
      borderRoundCorners: json['borderRoundCorners'],
      maxRows: json['maxRows'],
      smallMode: json['smallMode'],
    );
  }
}

class RoadInfoImageRenderSettings {
  Rgba? backgroundColor;
  RoadInfoImageRenderSettings({
    this.backgroundColor,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    return json;
  }

  factory RoadInfoImageRenderSettings.fromJson(Map<String, dynamic> json) {
    return RoadInfoImageRenderSettings(
      backgroundColor: json['backgroundColor'],
    );
  }
}

class LaneImageRenderSettings {
  Rgba? backgroundColor;
  Rgba? activeColor;
  Rgba? inactiveColor;
  LaneImageRenderSettings({
    this.backgroundColor,
    this.activeColor,
    this.inactiveColor,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (activeColor != null) {
      json['activeColor'] = activeColor;
    }
    if (inactiveColor != null) {
      json['inactiveColor'] = inactiveColor;
    }
    return json;
  }

  factory LaneImageRenderSettings.fromJson(Map<String, dynamic> json) {
    return LaneImageRenderSettings(
      backgroundColor: json['backgroundColor'],
      activeColor: json['activeColor'],
      inactiveColor: json['inactiveColor'],
    );
  }
}
