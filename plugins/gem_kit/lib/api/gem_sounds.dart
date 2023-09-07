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
import "gem_progresslistener.dart";
import "gem_locale.dart";

enum EMimeType {
  MT_None,
  MT_Raw,
  MT_Mp3,
  MT_Tts,
}

extension EMimeTypeExtension on EMimeType {
  int get id {
    switch (this) {
      case EMimeType.MT_None:
        return 0;
      case EMimeType.MT_Raw:
        return 1;
      case EMimeType.MT_Mp3:
        return 2;
      case EMimeType.MT_Tts:
        return 3;
      default:
        return -1;
    }
  }

  static EMimeType fromId(int id) {
    switch (id) {
      case 0:
        return EMimeType.MT_None;
      case 1:
        return EMimeType.MT_Raw;
      case 2:
        return EMimeType.MT_Mp3;
      case 3:
        return EMimeType.MT_Tts;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EVolume {
  MinVolume,
  MaxVolume,
}

extension EVolumeExtension on EVolume {
  int get id {
    switch (this) {
      case EVolume.MinVolume:
        return 0;
      case EVolume.MaxVolume:
        return 10;
      default:
        return -1;
    }
  }

  static EVolume fromId(int id) {
    switch (id) {
      case 0:
        return EVolume.MinVolume;
      case 10:
        return EVolume.MaxVolume;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAudioStreamType {
  Music,
  VoiceCall,
}

extension EAudioStreamTypeExtension on EAudioStreamType {
  int get id {
    switch (this) {
      case EAudioStreamType.Music:
        return 0;
      case EAudioStreamType.VoiceCall:
        return 1;
      default:
        return -1;
    }
  }

  static EAudioStreamType fromId(int id) {
    switch (id) {
      case 0:
        return EAudioStreamType.Music;
      case 1:
        return EAudioStreamType.VoiceCall;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETtsMimeType {
  TtsMimeNone,
  TtsMimeText,
  TtsMimeRoadCode,
  TtsMimeIpa,
  TtsMimeXsampa,
  TtsMimeLhp,
}

extension ETtsMimeTypeExtension on ETtsMimeType {
  int get id {
    switch (this) {
      case ETtsMimeType.TtsMimeNone:
        return 0;
      case ETtsMimeType.TtsMimeText:
        return 1;
      case ETtsMimeType.TtsMimeRoadCode:
        return 2;
      case ETtsMimeType.TtsMimeIpa:
        return 3;
      case ETtsMimeType.TtsMimeXsampa:
        return 4;
      case ETtsMimeType.TtsMimeLhp:
        return 5;
      default:
        return -1;
    }
  }

  static ETtsMimeType fromId(int id) {
    switch (id) {
      case 0:
        return ETtsMimeType.TtsMimeNone;
      case 1:
        return ETtsMimeType.TtsMimeText;
      case 2:
        return ETtsMimeType.TtsMimeRoadCode;
      case 3:
        return ETtsMimeType.TtsMimeIpa;
      case 4:
        return ETtsMimeType.TtsMimeXsampa;
      case 5:
        return ETtsMimeType.TtsMimeLhp;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETtsSupportLevel {
  TtsSupportNone,
  TtsSupportTransliteratedText,
  TtsSupportPlainText,
  TtsSupportPhoneme,
}

extension ETtsSupportLevelExtension on ETtsSupportLevel {
  int get id {
    switch (this) {
      case ETtsSupportLevel.TtsSupportNone:
        return 0;
      case ETtsSupportLevel.TtsSupportTransliteratedText:
        return 1;
      case ETtsSupportLevel.TtsSupportPlainText:
        return 2;
      case ETtsSupportLevel.TtsSupportPhoneme:
        return 3;
      default:
        return -1;
    }
  }

  static ETtsSupportLevel fromId(int id) {
    switch (id) {
      case 0:
        return ETtsSupportLevel.TtsSupportNone;
      case 1:
        return ETtsSupportLevel.TtsSupportTransliteratedText;
      case 2:
        return ETtsSupportLevel.TtsSupportPlainText;
      case 3:
        return ETtsSupportLevel.TtsSupportPhoneme;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAudioFocus {
  AudioFocus_Loss,
  AudioFocus_Gain,
}

extension EAudioFocusExtension on EAudioFocus {
  int get id {
    switch (this) {
      case EAudioFocus.AudioFocus_Loss:
        return 0;
      case EAudioFocus.AudioFocus_Gain:
        return 1;
      default:
        return -1;
    }
  }

  static EAudioFocus fromId(int id) {
    switch (id) {
      case 0:
        return EAudioFocus.AudioFocus_Loss;
      case 1:
        return EAudioFocus.AudioFocus_Gain;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAudioCategory {
  Playback,
  Recording,
  PlaybackAndRecording,
}

extension EAudioCategoryExtension on EAudioCategory {
  int get id {
    switch (this) {
      case EAudioCategory.Playback:
        return 0;
      case EAudioCategory.Recording:
        return 1;
      case EAudioCategory.PlaybackAndRecording:
        return 2;
      default:
        return -1;
    }
  }

  static EAudioCategory fromId(int id) {
    switch (id) {
      case 0:
        return EAudioCategory.Playback;
      case 1:
        return EAudioCategory.Recording;
      case 2:
        return EAudioCategory.PlaybackAndRecording;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAudioOutput {
  Automatic,
  BluetoothAsPhoneCall,
  SpeakerOnly,
}

extension EAudioOutputExtension on EAudioOutput {
  int get id {
    switch (this) {
      case EAudioOutput.Automatic:
        return 0;
      case EAudioOutput.BluetoothAsPhoneCall:
        return 1;
      case EAudioOutput.SpeakerOnly:
        return 2;
      default:
        return -1;
    }
  }

  static EAudioOutput fromId(int id) {
    switch (id) {
      case 0:
        return EAudioOutput.Automatic;
      case 1:
        return EAudioOutput.BluetoothAsPhoneCall;
      case 2:
        return EAudioOutput.SpeakerOnly;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
