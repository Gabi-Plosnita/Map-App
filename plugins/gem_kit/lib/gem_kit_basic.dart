// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import 'gem_kit_platform_interface.dart';

import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:convert';

/// Error codes.
///
/// {@category Core}
class GemError {
  /// Success
  static const int success = 0;

  /// General error.
  static const int general = -1;

  /// Activation required to perform the request.
  static const int activation = -2;

  /// Operation canceled.
  static const int cancel = -3;

  /// Feature not supported.
  static const int notSupported = -4;

  /// Item already exists.
  static const int exist = -5;

  /// I/O error.
  static const int io = -6;

  /// Access denied.
  static const int accessDenied = -7;

  /// Read-only drive.
  static const int readonlyDrive = -8;

  /// Not enough disk space available.
  static const int noDiskSpace = -9;

  /// Item in use.
  static const int inUse = -10;

  /// Required item not found.
  static const int notFound = -11;

  /// Index out of range.
  static const int outOfRange = -12;

  /// Content was updated.
  static const int invalidated = -13;

  /// Not enough memory to complete the request.
  static const int noMemory = -14;

  /// Invalid input provided.
  static const int invalidInput = -15;

  /// Reduced results returned.
  static const int reducedResult = -16;

  /// Additional data required.
  static const int required = -17;

  /// No route possible.
  static const int noRoute = -18;

  /// One or more way points not accessible.
  static const int waypointAccess = -19;

  /// Requested route is too long.
  static const int routeTooLong = -20;

  /// Operation internally aborted.
  static const int internalAbort = -21;

  /// Connection failed.
  static const int connection = -22;

  /// Network connection failed.
  static const int networkFailed = -23;

  /// No connection available.
  static const int noConnection = -24;

  /// Connection required to perform the request.
  static const int connectionRequired = -25;

  /// Data sending failed.
  static const int sendFailed = -26;

  /// Data receiving failed.
  static const int recvFailed = -27;

  /// Operation could not start.
  static const int couldNotStart = -28;

  /// Network operation timeout.
  static const int networkTimeout = -29;

  /// Network couldn't resolve host
  static const int networkCouldntResolveHost = -30;

  /// Network couldn't resolve proxy
  static const int networkCouldntResolveProxy = -31;

  /// Network couldn't resume download
  static const int networkCouldntResume = -32;

  /// Not logged in.
  static const int notLoggedIn = -33;

  /// Operation suspended/paused.
  static const int suspended = -34;

  /// Content is up-to-date.
  static const int upToDate = -35;

  /// Internal engine resource is missing
  static const int resourceMissing = -36;

  /// Internal operation aborted due to timer timeout
  static const int operationTimeout = -37;

  /// Requested operation cannot be performed. Internal limit reached.
  static const int busy = -38;

  /// Content is expired.
  static const int expired = -39;

  /// The engine needs to be initialized before calling this
  static const int engineNotInitialized = -40;

  /// Operation couldn't be completed but was scheduled for later.
  static const int scheduled = -41;

  /// Network SSL connect error
  static const int sslConnectFail = -42;

  /// Device has low battery
  static const int lowBattery = -43;

  /// Device is overheated
  static const int overheated = -44;

  /// Missing SDk capability
  static const int missingCapability = -45;
}

/// Interface for receiving events from the SDK
///
/// {@category Core}
abstract class IGemEventHandler {
  void handleEvent(dynamic arguments) {
    throw UnimplementedError('handleEvent() has not been implemented.');
  }
}

/// Interface for implementing progress of async operations (routing, search)
///
/// {@category Core}
class IGemProgressListener extends IGemEventHandler {
  dynamic _id = 0;

  void notifyStart(bool hasProgress) {
    throw UnimplementedError('notifyStart has not been implemented.');
  }

  void notifyCustom(dynamic json) {}

  /// The multiplier - it is used to multiply the progress coming from the SDK, interval 0->1
  /// so if we want percentages, we use 100
  int getProgressMultiplier() {
    return 100;
  }

  /// The interval in ms to receive progress updates
  int getProgressNotifyInterval() {
    return 200;
  }

  /// Called when the progress is updated
  void notifyProgress(int progress) {}

  /// Called if the status of the operation is changed
  void notifyStatusChanged(int status) {}

  /// Called when the operation is completed
  void notifyComplete(int err, String hint) {
    throw UnimplementedError('notifyComplete has not been implemented.');
  }

  void notifyCompleteWithData(int err, String hint, Map json) {
    notifyComplete(err, hint);
  }

  @override
  void handleEvent(dynamic arguments) {
    final json = jsonDecode(arguments);
    if (json['eventType'] == 'startEvent') {
      notifyStart(false);
    } else if (json['eventType'] == 'completeEvent') {
      final err = json['errCode'];
      notifyCompleteWithData(err, '', json);
    } else if (json['eventType'] == 'notifyProgress') {
      notifyProgress(json['progress']);
    } else {
      notifyCustom(json);
    }
  }

  dynamic get id => _id;
  set id(dynamic id) => _id = id;
}
