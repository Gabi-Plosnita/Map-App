// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import 'dart:core';

class SizeType<T> {
  T? width;
  T? height;
  SizeType({
    this.width,
    this.height,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (width != null) {
      json['width'] = width;
    }
    if (height != null) {
      json['height'] = height;
    }
    return json;
  }

  factory SizeType.fromJson(Map<String, dynamic> json) {
    return SizeType(
      width: json['width'],
      height: json['height'],
    );
  }
}

class XyType<T> {
  T? x;
  T? y;
  XyType({
    this.x,
    this.y,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }

  factory XyType.fromJson(Map<String, dynamic> json) {
    return XyType(
      x: json['x'],
      y: json['y'],
    );
  }
}

class XyzType<T> {
  T? x;
  T? y;
  T? z;
  XyzType({
    this.x,
    this.y,
    this.z,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    if (z != null) {
      json['z'] = z;
    }
    return json;
  }

  factory XyzType.fromJson(Map<String, dynamic> json) {
    return XyzType(
      x: json['x'],
      y: json['y'],
      z: json['z'],
    );
  }
}

class RectType<T> {
  T? x;
  T? y;
  T? width;
  T? height;
  RectType({
    this.x,
    this.y,
    this.width,
    this.height,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (height != null) {
      json['height'] = height;
    }
    return json;
  }

  factory RectType.fromJson(Map<String, dynamic> json) {
    return RectType(
      x: json['x'],
      y: json['y'],
      width: json['width'],
      height: json['height'],
    );
  }
}

class TimeDistance {
  int unrestrictedTimeS;
  int restrictedTimeS;

  int unrestrictedDistanceM;
  int restrictedDistanceM;
  double? ndBeginEndRatio;

  TimeDistance(
      {this.unrestrictedTimeS = 0,
      this.restrictedTimeS = 0,
      this.unrestrictedDistanceM = 0,
      this.restrictedDistanceM = 0,
      this.ndBeginEndRatio = -1.0});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (unrestrictedTimeS != null) {
      json['unrestrictedTimeS'] = unrestrictedTimeS;
    }
    if (restrictedTimeS != null) {
      json['restrictedTimeS'] = restrictedTimeS;
    }
    if (unrestrictedDistanceM != null) {
      json['unrestrictedDistanceM'] = unrestrictedDistanceM;
    }
    if (restrictedDistanceM != null) {
      json['restrictedDistanceM'] = restrictedDistanceM;
    }
    if (ndBeginEndRatio != null) {
      json['ndBeginEndRatio'] = ndBeginEndRatio;
    }
    return json;
  }

  factory TimeDistance.fromJson(Map<String, dynamic> json) {
    return TimeDistance(
        unrestrictedTimeS: json['unrestrictedTimeS'],
        restrictedTimeS: json['restrictedTimeS'],
        unrestrictedDistanceM: json['unrestrictedDistanceM'],
        restrictedDistanceM: json['restrictedDistanceM'],
        ndBeginEndRatio: json['ndBeginEndRatio']);
  }
}

class Rgba {
  int r;
  int g;
  int b;
  int a;
  Rgba({this.r = 0, this.g = 0, this.b = 0, this.a = 255});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['r'] = r;
    json['g'] = g;
    json['b'] = b;
    json['a'] = a;
    return json;
  }

  factory Rgba.fromJson(Map<String, dynamic> json) {
    return Rgba(r: json['r'], g: json['g'], b: json['b'], a: json['a']);
  }
}

class SdkVersion {
  int minor;
  int major;
  int year;
  int week;
  String revision;
  SdkVersion(
      {this.minor = 0,
      this.major = 0,
      this.year = 0,
      this.week = 0,
      this.revision = ""});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['minor'] = minor;
    json['major'] = major;
    json['year'] = year;
    json['week'] = week;
    json['revision'] = revision;
    return json;
  }

  factory SdkVersion.fromJson(Map<String, dynamic> json) {
    return SdkVersion(
        minor: json['minor'],
        major: json['major'],
        week: json['week'],
        year: json['year'],
        revision: json['revision']);
  }
}

class Version {
  int minor;
  int major;
  Version({this.minor = 0, this.major = 0});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['minor'] = minor;
    json['major'] = major;
    return json;
  }

  factory Version.fromJson(Map<String, dynamic> json) {
    return Version(minor: json['minor'], major: json['major']);
  }
}

class ImageList {
  ImageList();
  factory ImageList.fromJson(Map<String, dynamic> json) {
    return ImageList();
  }
}

class GeographicArea {
  GeographicArea();
  factory GeographicArea.fromJson(Map<String, dynamic> json) {
    return GeographicArea();
  }
}

class AutoDisposableObject<T> {
  final Finalizer<T> _finalizer;

  T _obj;

  AutoDisposableObject._(this._finalizer, this._obj);

  factory AutoDisposableObject.create(T obj, Finalizer<T> finalizer) {
    final wrapper = AutoDisposableObject<T>._(finalizer, obj);
    // Get finalizer callback when `wrapper` is no longer reachable.
    finalizer.attach(wrapper, obj, detach: wrapper);
    return wrapper;
  }
  void destructor() {}
  void dispose() {
    // User requested disposal.
    destructor();
    // Detach from finalizer, no longer needed.
    _finalizer.detach(this);
  }

  // Some useful methods.
}

class Pair<T1, T2> {
  final T1 first;
  final T2 second;

  Pair(this.first, this.second);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;

    final Pair<T1, T2> typedOther = other as Pair<T1, T2>;
    return first == typedOther.first && second == typedOther.second;
  }
}
