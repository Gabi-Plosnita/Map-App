// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "dart:convert";
import "gem_apilists.dart";
import "gem_landmarkstore.dart";

class SearchPreferences {
  bool? allowfuzzyresults;
  bool? estimatemissinghousenumbers;
  bool? exactmatch;
  int? maxmatches;
  bool? searchaddresses;
  bool? searchmappois;
  bool? searchonlyonboard;
  int? thresholddistance;
  SearchPreferences({
    this.allowfuzzyresults,
    this.estimatemissinghousenumbers,
    this.exactmatch,
    this.maxmatches,
    this.searchaddresses,
    this.searchmappois,
    this.searchonlyonboard,
    this.thresholddistance,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (allowfuzzyresults != null) {
      json['allowfuzzyresults'] = allowfuzzyresults;
    }
    if (estimatemissinghousenumbers != null) {
      json['estimatemissinghousenumbers'] = estimatemissinghousenumbers;
    }
    if (exactmatch != null) {
      json['exactmatch'] = exactmatch;
    }
    if (maxmatches != null) {
      json['maxmatches'] = maxmatches;
    }
    if (searchaddresses != null) {
      json['searchaddresses'] = searchaddresses;
    }

    if (searchmappois != null) {
      json['searchmappois'] = searchmappois;
    }

    if (searchonlyonboard != null) {
      json['searchonlyonboard'] = searchonlyonboard;
    }

    if (thresholddistance != null) {
      json['thresholddistance'] = thresholddistance;
    }
    return json;
  }

  factory SearchPreferences.fromJson(Map<String, dynamic> json) {
    return SearchPreferences(
      allowfuzzyresults: json['allowfuzzyresults'],
      estimatemissinghousenumbers: json['estimatemissinghousenumbers'],
      exactmatch: json['exactmatch'],
      maxmatches: json['maxmatches'],
      searchaddresses: json['searchaddresses'],
      searchmappois: json['searchmappois'],
      searchonlyonboard: json['searchonlyonboard'],
      thresholddistance: json['thresholddistance'],
    );
  }
}
