// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/api/gem_coordinates.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_sdk.dart";
import "gem_apilists.dart";
import "gem_time.dart";
import "gem_addressinfo.dart";
import "dart:convert";

enum EFuelType {
  FT_None,
  FT_DieselStandard,
  FT_DieselPremium,
  FT_GasolineStandard,
  FT_GasolinePremium,
  FT_Electric,
  FT_LPG,
}

extension EFuelTypeExtension on EFuelType {
  int get id {
    switch (this) {
      case EFuelType.FT_None:
        return -1;
      case EFuelType.FT_DieselStandard:
        return 0;
      case EFuelType.FT_DieselPremium:
        return 1;
      case EFuelType.FT_GasolineStandard:
        return 2;
      case EFuelType.FT_GasolinePremium:
        return 3;
      case EFuelType.FT_Electric:
        return 4;
      case EFuelType.FT_LPG:
        return 5;
      default:
        return -1;
    }
  }

  static EFuelType fromId(int id) {
    switch (id) {
      case -1:
        return EFuelType.FT_None;
      case 0:
        return EFuelType.FT_DieselStandard;
      case 1:
        return EFuelType.FT_DieselPremium;
      case 2:
        return EFuelType.FT_GasolineStandard;
      case 3:
        return EFuelType.FT_GasolinePremium;
      case 4:
        return EFuelType.FT_Electric;
      case 5:
        return EFuelType.FT_LPG;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EOptimizationQuality {
  OQ_Unoptimized,
  OQ_Fast,
  OQ_Optimized,
  OQ_Best,
}

extension EOptimizationQualityExtension on EOptimizationQuality {
  int get id {
    switch (this) {
      case EOptimizationQuality.OQ_Unoptimized:
        return 0;
      case EOptimizationQuality.OQ_Fast:
        return 1;
      case EOptimizationQuality.OQ_Optimized:
        return 2;
      case EOptimizationQuality.OQ_Best:
        return 3;
      default:
        return -1;
    }
  }

  static EOptimizationQuality fromId(int id) {
    switch (id) {
      case 0:
        return EOptimizationQuality.OQ_Unoptimized;
      case 1:
        return EOptimizationQuality.OQ_Fast;
      case 2:
        return EOptimizationQuality.OQ_Optimized;
      case 3:
        return EOptimizationQuality.OQ_Best;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EOptimizationCriterion {
  OC_Distance,
  OC_Time,
}

extension EOptimizationCriterionExtension on EOptimizationCriterion {
  int get id {
    switch (this) {
      case EOptimizationCriterion.OC_Distance:
        return 0;
      case EOptimizationCriterion.OC_Time:
        return 1;
      default:
        return -1;
    }
  }

  static EOptimizationCriterion fromId(int id) {
    switch (id) {
      case 0:
        return EOptimizationCriterion.OC_Distance;
      case 1:
        return EOptimizationCriterion.OC_Time;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERoadRestrictions {
  RR_None,
  RR_Tolls,
  RR_Highways,
}

extension ERoadRestrictionsExtension on ERoadRestrictions {
  int get id {
    switch (this) {
      case ERoadRestrictions.RR_None:
        return 0;
      case ERoadRestrictions.RR_Tolls:
        return 1;
      case ERoadRestrictions.RR_Highways:
        return 2;
      default:
        return -1;
    }
  }

  static ERoadRestrictions fromId(int id) {
    switch (id) {
      case 0:
        return ERoadRestrictions.RR_None;
      case 1:
        return ERoadRestrictions.RR_Tolls;
      case 2:
        return ERoadRestrictions.RR_Highways;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERouteType {
  RT_RoundRoute,
  RT_EndAnywhere,
  RT_CustomEnd,
}

extension ERouteTypeExtension on ERouteType {
  int get id {
    switch (this) {
      case ERouteType.RT_RoundRoute:
        return 0;
      case ERouteType.RT_EndAnywhere:
        return 1;
      case ERouteType.RT_CustomEnd:
        return 2;
      default:
        return -1;
    }
  }

  static ERouteType fromId(int id) {
    switch (id) {
      case 0:
        return ERouteType.RT_RoundRoute;
      case 1:
        return ERouteType.RT_EndAnywhere;
      case 2:
        return ERouteType.RT_CustomEnd;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EOrderType {
  OT_PickUp,
  OT_Delivery,
}

extension EOrderTypeExtension on EOrderType {
  int get id {
    switch (this) {
      case EOrderType.OT_PickUp:
        return 0;
      case EOrderType.OT_Delivery:
        return 1;
      default:
        return -1;
    }
  }

  static EOrderType fromId(int id) {
    switch (id) {
      case 0:
        return EOrderType.OT_PickUp;
      case 1:
        return EOrderType.OT_Delivery;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EVehicleType {
  VT_Car,
  VT_Pedestrian,
  VT_Bike,
  VT_Truck,
}

extension EVehicleTypeExtension on EVehicleType {
  int get id {
    switch (this) {
      case EVehicleType.VT_Car:
        return 0;
      case EVehicleType.VT_Pedestrian:
        return 1;
      case EVehicleType.VT_Bike:
        return 2;
      case EVehicleType.VT_Truck:
        return 3;
      default:
        return -1;
    }
  }

  static EVehicleType fromId(int id) {
    switch (id) {
      case 0:
        return EVehicleType.VT_Car;
      case 1:
        return EVehicleType.VT_Pedestrian;
      case 2:
        return EVehicleType.VT_Bike;
      case 3:
        return EVehicleType.VT_Truck;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EVehicleStatus {
  VS_Unavailable,
  VS_Available,
  VS_EnRoute,
}

extension EVehicleStatusExtension on EVehicleStatus {
  int get id {
    switch (this) {
      case EVehicleStatus.VS_Unavailable:
        return -1;
      case EVehicleStatus.VS_Available:
        return 0;
      case EVehicleStatus.VS_EnRoute:
        return 1;
      default:
        return -1;
    }
  }

  static EVehicleStatus fromId(int id) {
    switch (id) {
      case -1:
        return EVehicleStatus.VS_Unavailable;
      case 0:
        return EVehicleStatus.VS_Available;
      case 1:
        return EVehicleStatus.VS_EnRoute;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMatrixBuildType {
  MBT_Set,
  MBT_Real,
}

extension EMatrixBuildTypeExtension on EMatrixBuildType {
  int get id {
    switch (this) {
      case EMatrixBuildType.MBT_Set:
        return 0;
      case EMatrixBuildType.MBT_Real:
        return 1;
      default:
        return -1;
    }
  }

  static EMatrixBuildType fromId(int id) {
    switch (id) {
      case 0:
        return EMatrixBuildType.MBT_Set;
      case 1:
        return EMatrixBuildType.MBT_Real;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EArrangeCriterion {
  AC_Matrix,
  AC_Euclidian,
  AC_ExactEuclidian,
  AC_Geodesic,
  AC_Manhattan,
}

extension EArrangeCriterionExtension on EArrangeCriterion {
  int get id {
    switch (this) {
      case EArrangeCriterion.AC_Matrix:
        return 0;
      case EArrangeCriterion.AC_Euclidian:
        return 1;
      case EArrangeCriterion.AC_ExactEuclidian:
        return 2;
      case EArrangeCriterion.AC_Geodesic:
        return 3;
      case EArrangeCriterion.AC_Manhattan:
        return 4;
      default:
        return -1;
    }
  }

  static EArrangeCriterion fromId(int id) {
    switch (id) {
      case 0:
        return EArrangeCriterion.AC_Matrix;
      case 1:
        return EArrangeCriterion.AC_Euclidian;
      case 2:
        return EArrangeCriterion.AC_ExactEuclidian;
      case 3:
        return EArrangeCriterion.AC_Geodesic;
      case 4:
        return EArrangeCriterion.AC_Manhattan;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EDistanceUnit {
  DU_Kilometers,
  DU_Miles,
}

extension EDistanceUnitExtension on EDistanceUnit {
  int get id {
    switch (this) {
      case EDistanceUnit.DU_Kilometers:
        return 0;
      case EDistanceUnit.DU_Miles:
        return 1;
      default:
        return -1;
    }
  }

  static EDistanceUnit fromId(int id) {
    switch (id) {
      case 0:
        return EDistanceUnit.DU_Kilometers;
      case 1:
        return EDistanceUnit.DU_Miles;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETerritoryType {
  TT_Polygon,
  TT_Circle,
  TT_Rectangle,
}

extension ETerritoryTypeExtension on ETerritoryType {
  int get id {
    switch (this) {
      case ETerritoryType.TT_Polygon:
        return 0;
      case ETerritoryType.TT_Circle:
        return 1;
      case ETerritoryType.TT_Rectangle:
        return 2;
      default:
        return -1;
    }
  }

  static ETerritoryType fromId(int id) {
    switch (id) {
      case 0:
        return ETerritoryType.TT_Polygon;
      case 1:
        return ETerritoryType.TT_Circle;
      case 2:
        return ETerritoryType.TT_Rectangle;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Customer {
  int? id;
  Coordinates? coordinates;
  String? alias;
  String? firstname;
  String? lastname;
  AddressInfo? address;
  String? email;
  String? phonenumber;
  dynamic customdata;
  Customer({
    this.id,
    this.coordinates,
    this.alias,
    this.firstname,
    this.lastname,
    this.address,
    this.email,
    this.phonenumber,
    this.customdata,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    if (alias != null) {
      json['alias'] = alias;
    }
    if (firstname != null) {
      json['firstname'] = firstname;
    }
    if (lastname != null) {
      json['lastname'] = lastname;
    }
    if (address != null) {
      json['address'] = address;
    }
    if (email != null) {
      json['email'] = email;
    }
    if (phonenumber != null) {
      json['phonenumber'] = phonenumber;
    }
    if (customdata != null) {
      json['customdata'] = customdata;
    }
    return json;
  }

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      coordinates: json['coordinates'],
      alias: json['alias'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      address: json['address'],
      email: json['email'],
      phonenumber: json['phonenumber'],
      customdata: json['customdata'],
    );
  }
}

class Depot {
  int? id;
  Coordinates? coordinates;
  String? alias;
  AddressInfo? address;
  Depot({
    this.id,
    this.coordinates,
    this.alias,
    this.address,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    if (alias != null) {
      json['alias'] = alias;
    }
    if (address != null) {
      json['address'] = address;
    }
    return json;
  }

  factory Depot.fromJson(Map<String, dynamic> json) {
    return Depot(
      id: json['id'],
      coordinates: json['coordinates'],
      alias: json['alias'],
      address: json['address'],
    );
  }
}

class Order {
  int? id;
  Coordinates? coordinates;
  String? alias;
  String? firstname;
  String? lastname;
  AddressInfo? address;
  String? phonenumber;
  dynamic? customdata;
  int? numberofpieces;
  double? weight;
  double? cube;
  Order({
    this.id,
    this.coordinates,
    this.alias,
    this.firstname,
    this.lastname,
    this.address,
    this.phonenumber,
    this.customdata,
    this.numberofpieces,
    this.weight,
    this.cube,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    if (alias != null) {
      json['alias'] = alias;
    }
    if (firstname != null) {
      json['firstname'] = firstname;
    }
    if (lastname != null) {
      json['lastname'] = lastname;
    }
    if (address != null) {
      json['address'] = address;
    }
    if (phonenumber != null) {
      json['phonenumber'] = phonenumber;
    }
    if (customdata != null) {
      json['customdata'] = customdata;
    }
    if (numberofpieces != null) {
      json['numberofpieces'] = numberofpieces;
    }
    if (weight != null) {
      json['weight'] = weight;
    }
    if (cube != null) {
      json['cube'] = cube;
    }
    return json;
  }

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      coordinates: json['coordinates'],
      alias: json['alias'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      address: json['address'],
      phonenumber: json['phonenumber'],
      customdata: json['customdata'],
      numberofpieces: json['numberofpieces'],
      weight: json['weight'],
      cube: json['cube'],
    );
  }
}

class Vehicle {
  int? id;
  EVehicleType? type;
  EVehicleStatus? status;
  String? name;
  String? manufacturer;
  String? model;
  EFuelType? fueltype;
  Coordinates? lastposition;
  double? consumption;
  String? licenseplate;
  double? bikerweight;
  double? maxweight;
  double? maxcube;
  double? bikepower;
  Vehicle({
    this.id,
    this.type,
    this.status,
    this.name,
    this.manufacturer,
    this.model,
    this.fueltype,
    this.lastposition,
    this.consumption,
    this.licenseplate,
    this.bikerweight,
    this.maxweight,
    this.maxcube,
    this.bikepower,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    if (status != null) {
      json['status'] = status!.id;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (manufacturer != null) {
      json['manufacturer'] = manufacturer;
    }
    if (model != null) {
      json['model'] = model;
    }
    if (fueltype != null) {
      json['fueltype'] = fueltype!.id;
    }
    if (lastposition != null) {
      json['lastposition'] = lastposition;
    }
    if (consumption != null) {
      json['consumption'] = consumption;
    }
    if (licenseplate != null) {
      json['licenseplate'] = licenseplate;
    }
    if (bikerweight != null) {
      json['bikerweight'] = bikerweight;
    }
    if (maxweight != null) {
      json['maxweight'] = maxweight;
    }
    if (maxcube != null) {
      json['maxcube'] = maxcube;
    }
    if (bikepower != null) {
      json['bikepower'] = bikepower;
    }
    return json;
  }

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      id: json['id'],
      type: json['type'],
      status: json['status'],
      name: json['name'],
      manufacturer: json['manufacturer'],
      model: json['model'],
      fueltype: json['fueltype'],
      lastposition: json['lastposition'],
      consumption: json['consumption'],
      licenseplate: json['licenseplate'],
      bikerweight: json['bikerweight'],
      maxweight: json['maxweight'],
      maxcube: json['maxcube'],
      bikepower: json['bikepower'],
    );
  }
}

class Territory {
  int? id;
  String? name;
  ETerritoryType? type;
  dynamic data;
  dynamic? customers;
  dynamic? orders;
  Territory({
    this.id,
    this.name,
    this.type,
    this.data,
    this.customers,
    this.orders,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    if (data != null) {
      json['data'] = data;
    }
    if (customers != null) {
      json['customers'] = customers;
    }
    if (orders != null) {
      json['orders'] = orders;
    }
    return json;
  }

  factory Territory.fromJson(Map<String, dynamic> json) {
    return Territory(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      data: json['data'],
      customers: json['customers'],
      orders: json['orders'],
    );
  }
}

class VehicleConstraints {
  EVehicleType? vehicletype;
  Vehicle? vehicle;
  Time? starttime;
  Time? endtime;
  int? maxnumberofpieces;
  int? minnumberoforders;
  int? maxnumberoforders;
  double? mindistance;
  double? maxdistance;
  double? maxrevenue;
  double? fuelprice;
  VehicleConstraints({
    this.vehicletype,
    this.vehicle,
    this.starttime,
    this.endtime,
    this.maxnumberofpieces,
    this.minnumberoforders,
    this.maxnumberoforders,
    this.mindistance,
    this.maxdistance,
    this.maxrevenue,
    this.fuelprice,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (vehicletype != null) {
      json['vehicletype'] = vehicletype!.id;
    }
    if (vehicle != null) {
      json['vehicle'] = vehicle;
    }
    if (starttime != null) {
      json['starttime'] = starttime;
    }
    if (endtime != null) {
      json['endtime'] = endtime;
    }
    if (maxnumberofpieces != null) {
      json['maxnumberofpieces'] = maxnumberofpieces;
    }
    if (minnumberoforders != null) {
      json['minnumberoforders'] = minnumberoforders;
    }
    if (maxnumberoforders != null) {
      json['maxnumberoforders'] = maxnumberoforders;
    }
    if (mindistance != null) {
      json['mindistance'] = mindistance;
    }
    if (maxdistance != null) {
      json['maxdistance'] = maxdistance;
    }
    if (maxrevenue != null) {
      json['maxrevenue'] = maxrevenue;
    }
    if (fuelprice != null) {
      json['fuelprice'] = fuelprice;
    }
    return json;
  }

  factory VehicleConstraints.fromJson(Map<String, dynamic> json) {
    return VehicleConstraints(
      vehicletype: json['vehicletype'],
      vehicle: json['vehicle'],
      starttime: json['starttime'],
      endtime: json['endtime'],
      maxnumberofpieces: json['maxnumberofpieces'],
      minnumberoforders: json['minnumberoforders'],
      maxnumberoforders: json['maxnumberoforders'],
      mindistance: json['mindistance'],
      maxdistance: json['maxdistance'],
      maxrevenue: json['maxrevenue'],
      fuelprice: json['fuelprice'],
    );
  }
}

class ConfigurationParameters {
  String? name;
  bool? ignoretimewindow;
  EOptimizationCriterion? optimizationcriterion;
  EArrangeCriterion? arrangecriterion;
  EOptimizationQuality? optimizationquality;
  int? maxsearchtime;
  int? maxwaittime;
  ERouteType? routetype;
  ERoadRestrictions? restrictions;
  EDistanceUnit? distanceunit;
  EMatrixBuildType? matrixbuildtype;
  dynamic sequencepairs;
  dynamic fixedorderssequences;
  ConfigurationParameters({
    this.name,
    this.ignoretimewindow,
    this.optimizationcriterion,
    this.arrangecriterion,
    this.optimizationquality,
    this.maxsearchtime,
    this.maxwaittime,
    this.routetype,
    this.restrictions,
    this.distanceunit,
    this.matrixbuildtype,
    this.sequencepairs,
    this.fixedorderssequences,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (name != null) {
      json['name'] = name;
    }
    if (ignoretimewindow != null) {
      json['ignoretimewindow'] = ignoretimewindow;
    }
    if (optimizationcriterion != null) {
      json['optimizationcriterion'] = optimizationcriterion!.id;
    }
    if (arrangecriterion != null) {
      json['arrangecriterion'] = arrangecriterion!.id;
    }
    if (optimizationquality != null) {
      json['optimizationquality'] = optimizationquality!.id;
    }
    if (maxsearchtime != null) {
      json['maxsearchtime'] = maxsearchtime;
    }
    if (maxwaittime != null) {
      json['maxwaittime'] = maxwaittime;
    }
    if (routetype != null) {
      json['routetype'] = routetype!.id;
    }
    if (restrictions != null) {
      json['restrictions'] = restrictions!.id;
    }
    if (distanceunit != null) {
      json['distanceunit'] = distanceunit!.id;
    }
    if (matrixbuildtype != null) {
      json['matrixbuildtype'] = matrixbuildtype!.id;
    }
    if (sequencepairs != null) {
      json['sequencepairs'] = sequencepairs;
    }
    if (fixedorderssequences != null) {
      json['fixedorderssequences'] = fixedorderssequences;
    }
    return json;
  }

  factory ConfigurationParameters.fromJson(Map<String, dynamic> json) {
    return ConfigurationParameters(
      name: json['name'],
      ignoretimewindow: json['ignoretimewindow'],
      optimizationcriterion: json['optimizationcriterion'],
      arrangecriterion: json['arrangecriterion'],
      optimizationquality: json['optimizationquality'],
      maxsearchtime: json['maxsearchtime'],
      maxwaittime: json['maxwaittime'],
      routetype: json['routetype'],
      restrictions: json['restrictions'],
      distanceunit: json['distanceunit'],
      matrixbuildtype: json['matrixbuildtype'],
      sequencepairs: json['sequencepairs'],
      fixedorderssequences: json['fixedorderssequences'],
    );
  }
}

class Departure {
  Coordinates? coordinates;
  String? alias;
  AddressInfo? address;
  int? numberofpieces;
  double? weight;
  double? cube;
  Time? departuretime;
  int? timetonext;
  double? distancetonext;
  Departure({
    this.coordinates,
    this.alias,
    this.address,
    this.numberofpieces,
    this.weight,
    this.cube,
    this.departuretime,
    this.timetonext,
    this.distancetonext,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    if (alias != null) {
      json['alias'] = alias;
    }
    if (address != null) {
      json['address'] = address;
    }
    if (numberofpieces != null) {
      json['numberofpieces'] = numberofpieces;
    }
    if (weight != null) {
      json['weight'] = weight;
    }
    if (cube != null) {
      json['cube'] = cube;
    }
    if (departuretime != null) {
      json['departuretime'] = departuretime;
    }
    if (timetonext != null) {
      json['timetonext'] = timetonext;
    }
    if (distancetonext != null) {
      json['distancetonext'] = distancetonext;
    }
    return json;
  }

  factory Departure.fromJson(Map<String, dynamic> json) {
    return Departure(
      coordinates: json['coordinates'],
      alias: json['alias'],
      address: json['address'],
      numberofpieces: json['numberofpieces'],
      weight: json['weight'],
      cube: json['cube'],
      departuretime: json['departuretime'],
      timetonext: json['timetonext'],
      distancetonext: json['distancetonext'],
    );
  }
}

class Destination {
  Coordinates? coordinates;
  String? alias;
  AddressInfo? address;
  Time? arrivaltime;
  double? traveleddistance;
  Destination({
    this.coordinates,
    this.alias,
    this.address,
    this.arrivaltime,
    this.traveleddistance,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (coordinates != null) {
      json['coordinates'] = coordinates;
    }
    if (alias != null) {
      json['alias'] = alias;
    }
    if (address != null) {
      json['address'] = address;
    }
    if (arrivaltime != null) {
      json['arrivaltime'] = arrivaltime;
    }
    if (traveleddistance != null) {
      json['traveleddistance'] = traveleddistance;
    }
    return json;
  }

  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(
      coordinates: json['coordinates'],
      alias: json['alias'],
      address: json['address'],
      arrivaltime: json['arrivaltime'],
      traveleddistance: json['traveleddistance'],
    );
  }
}

class Route extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  Route()
      : _id = -1,
        _mapId = -1;
  Route.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  Future<int> getId() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getId",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getOptimizationId() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getOptimizationId",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<ConfigurationParameters> getConfigurationParameters() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getConfigurationParameters",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return ConfigurationParameters.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setConfigurationParameters(
      ConfigurationParameters params) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "setConfigurationParameters",
                'args': params
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<dynamic> getOrders() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getOrders",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<VehicleConstraints> getVehicleConstraints() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getVehicleConstraints",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return VehicleConstraints.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setVehicleConstraints(VehicleConstraints vehConstr) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "setVehicleConstraints",
                'args': vehConstr
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Departure> getDeparture() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getDeparture",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Departure.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setDeparture(Departure departure) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "setDeparture",
                'args': departure
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Destination> getDestination() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getDestination",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Destination.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setDestination(Destination destination) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "setDestination",
                'args': destination
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<Time> getCreationTime() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getCreationTime",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Time.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getTotalDistance() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getTotalDistance",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getTotalTime() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getTotalTime",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getTotalServiceTime() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getTotalServiceTime",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<int> getTotalWaitTime() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getTotalWaitTime",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getCost() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getCost",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<double> getNeededFuel() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getNeededFuel",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<List<Coordinates>> getShape() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Route",
                'method': "getShape",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }
// Future<int> reoptimize(ProgressListener listener) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"reoptimize",
// 'args':listener
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> unlink(ProgressListener listener) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"unlink",
// 'args':listener
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> duplicate(ProgressListener listener,Route duplicatedRoute) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"duplicate",
// 'args':{'listener':listener,'duplicatedRoute':duplicatedRoute}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> addOrders(ProgressListener listener,List<RouteOrder>  orders,bool optimalPosition, std::map<gem::vrp::EVehicleType, std::map<gem::vrp::EVehicleType,{bool? reoptimize,bool? newTrip,gem::FloatListList>? distancesToTheOtherLocations,gem::IntListList>? timesToTheOtherLocations,}) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"addOrders",
// 'args':{'listener':listener,'orders':orders,'optimalPosition':optimalPosition,if(reoptimize != null) 'reoptimize':reoptimize,if(newTrip != null) 'newTrip':newTrip,'std::map<gem::vrp::EVehicleType':std::map<gem::vrp::EVehicleType,if(distancesToTheOtherLocations != null) 'distancesToTheOtherLocations':distancesToTheOtherLocations,'std::map<gem::vrp::EVehicleType':std::map<gem::vrp::EVehicleType,if(timesToTheOtherLocations != null) 'timesToTheOtherLocations':timesToTheOtherLocations}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> deleteOrder(ProgressListener listener,RouteOrder order) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"deleteOrder",
// 'args':{'listener':listener,'order':order}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<int> exportInFile(gem::String fileName,gem::String folderPath,int format) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"Route",
// 'method':"exportInFile",
// 'args':{'fileName':fileName,'folderPath':folderPath,'format':format}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
}

class Optimization {
  int? id;
  ConfigurationParameters? configurationparameters;
  dynamic orders;
  int? numberofvehicles;
  dynamic vehiclesconstraints;
  dynamic departures;
  dynamic destinations;
  Time? creationtime;
  Optimization({
    this.id,
    this.configurationparameters,
    this.orders,
    this.numberofvehicles,
    this.vehiclesconstraints,
    this.departures,
    this.destinations,
    this.creationtime,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (configurationparameters != null) {
      json['configurationparameters'] = configurationparameters;
    }
    if (orders != null) {
      json['orders'] = orders;
    }
    if (numberofvehicles != null) {
      json['numberofvehicles'] = numberofvehicles;
    }
    if (vehiclesconstraints != null) {
      json['vehiclesconstraints'] = vehiclesconstraints;
    }
    if (departures != null) {
      json['departures'] = departures;
    }
    if (destinations != null) {
      json['destinations'] = destinations;
    }
    if (creationtime != null) {
      json['creationtime'] = creationtime;
    }
    return json;
  }

  factory Optimization.fromJson(Map<String, dynamic> json) {
    return Optimization(
      id: json['id'],
      configurationparameters: json['configurationparameters'],
      orders: json['orders'],
      numberofvehicles: json['numberofvehicles'],
      vehiclesconstraints: json['vehiclesconstraints'],
      departures: json['departures'],
      destinations: json['destinations'],
      creationtime: json['creationtime'],
    );
  }
}

class CustomData {
  String? field;
  String? value;
  CustomData({
    this.field,
    this.value,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (field != null) {
      json['field'] = field;
    }
    if (value != null) {
      json['value'] = value;
    }
    return json;
  }

  factory CustomData.fromJson(Map<String, dynamic> json) {
    return CustomData(
      field: json['field'],
      value: json['value'],
    );
  }
}

class FuelPricePair {
  EFuelType? fuel;
  double? price;
  FuelPricePair({
    this.fuel,
    this.price,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (fuel != null) {
      json['fuel'] = fuel!.id;
    }
    if (price != null) {
      json['price'] = price;
    }
    return json;
  }

  factory FuelPricePair.fromJson(Map<String, dynamic> json) {
    return FuelPricePair(
      fuel: json['fuel'],
      price: json['price'],
    );
  }
}

class FuelPrices {
  List<FuelPricePair>? fuelPrices;
  Time? additionTime;
  FuelPrices({
    this.fuelPrices,
    this.additionTime,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (fuelPrices != null) {
      json['fuelPrices'] = fuelPrices;
    }
    if (additionTime != null) {
      json['additionTime'] = additionTime;
    }
    return json;
  }

  factory FuelPrices.fromJson(Map<String, dynamic> json) {
    return FuelPrices(
      fuelPrices: json['fuelPrices'],
      additionTime: json['additionTime'],
    );
  }
}

class CustomerOrder {
  Order? order;
  CustomerOrder({
    this.order,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (order != null) {
      json['order'] = order;
    }
    return json;
  }

  factory CustomerOrder.fromJson(Map<String, dynamic> json) {
    return CustomerOrder(
      order: json['order'],
    );
  }
}
