// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/api/gem_mapviewpreferences.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_progresslistener.dart";
import "gem_images.dart";
import "gem_transferstatistics.dart";
import "gem_landmark.dart";
import "gem_parameters.dart";
import "gem_coordinates.dart";
import "gem_types.dart";
import "gem_time.dart";
import "gem_geographicarea.dart";
import "dart:convert";

enum ETrafficEventClass {
  TrafficEventBase,
  TrafficOther,
  TrafficLevelOfService,
  TrafficExpectedLevelOfService,
  TrafficAccidents,
  TrafficIncidents,
  TrafficClosuresAndLaneRestrictions,
  TrafficCarriagewayRestrictions,
  TrafficExitRestrictions,
  TrafficEntryRestrictions,
  TrafficTrafficRestrictions,
  TrafficCarpoolInfo,
  TrafficRoadworks,
  TrafficObstructionHazards,
  TrafficDangerousSituations,
  TrafficRoadConditions,
  TrafficTemperatures,
  TrafficPrecipitationAndVisibility,
  TrafficWindAndAirQuality,
  TrafficActivities,
  TrafficSecurityAlerts,
  TrafficDelays,
  TrafficCancellations,
  TrafficTravelTimeInfo,
  TrafficDangerousVehicles,
  TrafficExceptionalLoadsOrVehicles,
  TrafficTrafficEquipmentStatus,
  TrafficSizeAndWeightLimits,
  TrafficParkingRestrictions,
  TrafficParking,
  TrafficReferenceToAudioBroadcast,
  TrafficServiceMessages,
  TrafficSpecialMessages,
  TrafficUserEventsBase,
  TrafficUserRoadblock,
}

extension ETrafficEventClassExtension on ETrafficEventClass {
  int get id {
    switch (this) {
      case ETrafficEventClass.TrafficEventBase:
        return 0;
      case ETrafficEventClass.TrafficOther:
        return 0;
      case ETrafficEventClass.TrafficLevelOfService:
        return 2;
      case ETrafficEventClass.TrafficExpectedLevelOfService:
        return 3;
      case ETrafficEventClass.TrafficAccidents:
        return 4;
      case ETrafficEventClass.TrafficIncidents:
        return 5;
      case ETrafficEventClass.TrafficClosuresAndLaneRestrictions:
        return 6;
      case ETrafficEventClass.TrafficCarriagewayRestrictions:
        return 7;
      case ETrafficEventClass.TrafficExitRestrictions:
        return 8;
      case ETrafficEventClass.TrafficEntryRestrictions:
        return 9;
      case ETrafficEventClass.TrafficTrafficRestrictions:
        return 10;
      case ETrafficEventClass.TrafficCarpoolInfo:
        return 11;
      case ETrafficEventClass.TrafficRoadworks:
        return 12;
      case ETrafficEventClass.TrafficObstructionHazards:
        return 13;
      case ETrafficEventClass.TrafficDangerousSituations:
        return 14;
      case ETrafficEventClass.TrafficRoadConditions:
        return 15;
      case ETrafficEventClass.TrafficTemperatures:
        return 16;
      case ETrafficEventClass.TrafficPrecipitationAndVisibility:
        return 17;
      case ETrafficEventClass.TrafficWindAndAirQuality:
        return 18;
      case ETrafficEventClass.TrafficActivities:
        return 19;
      case ETrafficEventClass.TrafficSecurityAlerts:
        return 20;
      case ETrafficEventClass.TrafficDelays:
        return 21;
      case ETrafficEventClass.TrafficCancellations:
        return 22;
      case ETrafficEventClass.TrafficTravelTimeInfo:
        return 23;
      case ETrafficEventClass.TrafficDangerousVehicles:
        return 24;
      case ETrafficEventClass.TrafficExceptionalLoadsOrVehicles:
        return 25;
      case ETrafficEventClass.TrafficTrafficEquipmentStatus:
        return 26;
      case ETrafficEventClass.TrafficSizeAndWeightLimits:
        return 27;
      case ETrafficEventClass.TrafficParkingRestrictions:
        return 28;
      case ETrafficEventClass.TrafficParking:
        return 29;
      case ETrafficEventClass.TrafficReferenceToAudioBroadcast:
        return 30;
      case ETrafficEventClass.TrafficServiceMessages:
        return 31;
      case ETrafficEventClass.TrafficSpecialMessages:
        return 32;
      case ETrafficEventClass.TrafficUserEventsBase:
        return 100;
      case ETrafficEventClass.TrafficUserRoadblock:
        return 0;
      default:
        return 0;
    }
  }

  static ETrafficEventClass fromId(int id) {
    switch (id) {
      case 0:
        return ETrafficEventClass.TrafficEventBase;
      case 2:
        return ETrafficEventClass.TrafficLevelOfService;
      case 3:
        return ETrafficEventClass.TrafficExpectedLevelOfService;
      case 4:
        return ETrafficEventClass.TrafficAccidents;
      case 5:
        return ETrafficEventClass.TrafficIncidents;
      case 6:
        return ETrafficEventClass.TrafficClosuresAndLaneRestrictions;
      case 7:
        return ETrafficEventClass.TrafficCarriagewayRestrictions;
      case 8:
        return ETrafficEventClass.TrafficExitRestrictions;
      case 9:
        return ETrafficEventClass.TrafficEntryRestrictions;
      case 10:
        return ETrafficEventClass.TrafficTrafficRestrictions;
      case 11:
        return ETrafficEventClass.TrafficCarpoolInfo;
      case 12:
        return ETrafficEventClass.TrafficRoadworks;
      case 13:
        return ETrafficEventClass.TrafficObstructionHazards;
      case 14:
        return ETrafficEventClass.TrafficDangerousSituations;
      case 15:
        return ETrafficEventClass.TrafficRoadConditions;
      case 16:
        return ETrafficEventClass.TrafficTemperatures;
      case 17:
        return ETrafficEventClass.TrafficPrecipitationAndVisibility;
      case 18:
        return ETrafficEventClass.TrafficWindAndAirQuality;
      case 19:
        return ETrafficEventClass.TrafficActivities;
      case 20:
        return ETrafficEventClass.TrafficSecurityAlerts;
      case 21:
        return ETrafficEventClass.TrafficDelays;
      case 22:
        return ETrafficEventClass.TrafficCancellations;
      case 23:
        return ETrafficEventClass.TrafficTravelTimeInfo;
      case 24:
        return ETrafficEventClass.TrafficDangerousVehicles;
      case 25:
        return ETrafficEventClass.TrafficExceptionalLoadsOrVehicles;
      case 26:
        return ETrafficEventClass.TrafficTrafficEquipmentStatus;
      case 27:
        return ETrafficEventClass.TrafficSizeAndWeightLimits;
      case 28:
        return ETrafficEventClass.TrafficParkingRestrictions;
      case 29:
        return ETrafficEventClass.TrafficParking;
      case 30:
        return ETrafficEventClass.TrafficReferenceToAudioBroadcast;
      case 31:
        return ETrafficEventClass.TrafficServiceMessages;
      case 32:
        return ETrafficEventClass.TrafficSpecialMessages;
      case 100:
        return ETrafficEventClass.TrafficUserEventsBase;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

// enum ETrafficEventSeverity {
//   TES_Stationary ,
//   TES_Queuing,
//   TES_SlowTraffic,
//   TES_PossibleDelay,
//   TES_Unknown,
// }
// extension ETrafficEventSeverityExtension on ETrafficEventSeverity {
// int get id {
//  switch (this) {
// case ETrafficEventSeverity.TES_Stationary :
// return 0;
// case ETrafficEventSeverity.TES_Queuing:
// return 1;
// case ETrafficEventSeverity.TES_SlowTraffic:
// return 2;
// case ETrafficEventSeverity.TES_PossibleDelay:
// return 3;
// case ETrafficEventSeverity.TES_Unknown:
// return 4;
//  default:
// return -1;
// }
// }
// static ETrafficEventSeverity fromId(int id) {
//  switch (id) {
// case 0:
//  return ETrafficEventSeverity.TES_Stationary ;
// case 1:
//  return ETrafficEventSeverity.TES_Queuing;
// case 2:
//  return ETrafficEventSeverity.TES_SlowTraffic;
// case 3:
//  return ETrafficEventSeverity.TES_PossibleDelay;
// case 4:
//  return ETrafficEventSeverity.TES_Unknown;

// default:
//    throw ArgumentError('Invalid id');
// }
// }
// }

// enum ETrafficUsage {
//   UseNone,
//   UseOnline,
//   UseOffline,
// }
// extension ETrafficUsageExtension on ETrafficUsage {
// int get id {
//  switch (this) {
// case ETrafficUsage.UseNone:
// return 0;
// case ETrafficUsage.UseOnline:
// return 1;
// case ETrafficUsage.UseOffline:
// return 2;
//  default:
// return -1;
// }
// }
// static ETrafficUsage fromId(int id) {
//  switch (id) {
// case 0:
//  return ETrafficUsage.UseNone;
// case 1:
//  return ETrafficUsage.UseOnline;
// case 2:
//  return ETrafficUsage.UseOffline;

// default:
//    throw ArgumentError('Invalid id');
// }
// }
// }

// enum ETrafficOnlineRestrictions {
//   Settings ,
//   Connection ,
//   NetworkType ,
//   ProviderData ,
//   WorldMapVersion ,
//   DiskSpace ,
//   InitFail ,
// }
// extension ETrafficOnlineRestrictionsExtension on ETrafficOnlineRestrictions {
// int get id {
//  switch (this) {
// case ETrafficOnlineRestrictions.Settings :
// return 1;
// case ETrafficOnlineRestrictions.Connection :
// return 2;
// case ETrafficOnlineRestrictions.NetworkType :
// return 4;
// case ETrafficOnlineRestrictions.ProviderData :
// return 8;
// case ETrafficOnlineRestrictions.WorldMapVersion :
// return 16;
// case ETrafficOnlineRestrictions.DiskSpace :
// return 32;
// case ETrafficOnlineRestrictions.InitFail :
// return 64;
//  default:
// return -1;
// }
// }
// static ETrafficOnlineRestrictions fromId(int id) {
//  switch (id) {
// case 1:
//  return ETrafficOnlineRestrictions.Settings ;
// case 2:
//  return ETrafficOnlineRestrictions.Connection ;
// case 4:
//  return ETrafficOnlineRestrictions.NetworkType ;
// case 8:
//  return ETrafficOnlineRestrictions.ProviderData ;
// case 16:
//  return ETrafficOnlineRestrictions.WorldMapVersion ;
// case 32:
//  return ETrafficOnlineRestrictions.DiskSpace ;
// case 64:
//  return ETrafficOnlineRestrictions.InitFail ;

// default:
//    throw ArgumentError('Invalid id');
// }
// }
// }

// class TrafficEvent {
//   int? delay;
//   int? length;
//   Coordinates? referencepoint;
//   RectangleGeographicArea? boundingbox;
//   String? description;
//   ETrafficEventClass? eventclass;
//   ETrafficEventSeverity? eventseverity;
//   Image? image;
//   String? previewurl;
//   int? affectedtransportmode;
//   Time? starttime;
//   Time? endtime;
// TrafficEvent ({
// this.delay ,
// this.length ,
// this.referencepoint ,
// this.boundingbox ,
// this.description ,
// this.eventclass ,
// this.eventseverity ,
// this.image ,
// this.previewurl ,
// this.affectedtransportmode ,
// this.starttime ,
// this.endtime ,
// });

//   Map<String, dynamic> toJson() {
//   final Map<String, dynamic> json = {};
// if(delay != null){
//       json['delay'] = delay;
// }
// if(length != null){
//       json['length'] = length;
// }
// if(referencepoint != null){
//       json['referencepoint'] = referencepoint;
// }
// if(boundingbox != null){
//       json['boundingbox'] = boundingbox;
// }
// if(description != null){
//       json['description'] = description;
// }
// if(eventclass != null){
//       json['eventclass'] = eventclass!.id;
// }
// if(eventseverity != null){
//       json['eventseverity'] = eventseverity!.id;
// }
// if(image != null){
//       json['image'] = image;
// }
// if(previewurl != null){
//       json['previewurl'] = previewurl;
// }
// if(affectedtransportmode != null){
//       json['affectedtransportmode'] = affectedtransportmode;
// }
// if(starttime != null){
//       json['starttime'] = starttime;
// }
// if(endtime != null){
//       json['endtime'] = endtime;
// }
// return json;
//   }

//   factory TrafficEvent.fromJson(Map<String, dynamic> json) {
//     return TrafficEvent(
//       delay: json['delay'],
//       length: json['length'],
//       referencepoint: json['referencepoint'],
//       boundingbox: json['boundingbox'],
//       description: json['description'],
//       eventclass: json['eventclass'],
//       eventseverity: json['eventseverity'],
//       image: json['image'],
//       previewurl: json['previewurl'],
//       affectedtransportmode: json['affectedtransportmode'],
//       starttime: json['starttime'],
//       endtime: json['endtime'],
//     );
//   }
// }

// class RouteTrafficEvent extends IGemEventHandler {
// int _id;
// int _mapId;
//  int get id => _id;
//  int get mapId => _mapId;
// RouteTrafficEvent():_id = -1,_mapId=-1;
// RouteTrafficEvent.init(int id,int mapId):_id = id,_mapId=mapId;
// Future<int> getDistanceToDestination() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTrafficEvent",
// 'method':"getDistanceToDestination",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return decodedVal['result'];
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<Coordinates> getFrom() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTrafficEvent",
// 'method':"getFrom",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return Coordinates.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<Coordinates> getTo() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTrafficEvent",
// 'method':"getTo",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return Coordinates.init(decodedVal['result'],_mapId);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<bool>> getFromLandmark() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTrafficEvent",
// 'method':"getFromLandmark",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return bool>.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<bool>> getToLandmark() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTrafficEvent",
// 'method':"getToLandmark",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return bool>.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> asyncUpdateToFromData(ProgressListener listener) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTrafficEvent",
// 'method':"asyncUpdateToFromData",
// 'args':listener
//  }));
// final decodedVal = jsonDecode(resultString!);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// Future<void> cancelUpdate() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"RouteTrafficEvent",
// 'method':"cancelUpdate",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return void.fromJson(decodedVal['result']);
// } catch (e) {
// return Future.error(e.toString());
// }
// }
// }
// class TrafficPreferences {
//   ETrafficUsage? usetraffic;
// TrafficPreferences ({
// this.usetraffic ,
// });

//   Map<String, dynamic> toJson() {
//   final Map<String, dynamic> json = {};
// if(usetraffic != null){
//       json['usetraffic'] = usetraffic!.id;
// }
// return json;
//   }

//   factory TrafficPreferences.fromJson(Map<String, dynamic> json) {
//     return TrafficPreferences(
//       usetraffic: json['usetraffic'],
//     );
//   }
// }

// class Traffic {
//   TransferStatistics? transferstatistics;
//   List<RouteTrafficEvent> ? persistentroadblocks;
// Traffic ({
// this.transferstatistics ,
// this.persistentroadblocks ,
// });

//   Map<String, dynamic> toJson() {
//   final Map<String, dynamic> json = {};
// if(transferstatistics != null){
//       json['transferstatistics'] = transferstatistics;
// }
// if(persistentroadblocks != null){
//       json['persistentroadblocks'] = persistentroadblocks;
// }
// return json;
//   }

//   factory Traffic.fromJson(Map<String, dynamic> json) {
//     return Traffic(
//       transferstatistics: json['transferstatistics'],
//       persistentroadblocks: json['persistentroadblocks'],
//     );
//   }
// }
