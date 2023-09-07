// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum EGenericCategoriesIDs {
  GasStation,
  Parking,
  FoodAndDrink,
  Accommodation,
  MedicalServices,
  Shopping,
  CarServices,
  PublicTransport,
  Wikipedia,
  Education,
  Entertainment,
  PublicServices,
  GeographicalArea,
  Business,
  Sightseeing,
  ReligiousPlaces,
  Roadside,
  Sports,
  Uncategorized,
  Hydrants,
  EmergencyServicesSupport,
  CivilEmergencyInfrastructure,
}

extension EGenericCategoriesIDsExtension on EGenericCategoriesIDs {
  int get id {
    switch (this) {
      case EGenericCategoriesIDs.GasStation:
        return 1000;
      case EGenericCategoriesIDs.Parking:
        return 1001;
      case EGenericCategoriesIDs.FoodAndDrink:
        return 1002;
      case EGenericCategoriesIDs.Accommodation:
        return 1003;
      case EGenericCategoriesIDs.MedicalServices:
        return 1004;
      case EGenericCategoriesIDs.Shopping:
        return 1005;
      case EGenericCategoriesIDs.CarServices:
        return 1006;
      case EGenericCategoriesIDs.PublicTransport:
        return 1007;
      case EGenericCategoriesIDs.Wikipedia:
        return 1008;
      case EGenericCategoriesIDs.Education:
        return 1009;
      case EGenericCategoriesIDs.Entertainment:
        return 1010;
      case EGenericCategoriesIDs.PublicServices:
        return 1011;
      case EGenericCategoriesIDs.GeographicalArea:
        return 1012;
      case EGenericCategoriesIDs.Business:
        return 1013;
      case EGenericCategoriesIDs.Sightseeing:
        return 1014;
      case EGenericCategoriesIDs.ReligiousPlaces:
        return 1015;
      case EGenericCategoriesIDs.Roadside:
        return 1016;
      case EGenericCategoriesIDs.Sports:
        return 1017;
      case EGenericCategoriesIDs.Uncategorized:
        return 1018;
      case EGenericCategoriesIDs.Hydrants:
        return 1019;
      case EGenericCategoriesIDs.EmergencyServicesSupport:
        return 1020;
      case EGenericCategoriesIDs.CivilEmergencyInfrastructure:
        return 1021;
      default:
        return -1;
    }
  }

  static EGenericCategoriesIDs fromId(int id) {
    switch (id) {
      case 1000:
        return EGenericCategoriesIDs.GasStation;
      case 1001:
        return EGenericCategoriesIDs.Parking;
      case 1002:
        return EGenericCategoriesIDs.FoodAndDrink;
      case 1003:
        return EGenericCategoriesIDs.Accommodation;
      case 1004:
        return EGenericCategoriesIDs.MedicalServices;
      case 1005:
        return EGenericCategoriesIDs.Shopping;
      case 1006:
        return EGenericCategoriesIDs.CarServices;
      case 1007:
        return EGenericCategoriesIDs.PublicTransport;
      case 1008:
        return EGenericCategoriesIDs.Wikipedia;
      case 1009:
        return EGenericCategoriesIDs.Education;
      case 1010:
        return EGenericCategoriesIDs.Entertainment;
      case 1011:
        return EGenericCategoriesIDs.PublicServices;
      case 1012:
        return EGenericCategoriesIDs.GeographicalArea;
      case 1013:
        return EGenericCategoriesIDs.Business;
      case 1014:
        return EGenericCategoriesIDs.Sightseeing;
      case 1015:
        return EGenericCategoriesIDs.ReligiousPlaces;
      case 1016:
        return EGenericCategoriesIDs.Roadside;
      case 1017:
        return EGenericCategoriesIDs.Sports;
      case 1018:
        return EGenericCategoriesIDs.Uncategorized;
      case 1019:
        return EGenericCategoriesIDs.Hydrants;
      case 1020:
        return EGenericCategoriesIDs.EmergencyServicesSupport;
      case 1021:
        return EGenericCategoriesIDs.CivilEmergencyInfrastructure;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
