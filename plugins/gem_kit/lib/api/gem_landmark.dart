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
import "dart:convert";
import "gem_sdk.dart";
import "gem_images.dart";
import "gem_string.dart";
import "gem_time.dart";
import "gem_geographicarea.dart";
import "gem_addressinfo.dart";
import "gem_contactinfo.dart";
import "gem_genericcategoriesids.dart";
import "gem_types.dart";
import "gem_coordinates.dart";
import "gem_imageids.dart";

class LandmarkCategoryList {
  LandmarkCategoryList();
  factory LandmarkCategoryList.fromJson(Map<String, dynamic> json) {
    return LandmarkCategoryList();
  }
}

enum EGlobalLandmarkCategory {
  LGasStations,
  LParking,
  LAccommodation,
  LBusiness,
  LCommunication,
  LEducationalInstitute,
  LEntertainment,
  LFoodAndBeverage,
  LGeographicalArea,
  LOutdoorActivities,
  LPeople,
  LPublicService,
  LReligiousPlaces,
  LShopping,
  LSightseeing,
  LSports,
  LTransport,
}

extension EGlobalLandmarkCategoryExtension on EGlobalLandmarkCategory {
  int get id {
    switch (this) {
      case EGlobalLandmarkCategory.LGasStations:
        return EGenericCategoriesIDs.GasStation.id;
      case EGlobalLandmarkCategory.LParking:
        return EGenericCategoriesIDs.Parking.id;
      case EGlobalLandmarkCategory.LAccommodation:
        return EGenericCategoriesIDs.Accommodation.id;
      case EGlobalLandmarkCategory.LBusiness:
        return EGenericCategoriesIDs.Business.id;
      case EGlobalLandmarkCategory.LCommunication:
        return EGenericCategoriesIDs.Uncategorized.id;
      case EGlobalLandmarkCategory.LEducationalInstitute:
        return EGenericCategoriesIDs.Education.id;
      case EGlobalLandmarkCategory.LEntertainment:
        return EGenericCategoriesIDs.Entertainment.id;
      case EGlobalLandmarkCategory.LFoodAndBeverage:
        return EGenericCategoriesIDs.FoodAndDrink.id;
      case EGlobalLandmarkCategory.LGeographicalArea:
        return EGenericCategoriesIDs.GeographicalArea.id;
      case EGlobalLandmarkCategory.LOutdoorActivities:
        return EGenericCategoriesIDs.Roadside.id;
      case EGlobalLandmarkCategory.LPeople:
        return EGenericCategoriesIDs.Uncategorized.id;
      case EGlobalLandmarkCategory.LPublicService:
        return EGenericCategoriesIDs.PublicServices.id;
      case EGlobalLandmarkCategory.LReligiousPlaces:
        return EGenericCategoriesIDs.ReligiousPlaces.id;
      case EGlobalLandmarkCategory.LShopping:
        return EGenericCategoriesIDs.Shopping.id;
      case EGlobalLandmarkCategory.LSightseeing:
        return EGenericCategoriesIDs.Sightseeing.id;
      case EGlobalLandmarkCategory.LSports:
        return EGenericCategoriesIDs.Sports.id;
      case EGlobalLandmarkCategory.LTransport:
        return EGenericCategoriesIDs.PublicTransport.id;
      default:
        return -1;
    }
  }

  static EGlobalLandmarkCategory fromId(int id) {
    final pId = EGenericCategoriesIDsExtension.fromId(id);
    switch (pId) {
      case EGenericCategoriesIDs.GasStation:
        return EGlobalLandmarkCategory.LGasStations;
      case EGenericCategoriesIDs.Parking:
        return EGlobalLandmarkCategory.LParking;
      case EGenericCategoriesIDs.Accommodation:
        return EGlobalLandmarkCategory.LAccommodation;
      case EGenericCategoriesIDs.Business:
        return EGlobalLandmarkCategory.LBusiness;
      case EGenericCategoriesIDs.Uncategorized:
        return EGlobalLandmarkCategory.LCommunication;
      case EGenericCategoriesIDs.Education:
        return EGlobalLandmarkCategory.LEducationalInstitute;
      case EGenericCategoriesIDs.Entertainment:
        return EGlobalLandmarkCategory.LEntertainment;
      case EGenericCategoriesIDs.FoodAndDrink:
        return EGlobalLandmarkCategory.LFoodAndBeverage;
      case EGenericCategoriesIDs.GeographicalArea:
        return EGlobalLandmarkCategory.LGeographicalArea;
      case EGenericCategoriesIDs.Roadside:
        return EGlobalLandmarkCategory.LOutdoorActivities;
      case EGenericCategoriesIDs.Uncategorized:
        return EGlobalLandmarkCategory.LPeople;
      case EGenericCategoriesIDs.PublicServices:
        return EGlobalLandmarkCategory.LPublicService;
      case EGenericCategoriesIDs.ReligiousPlaces:
        return EGlobalLandmarkCategory.LReligiousPlaces;
      case EGenericCategoriesIDs.Shopping:
        return EGlobalLandmarkCategory.LShopping;
      case EGenericCategoriesIDs.Sightseeing:
        return EGlobalLandmarkCategory.LSightseeing;
      case EGenericCategoriesIDs.Sports:
        return EGlobalLandmarkCategory.LSports;
      case EGenericCategoriesIDs.PublicTransport:
        return EGlobalLandmarkCategory.LTransport;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EEntranceLocationType {
  UnknownAccessType,
  VehicleAccess,
  PedestrianAccess,
}

extension EEntranceLocationTypeExtension on EEntranceLocationType {
  int get id {
    switch (this) {
      case EEntranceLocationType.UnknownAccessType:
        return 0;
      case EEntranceLocationType.VehicleAccess:
        return 1;
      case EEntranceLocationType.PedestrianAccess:
        return 2;
      default:
        return -1;
    }
  }

  static EEntranceLocationType fromId(int id) {
    switch (id) {
      case 0:
        return EEntranceLocationType.UnknownAccessType;
      case 1:
        return EEntranceLocationType.VehicleAccess;
      case 2:
        return EEntranceLocationType.PedestrianAccess;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class LandmarkCategory {
  int? id;
  String? name;
  Uint8List? image;
  int? landmarkstoreid;
  LandmarkCategory({
    this.id,
    this.name,
    this.image,
    this.landmarkstoreid,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (id != null) {
      json['id'] = id;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (image != null) {
      json['image'] = image;
    }
    if (landmarkstoreid != null) {
      json['landmarkstoreid'] = landmarkstoreid;
    }
    return json;
  }

  factory LandmarkCategory.fromJson(Map<String, dynamic> json) {
    return LandmarkCategory(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      landmarkstoreid: json['landmarkstoreid'],
    );
  }
}

class EntranceLocations {
  int? count;
  EntranceLocations({
    this.count,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (count != null) {
      json['count'] = count;
    }
    return json;
  }

  factory EntranceLocations.fromJson(Map<String, dynamic> json) {
    return EntranceLocations(
      count: json['count'],
    );
  }
}

class Landmark {
  dynamic _id;
  int _mapId;
  dynamic get id => _id;
  int get mapId => _mapId;
  List<dynamic> autoDisposeObjects = [];

  Landmark()
      : _id = -1,
        _mapId = -1;
  Landmark.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;

  ///Get the landmark ID.
  ///
  /// **Returns**
  /// * landmark id
  /// * *error::KGeneral* (-1) if it does not have an associated ID, i.e. the landmark doesn't belong to a landmark store.

  int getLandmarkId() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getLandmarkId",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  ///If the landmark store is set then it returns the landmark store ID (>0).
  ///
  /// **Returns**
  /// * *error::KGeneral* On error.

  int getLandmarkStoreId() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getLandmarkStoreId",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  ///If the landmark store is set then it returns the landmark store type( see ELandmarkStoreType ) (>0).
  ///
  /// **Returns**
  /// * *error::KGeneral* On error.
  int getLandmarkStoreType() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getLandmarkStoreType",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Get the description of this landmark.
  ///
  /// On return the parameter is set to the field value. It may be empty.
  Coordinates getCoordinates() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getCoordinates",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Coordinates.fromJson(decodedVal['result']);
    } catch (e) {
      return throw (e.toString());
    }
  }

  /// Set the centroid coordinates.

  Future<void> setCoordinates(Coordinates coords) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setCoordinates",
                'args': coords.toJson()
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the landmark extra image.
  ///
  /// If no extra image is set, an empty object is returned.
  EntranceLocations getEntrances() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getEntrances",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return EntranceLocations.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Get geographic area.
  GeographicArea getGeographicArea() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getGeographicArea",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return GeographicArea.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  ///Set geographic area.

  Future<void> setGeographicArea(GeographicArea ga) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setGeographicArea",
                'args': ga
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the landmark image.
  ///
  /// The API user is responsible to check if the image is valid.
  Uint8List getImage(int width, int height) {
    try {
      final xy = XyType(x: width, y: width);
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
          {'id': _id, 'class': "Landmark", 'method': "getImage", 'args': xy}));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Set the image of this landmark.
  Future<void> setImage(Uint8List img) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setImage",
                'args': img
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  Future<void> setImageFromIconId(GemIcon icon) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setImageFromIconId",
                'args': icon.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the landmark extra image.
  ///
  /// If no extra image is set, an empty object is returned.
  // Future<Uint8List> getExtraImage() async {
  //   try {
  //     final resultString = await GemKitPlatform.instance
  //         .getChannel(mapId: _mapId)
  //         .invokeMethod<String>(
  //             'callObjectMethod',
  //             jsonEncode({
  //               'id': _id,
  //               'class': "Landmark",
  //               'method': "getExtraImage",
  //               'args': {}
  //             }));
  //     final decodedVal = jsonDecode(resultString!);
  //     return Image.fromJson(decodedVal['result']);
  //   } catch (e) {
  //     return Future.error(e.toString());
  //   }
  // }

  /// Set the landmark extra image.

  // Future<void> setExtraImage(Image img) async {
  //   try {
  //     await GemKitPlatform.instance
  //         .getChannel(mapId: _mapId)
  //         .invokeMethod<String>(
  //             'callObjectMethod',
  //             jsonEncode({
  //               'id': _id,
  //               'class': "Landmark",
  //               'method': "setExtraImage",
  //               'args': img
  //             }));
  //   } catch (e) {
  //     return Future.error(e.toString());
  //   }
  // }

  /// Get the address of this landmark.
  ///
  /// On return the parameter fields are set to the correct values. Some of them (or all) may be empty.
  AddressInfo getAddress() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getAddress",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      autoDisposeObjects.add(decodedVal['result']);
      return AddressInfo.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Set the address of this landmark.
  Future<void> setAddress(AddressInfo addr) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setAddress",
                'args': addr
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the name of this landmark.
  ///
  /// On return the parameter is set to the field value. It may be empty.
  String getName() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode(
          {'id': _id, 'class': "Landmark", 'method': "getName", 'args': {}}));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Set the name of this landmark.

  Future<void> setName(String name) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setName",
                'args': name
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the description of this landmark.
  ///
  /// On return the parameter is set to the field value. It may be empty.

  String getDescription() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getDescription",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Set the description of this landmark.
  ///
  /// On return the parameter is set to the field value. It may be empty.
  Future<void> setDescription(String desc) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setDescription",
                'args': desc
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the author of this landmark.
  ///
  /// On return the parameter is set to the field value. It may be empty.
  Future<String> getAuthor() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "getAuthor",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Set the author of this landmark.
  ///
  /// On return the parameter is set to the field value. It may be empty.
  Future<void> setAuthor(String auth) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setAuthor",
                'args': auth
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get provider id of this landmark.
  int getProviderId() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getProviderId",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Set provider id of this landmark.

  Future<void> setProviderId(int providerId) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setProviderId",
                'args': providerId
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get the timestamp.
  ///
  /// If no value is set by the user, the timestamp will be set to current time when the landmark is inserted in a landmark store.
  Future<Time> getTimeStamp() async {
    try {
      final resultString = await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "getTimeStamp",
                'args': {}
              }));
      final decodedVal = jsonDecode(resultString!);
      return Time.fromJson(decodedVal['result']);
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Set the timestamp.

  Future<void> setTimeStamp(Time time) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setTimeStamp",
                'args': time
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get contact info attached to this landmark Phone numbers & descriptions, email addresses & descriptions, URLs & descriptions.
  ContactInfo getContactInfo() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getContactInfo",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      autoDisposeObjects.add(decodedVal['result']);
      return ContactInfo.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Set the contact info.
  ///
  ///Phone numbers & descriptions, email addresses & descriptions, URLs & descriptions.

  Future<void> setContactInfo(ContactInfo ci) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setContactInfo",
                'args': ci.id
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Get direct access to the extra info attached to this landmark.

  ExtraInfo getExtraInfo() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getExtraInfo",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return ExtraInfo(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Set extra info.

  Future<void> setExtraInfo(dynamic list) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "setExtraInfo",
                'args': list
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Add extra info.

  Future<void> addExtraInfo(String info) async {
    try {
      await GemKitPlatform.instance
          .getChannel(mapId: _mapId)
          .invokeMethod<String>(
              'callObjectMethod',
              jsonEncode({
                'id': _id,
                'class': "Landmark",
                'method': "addExtraInfo",
                'args': info
              }));
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  /// Find extra info.

  String findExtraInfo(String startStr) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "findExtraInfo",
        'args': startStr
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Get landmark categories list.

  List<LandmarkCategory> getCategories() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getCategories",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      final categoriesJson = decodedVal['result'] as List<dynamic>;
      List<LandmarkCategory> categories = categoriesJson
          .map((categoryJson) => LandmarkCategory.fromJson(categoryJson))
          .toList();
      return categories;
    } catch (e) {
      throw (e.toString());
    }
  }

  /// Get contour rectangle geographic area.

  RectangleGeographicArea getContourGeograficArea({bool? relevantOnly}) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getContourGeograficArea",
        'args': (relevantOnly != null) ? relevantOnly : {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return RectangleGeographicArea.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  static Landmark create() {
    final resultString = GemKitPlatform.instance
        .callCreateObject(jsonEncode({'class': "Landmark"}));
    final decodedVal = jsonDecode(resultString!);
    return Landmark.init(decodedVal['result'], 0);
  }

  Map<String, dynamic> getJson(
      int landmarkImageWidth, int landmarkImageHeight) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "Landmark",
        'method': "getJson",
        'args': XyType<int>(x: landmarkImageWidth, y: landmarkImageHeight)
      }));
      final decodedVal = jsonDecode(resultString!);
      Map<String, dynamic> retMap = Map<String, dynamic>();
      retMap['name'] = decodedVal['result']['name'];
      retMap['description'] = decodedVal['result']['description'];
      retMap['author'] = decodedVal['result']['author'];
      retMap['image'] =
          Uint8List.fromList(decodedVal['result']['image'].cast<int>());
      retMap['extrainfo'] = decodedVal['result']['extrainfo'];
      retMap['address'] = decodedVal['result']['address'];
      final categorieslist = decodedVal['result']['categories'];
      List<LandmarkCategory> lCateg = [];
      for (final category in categorieslist) {
        lCateg.add(LandmarkCategory.fromJson(category));
      }
      retMap['categories'] = lCateg;
      return retMap;
    } catch (e) {
      return throw (e.toString());
    }
  }

  void dispose() {
    autoDisposeObjects.forEach((element) {
      GemKitPlatform.instance
          .callDeleteObject(jsonEncode({'class': "Landmark", 'id': element}));
    });
    autoDisposeObjects.clear();
    GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "Landmark", 'id': _id}));
  }
}

class LandmarkPosition {
  Landmark? landmark;
  int? distance;
  LandmarkPosition({
    this.landmark,
    this.distance,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (landmark != null) {
      json['landmark'] = landmark;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    return json;
  }

  factory LandmarkPosition.fromJson(Map<String, dynamic> json) {
    return LandmarkPosition(
      landmark: json['landmark'],
      distance: json['distance'],
    );
  }
}

class PredefinedExtraInfoKey {
  static const String gmSearchResultDistance = 'gm_search_result_dist';
  static const String gmSearchResultType = 'gm_search_result_type';
  static const String gmWikiNativeName = 'gm_wiki_native_name';
  static const String gmWikiEngName = 'gm_wiki_eng_name';
}

class ExtraInfo {
  final Map<dynamic, dynamic> data;

  ExtraInfo(List<dynamic> input) : data = _parseInput(input);

  static Map<dynamic, dynamic> _parseInput(List<dynamic> input) {
    final Map<dynamic, dynamic> parsedData = {};
    int index = 0;

    for (final line in input) {
      final parts = line.split('=');
      if (parts.length == 2) {
        final key = parts[0].trim();
        final value = parts[1].trim();
        parsedData[key] = value;
      } else if (parts.length == 1) {
        final value = parts[0].trim();
        final key = index.toString();
        parsedData[key] = value;
        index++;
      }
    }

    return parsedData;
  }

  dynamic getByKey(dynamic key) {
    final value = data[key];
    if (value != null) {
      if (value == 'true' || value == 'false') {
        return value == 'true';
      }
      try {
        return int.parse(value);
      } catch (e) {
        // Not an int, try parsing as double
        try {
          return double.parse(value);
        } catch (e) {
          // Not a double, return the original string value
          return value;
        }
      }
    }
    return null;
  }
}
