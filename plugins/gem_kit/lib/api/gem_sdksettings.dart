// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/api/gem_progresslistener.dart";
import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "dart:convert";
import "gem_apilists.dart";
import "gem_locale.dart";
import "gem_offboardlistener.dart";
import "gem_network.dart";
import "gem_string.dart";
import "gem_transferstatistics.dart";
import "gem_exceptions.dart";

enum EUnitSystem {
  Metric,
  ImperialUK,
  ImperialUS,
}

extension EUnitSystemExtension on EUnitSystem {
  int get id {
    switch (this) {
      case EUnitSystem.Metric:
        return 0;
      case EUnitSystem.ImperialUK:
        return 1;
      case EUnitSystem.ImperialUS:
        return 2;
      default:
        return -1;
    }
  }

  static EUnitSystem fromId(int id) {
    switch (id) {
      case 0:
        return EUnitSystem.Metric;
      case 1:
        return EUnitSystem.ImperialUK;
      case 2:
        return EUnitSystem.ImperialUS;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EMapLanguage {
  AutomaticLanguage,
  NativeLanguage,
}

extension EMapLanguageExtension on EMapLanguage {
  int get id {
    switch (this) {
      case EMapLanguage.AutomaticLanguage:
        return 0;
      case EMapLanguage.NativeLanguage:
        return 1;
      default:
        return -1;
    }
  }

  static EMapLanguage fromId(int id) {
    switch (id) {
      case 0:
        return EMapLanguage.AutomaticLanguage;
      case 1:
        return EMapLanguage.NativeLanguage;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EOnlineRestrictions {
  OR_Connection,
  OR_NetworkType,
  OR_RateLimit,
}

extension EOnlineRestrictionsExtension on EOnlineRestrictions {
  int get id {
    switch (this) {
      case EOnlineRestrictions.OR_Connection:
        return 1;
      case EOnlineRestrictions.OR_NetworkType:
        return 2;
      case EOnlineRestrictions.OR_RateLimit:
        return 4;
      default:
        return -1;
    }
  }

  static EOnlineRestrictions fromId(int id) {
    switch (id) {
      case 1:
        return EOnlineRestrictions.OR_Connection;
      case 2:
        return EOnlineRestrictions.OR_NetworkType;
      case 4:
        return EOnlineRestrictions.OR_RateLimit;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class SdkSettings {
  static void setAppAuthorization(String token) {
    try {
      GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "setAppAuthorization",
        'args': token
      }));
    } catch (e) {
      throw (e.toString());
    }
  }

  static Future<String> getAppAuthorization() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "getAppAuthorization",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  static void setUnitSystem(EUnitSystem unitSystem) {
    try {
      GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "setUnitSystem",
        'args': unitSystem.id
      }));
    } catch (e) {
      throw (e.toString());
    }
  }

  static EUnitSystem getUnitSystem() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "getUnitSystem",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return EUnitSystemExtension.fromId(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  static void setLanguage(Language language) {
    try {
      GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "setLanguage",
        'args': language
      }));
    } catch (e) {
      throw (e.toString());
    }
  }

  static Language getLanguage() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "getLanguage",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Language.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  static List<Language> getLanguageList() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "getLanguageList",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      final categoriesJson = decodedVal['result'] as List<dynamic>;
      List<Language> categories = categoriesJson
          .map((categoryJson) => Language.fromJson(categoryJson))
          .toList();
      return categories;
    } catch (e) {
      throw (e.toString());
    }
  }

  static void setAllowOffboardServiceOnExtraChargedNetwork(
      EServiceGroupType serviceType, bool allow) {
    try {
      GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "setAllowOffboardServiceOnExtraChargedNetwork",
        'args': {'serviceType': serviceType.id, 'allow': allow}
      }));
    } catch (e) {
      throw (e.toString());
    }
  }

  static bool getAllowOffboardServiceOnExtraChargedNetwork(
      EServiceGroupType serviceType) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "getAllowOffboardServiceOnExtraChargedNetwork",
        'args': serviceType.id
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  static bool getAllowConnection() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "getAllowConnection",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  static void setVoiceByPath(String filePath, Language lang) {
    try {
      GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': 0,
        'class': "SdkSettings",
        'method': "setAllowOffboardServiceOnExtraChargedNetwork",
        'args': {'filePath': filePath, 'lang': lang}
      }));
    } catch (e) {
      throw (e.toString());
    }
  }
}
