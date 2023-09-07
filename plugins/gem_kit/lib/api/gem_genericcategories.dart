// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_apilists.dart";
import "gem_types.dart";
import "gem_landmark.dart";

class LandmarkCategoryList {}

class GenericCategories {
  LandmarkCategoryList? categories;
  int? landmarkstoreid;
  GenericCategories({
    this.categories,
    this.landmarkstoreid,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (categories != null) {
      json['categories'] = categories;
    }
    if (landmarkstoreid != null) {
      json['landmarkstoreid'] = landmarkstoreid;
    }
    return json;
  }

  factory GenericCategories.fromJson(Map<String, dynamic> json) {
    return GenericCategories(
      categories: json['categories'],
      landmarkstoreid: json['landmarkstoreid'],
    );
  }
}
