// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_list.dart";
import "gem_types.dart";

enum NNEngineType {
  Unknown,
  Tensorflow,
  TensorflowLite,
  SNPE,
  CoreML,
  ImageProcessing,
}

extension NNEngineTypeExtension on NNEngineType {
  int get id {
    switch (this) {
      case NNEngineType.Unknown:
        return 0;
      case NNEngineType.Tensorflow:
        return 1;
      case NNEngineType.TensorflowLite:
        return 2;
      case NNEngineType.SNPE:
        return 3;
      case NNEngineType.CoreML:
        return 4;
      case NNEngineType.ImageProcessing:
        return 5;
      default:
        return -1;
    }
  }

  static NNEngineType fromId(int id) {
    switch (id) {
      case 0:
        return NNEngineType.Unknown;
      case 1:
        return NNEngineType.Tensorflow;
      case 2:
        return NNEngineType.TensorflowLite;
      case 3:
        return NNEngineType.SNPE;
      case 4:
        return NNEngineType.CoreML;
      case 5:
        return NNEngineType.ImageProcessing;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum NNExecutionType {
  Unknown,
  CPU,
  GPU,
  DSP,
  CPU_GPU,
}

extension NNExecutionTypeExtension on NNExecutionType {
  int get id {
    switch (this) {
      case NNExecutionType.Unknown:
        return 0;
      case NNExecutionType.CPU:
        return 1;
      case NNExecutionType.GPU:
        return 2;
      case NNExecutionType.DSP:
        return 3;
      case NNExecutionType.CPU_GPU:
        return 4;
      default:
        return -1;
    }
  }

  static NNExecutionType fromId(int id) {
    switch (id) {
      case 0:
        return NNExecutionType.Unknown;
      case 1:
        return NNExecutionType.CPU;
      case 2:
        return NNExecutionType.GPU;
      case 3:
        return NNExecutionType.DSP;
      case 4:
        return NNExecutionType.CPU_GPU;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EObjectType {
  Unknown,
  Car,
  Bus,
  Truck,
  Moto,
  Person,
  Cycle,
  TrafficSign,
}

extension EObjectTypeExtension on EObjectType {
  int get id {
    switch (this) {
      case EObjectType.Unknown:
        return 0;
      case EObjectType.Car:
        return 1;
      case EObjectType.Bus:
        return 2;
      case EObjectType.Truck:
        return 3;
      case EObjectType.Moto:
        return 4;
      case EObjectType.Person:
        return 5;
      case EObjectType.Cycle:
        return 6;
      case EObjectType.TrafficSign:
        return 7;
      default:
        return -1;
    }
  }

  static EObjectType fromId(int id) {
    switch (id) {
      case 0:
        return EObjectType.Unknown;
      case 1:
        return EObjectType.Car;
      case 2:
        return EObjectType.Bus;
      case 3:
        return EObjectType.Truck;
      case 4:
        return EObjectType.Moto;
      case 5:
        return EObjectType.Person;
      case 6:
        return EObjectType.Cycle;
      case 7:
        return EObjectType.TrafficSign;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EClassificationFilter {
  NoFilter,
  TrafficSignFilter,
  BrakeFilter,
  All,
}

extension EClassificationFilterExtension on EClassificationFilter {
  int get id {
    switch (this) {
      case EClassificationFilter.NoFilter:
        return 1;
      case EClassificationFilter.TrafficSignFilter:
        return 2;
      case EClassificationFilter.BrakeFilter:
        return 3;
      case EClassificationFilter.All:
        return 4;
      default:
        return -1;
    }
  }

  static EClassificationFilter fromId(int id) {
    switch (id) {
      case 1:
        return EClassificationFilter.NoFilter;
      case 2:
        return EClassificationFilter.TrafficSignFilter;
      case 3:
        return EClassificationFilter.BrakeFilter;
      case 4:
        return EClassificationFilter.All;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class DetectorConfiguration {
  String? name;
  NNEngineType? engineType;
  NNExecutionType? executionType;
  DetectorConfiguration({
    this.name,
    this.engineType,
    this.executionType,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (name != null) {
      json['name'] = name;
    }
    if (engineType != null) {
      json['engineType'] = engineType!.id;
    }
    if (executionType != null) {
      json['executionType'] = executionType!.id;
    }
    return json;
  }

  factory DetectorConfiguration.fromJson(Map<String, dynamic> json) {
    return DetectorConfiguration(
      name: json['name'],
      engineType: json['engineType'],
      executionType: json['executionType'],
    );
  }
}

class ClassifiedObject {
  int? type;
  dynamic? score;
  ClassifiedObject({
    this.type,
    this.score,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (type != null) {
      json['type'] = type;
    }
    if (score != null) {
      json['score'] = score;
    }
    return json;
  }

  factory ClassifiedObject.fromJson(Map<String, dynamic> json) {
    return ClassifiedObject(
      type: json['type'],
      score: json['score'],
    );
  }
}

class DetectedObject {
  RectType<int>? position;
  EObjectType? type;
  dynamic? score;
  ClassifiedObject? classifiedObject;
  DetectedObject({
    this.position,
    this.type,
    this.score,
    this.classifiedObject,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (position != null) {
      json['position'] = position;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    if (score != null) {
      json['score'] = score;
    }
    if (classifiedObject != null) {
      json['classifiedObject'] = classifiedObject;
    }
    return json;
  }

  factory DetectedObject.fromJson(Map<String, dynamic> json) {
    return DetectedObject(
      position: json['position'],
      type: json['type'],
      score: json['score'],
      classifiedObject: json['classifiedObject'],
    );
  }
}
