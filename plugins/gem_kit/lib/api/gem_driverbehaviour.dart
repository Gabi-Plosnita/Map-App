// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_time.dart";

enum EDrivingEvent {
  NoEvent,
  StartingTrip,
  FinishingTrip,
  Resting,
  HarshAcceleration,
  HarshBraking,
  Cornering,
  Swerving,
  Tailgating,
  IgnoringSigns,
}

extension EDrivingEventExtension on EDrivingEvent {
  int get id {
    switch (this) {
      case EDrivingEvent.NoEvent:
        return 0;
      case EDrivingEvent.StartingTrip:
        return 1;
      case EDrivingEvent.FinishingTrip:
        return 2;
      case EDrivingEvent.Resting:
        return 3;
      case EDrivingEvent.HarshAcceleration:
        return 4;
      case EDrivingEvent.HarshBraking:
        return 5;
      case EDrivingEvent.Cornering:
        return 6;
      case EDrivingEvent.Swerving:
        return 7;
      case EDrivingEvent.Tailgating:
        return 8;
      case EDrivingEvent.IgnoringSigns:
        return 9;
      default:
        return -1;
    }
  }

  static EDrivingEvent fromId(int id) {
    switch (id) {
      case 0:
        return EDrivingEvent.NoEvent;
      case 1:
        return EDrivingEvent.StartingTrip;
      case 2:
        return EDrivingEvent.FinishingTrip;
      case 3:
        return EDrivingEvent.Resting;
      case 4:
        return EDrivingEvent.HarshAcceleration;
      case 5:
        return EDrivingEvent.HarshBraking;
      case 6:
        return EDrivingEvent.Cornering;
      case 7:
        return EDrivingEvent.Swerving;
      case 8:
        return EDrivingEvent.Tailgating;
      case 9:
        return EDrivingEvent.IgnoringSigns;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class MappedDrivingEvent {
  Time? time;
  double? latitudedeg;
  double? longitudedeg;
  EDrivingEvent? eventtype;
  MappedDrivingEvent({
    this.time,
    this.latitudedeg,
    this.longitudedeg,
    this.eventtype,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (time != null) {
      json['time'] = time;
    }
    if (latitudedeg != null) {
      json['latitudedeg'] = latitudedeg;
    }
    if (longitudedeg != null) {
      json['longitudedeg'] = longitudedeg;
    }
    if (eventtype != null) {
      json['eventtype'] = eventtype!.id;
    }
    return json;
  }

  factory MappedDrivingEvent.fromJson(Map<String, dynamic> json) {
    return MappedDrivingEvent(
      time: json['time'],
      latitudedeg: json['latitudedeg'],
      longitudedeg: json['longitudedeg'],
      eventtype: json['eventtype'],
    );
  }
}

class DrivingScores {
  double? speedaverageriskscore;
  double? speedvariableriskscore;
  double? harshaccelerationscore;
  double? harshbrakingscore;
  double? swervingscore;
  double? corneringscore;
  double? tailgatingscore;
  double? ignoredstopsignsscore;
  double? fatiguescore;
  double? aggregatescore;
  DrivingScores({
    this.speedaverageriskscore,
    this.speedvariableriskscore,
    this.harshaccelerationscore,
    this.harshbrakingscore,
    this.swervingscore,
    this.corneringscore,
    this.tailgatingscore,
    this.ignoredstopsignsscore,
    this.fatiguescore,
    this.aggregatescore,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (speedaverageriskscore != null) {
      json['speedaverageriskscore'] = speedaverageriskscore;
    }
    if (speedvariableriskscore != null) {
      json['speedvariableriskscore'] = speedvariableriskscore;
    }
    if (harshaccelerationscore != null) {
      json['harshaccelerationscore'] = harshaccelerationscore;
    }
    if (harshbrakingscore != null) {
      json['harshbrakingscore'] = harshbrakingscore;
    }
    if (swervingscore != null) {
      json['swervingscore'] = swervingscore;
    }
    if (corneringscore != null) {
      json['corneringscore'] = corneringscore;
    }
    if (tailgatingscore != null) {
      json['tailgatingscore'] = tailgatingscore;
    }
    if (ignoredstopsignsscore != null) {
      json['ignoredstopsignsscore'] = ignoredstopsignsscore;
    }
    if (fatiguescore != null) {
      json['fatiguescore'] = fatiguescore;
    }
    if (aggregatescore != null) {
      json['aggregatescore'] = aggregatescore;
    }
    return json;
  }

  factory DrivingScores.fromJson(Map<String, dynamic> json) {
    return DrivingScores(
      speedaverageriskscore: json['speedaverageriskscore'],
      speedvariableriskscore: json['speedvariableriskscore'],
      harshaccelerationscore: json['harshaccelerationscore'],
      harshbrakingscore: json['harshbrakingscore'],
      swervingscore: json['swervingscore'],
      corneringscore: json['corneringscore'],
      tailgatingscore: json['tailgatingscore'],
      ignoredstopsignsscore: json['ignoredstopsignsscore'],
      fatiguescore: json['fatiguescore'],
      aggregatescore: json['aggregatescore'],
    );
  }
}

class DriverBehaviourAnalysis {
  Time? starttime;
  Time? finishtime;
  double? kilometersdriven;
  double? minutesdriven;
  double? minutestotalelapsed;
  double? minutesspeeding;
  double? minutestailgating;
  double? riskrelatedtomeanspeed;
  double? riskrelatedtospeedvariation;
  int? numberofharshaccelerationevents;
  int? numberofharshbrakingevents;
  int? numberofcorneringevents;
  int? numberofswervingevents;
  int? numberofignoredstopsigns;
  int? numberofencounteredstopsigns;
  dynamic? drivingevents;
  DriverBehaviourAnalysis({
    this.starttime,
    this.finishtime,
    this.kilometersdriven,
    this.minutesdriven,
    this.minutestotalelapsed,
    this.minutesspeeding,
    this.minutestailgating,
    this.riskrelatedtomeanspeed,
    this.riskrelatedtospeedvariation,
    this.numberofharshaccelerationevents,
    this.numberofharshbrakingevents,
    this.numberofcorneringevents,
    this.numberofswervingevents,
    this.numberofignoredstopsigns,
    this.numberofencounteredstopsigns,
    this.drivingevents,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (starttime != null) {
      json['starttime'] = starttime;
    }
    if (finishtime != null) {
      json['finishtime'] = finishtime;
    }
    if (kilometersdriven != null) {
      json['kilometersdriven'] = kilometersdriven;
    }
    if (minutesdriven != null) {
      json['minutesdriven'] = minutesdriven;
    }
    if (minutestotalelapsed != null) {
      json['minutestotalelapsed'] = minutestotalelapsed;
    }
    if (minutesspeeding != null) {
      json['minutesspeeding'] = minutesspeeding;
    }
    if (minutestailgating != null) {
      json['minutestailgating'] = minutestailgating;
    }
    if (riskrelatedtomeanspeed != null) {
      json['riskrelatedtomeanspeed'] = riskrelatedtomeanspeed;
    }
    if (riskrelatedtospeedvariation != null) {
      json['riskrelatedtospeedvariation'] = riskrelatedtospeedvariation;
    }
    if (numberofharshaccelerationevents != null) {
      json['numberofharshaccelerationevents'] = numberofharshaccelerationevents;
    }
    if (numberofharshbrakingevents != null) {
      json['numberofharshbrakingevents'] = numberofharshbrakingevents;
    }
    if (numberofcorneringevents != null) {
      json['numberofcorneringevents'] = numberofcorneringevents;
    }
    if (numberofswervingevents != null) {
      json['numberofswervingevents'] = numberofswervingevents;
    }
    if (numberofignoredstopsigns != null) {
      json['numberofignoredstopsigns'] = numberofignoredstopsigns;
    }
    if (numberofencounteredstopsigns != null) {
      json['numberofencounteredstopsigns'] = numberofencounteredstopsigns;
    }
    if (drivingevents != null) {
      json['drivingevents'] = drivingevents;
    }
    return json;
  }

  factory DriverBehaviourAnalysis.fromJson(Map<String, dynamic> json) {
    return DriverBehaviourAnalysis(
      starttime: json['starttime'],
      finishtime: json['finishtime'],
      kilometersdriven: json['kilometersdriven'],
      minutesdriven: json['minutesdriven'],
      minutestotalelapsed: json['minutestotalelapsed'],
      minutesspeeding: json['minutesspeeding'],
      minutestailgating: json['minutestailgating'],
      riskrelatedtomeanspeed: json['riskrelatedtomeanspeed'],
      riskrelatedtospeedvariation: json['riskrelatedtospeedvariation'],
      numberofharshaccelerationevents: json['numberofharshaccelerationevents'],
      numberofharshbrakingevents: json['numberofharshbrakingevents'],
      numberofcorneringevents: json['numberofcorneringevents'],
      numberofswervingevents: json['numberofswervingevents'],
      numberofignoredstopsigns: json['numberofignoredstopsigns'],
      numberofencounteredstopsigns: json['numberofencounteredstopsigns'],
      drivingevents: json['drivingevents'],
    );
  }
}
