// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_sdk.dart";

enum EISOCodeType {
  ISO_Invalid,
  ISO_2,
  ISO_3,
}

extension EISOCodeTypeExtension on EISOCodeType {
  int get id {
    switch (this) {
      case EISOCodeType.ISO_Invalid:
        return -1;
      case EISOCodeType.ISO_2:
        return 0;
      case EISOCodeType.ISO_3:
        return 2;
      default:
        return -1;
    }
  }

  static EISOCodeType fromId(int id) {
    switch (id) {
      case -1:
        return EISOCodeType.ISO_Invalid;
      case 0:
        return EISOCodeType.ISO_2;
      case 2:
        return EISOCodeType.ISO_3;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EVoiceType {
  VT_Human,
  VT_Computer,
}

extension EVoiceTypeExtension on EVoiceType {
  int get id {
    switch (this) {
      case EVoiceType.VT_Human:
        return 0;
      case EVoiceType.VT_Computer:
        return 1;
      default:
        return -1;
    }
  }

  static EVoiceType fromId(int id) {
    switch (id) {
      case 0:
        return EVoiceType.VT_Human;
      case 1:
        return EVoiceType.VT_Computer;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EScriptVariant {
  SV_Native,
  SV_Transcription,
  SV_Transliteration,
}

extension EScriptVariantExtension on EScriptVariant {
  int get id {
    switch (this) {
      case EScriptVariant.SV_Native:
        return 0;
      case EScriptVariant.SV_Transcription:
        return 256;
      case EScriptVariant.SV_Transliteration:
        return 512;
      default:
        return -1;
    }
  }

  static EScriptVariant fromId(int id) {
    switch (id) {
      case 0:
        return EScriptVariant.SV_Native;
      case 256:
        return EScriptVariant.SV_Transcription;
      case 512:
        return EScriptVariant.SV_Transliteration;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class Language {
  String? name;
  String? languagecode;
  String? regioncode;
  String? scriptcode;
  EScriptVariant? scriptvariant;
  Language({
    this.name,
    this.languagecode,
    this.regioncode,
    this.scriptcode,
    this.scriptvariant,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (name != null) {
      json['name'] = name;
    }
    if (languagecode != null) {
      json['languagecode'] = languagecode;
    }
    if (regioncode != null) {
      json['regioncode'] = regioncode;
    }
    if (scriptcode != null) {
      json['scriptcode'] = scriptcode;
    }
    if (scriptvariant != null) {
      json['scriptvariant'] = scriptvariant!.id;
    }
    return json;
  }

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      name: json['name'],
      languagecode: json['languagecode'],
      regioncode: json['regioncode'],
      scriptcode: json['scriptcode'],
      scriptvariant: json['scriptvariant'],
    );
  }
}

class Voice {
  String? name;
  Language? language;
  String? filename;
  EVoiceType? type;
  int? id;
  Voice({
    this.name,
    this.language,
    this.filename,
    this.type,
    this.id,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (name != null) {
      json['name'] = name;
    }
    if (language != null) {
      json['language'] = language;
    }
    if (filename != null) {
      json['filename'] = filename;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    if (id != null) {
      json['id'] = id;
    }
    return json;
  }

  factory Voice.fromJson(Map<String, dynamic> json) {
    return Voice(
      name: json['name'],
      language: json['language'],
      filename: json['filename'],
      type: json['type'],
      id: json['id'],
    );
  }
}
