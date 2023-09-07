// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "dart:typed_data";

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_progresslistener.dart";
import "gem_images.dart";
import "gem_types.dart";

class Login {
  int? userid;
  String? username;
  String? userfirstname;
  String? userlastname;
  String? userphone;
  String? useremail;
  Uint8List? userimage;
  int? userimageid;
  double? usersocialcredibility;
  ImageList? loginiconlist;
  Login({
    this.userid,
    this.username,
    this.userfirstname,
    this.userlastname,
    this.userphone,
    this.useremail,
    this.userimage,
    this.userimageid,
    this.usersocialcredibility,
    this.loginiconlist,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (userid != null) {
      json['userid'] = userid;
    }
    if (username != null) {
      json['username'] = username;
    }
    if (userfirstname != null) {
      json['userfirstname'] = userfirstname;
    }
    if (userlastname != null) {
      json['userlastname'] = userlastname;
    }
    if (userphone != null) {
      json['userphone'] = userphone;
    }
    if (useremail != null) {
      json['useremail'] = useremail;
    }
    if (userimage != null) {
      json['userimage'] = userimage;
    }
    if (userimageid != null) {
      json['userimageid'] = userimageid;
    }
    if (usersocialcredibility != null) {
      json['usersocialcredibility'] = usersocialcredibility;
    }
    if (loginiconlist != null) {
      json['loginiconlist'] = loginiconlist;
    }
    return json;
  }

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      userid: json['userid'],
      username: json['username'],
      userfirstname: json['userfirstname'],
      userlastname: json['userlastname'],
      userphone: json['userphone'],
      useremail: json['useremail'],
      userimage: json['userimage'],
      userimageid: json['userimageid'],
      usersocialcredibility: json['usersocialcredibility'],
      loginiconlist: json['loginiconlist'],
    );
  }
}
