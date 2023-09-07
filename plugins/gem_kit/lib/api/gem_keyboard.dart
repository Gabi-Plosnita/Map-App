// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum EKey {
  K_Space,
  K_Apostrophe,
  K_Plus,
  K_Comma,
  K_Minus,
  K_Period,
  K_Slash,
  K_0,
  K_1,
  K_2,
  K_3,
  K_4,
  K_5,
  K_6,
  K_7,
  K_8,
  K_9,
  K_Semicolon,
  K_Equal,
  K_A,
  K_B,
  K_C,
  K_D,
  K_E,
  K_F,
  K_G,
  K_H,
  K_I,
  K_J,
  K_K,
  K_L,
  K_M,
  K_N,
  K_O,
  K_P,
  K_Q,
  K_R,
  K_S,
  K_T,
  K_U,
  K_V,
  K_W,
  K_X,
  K_Y,
  K_Z,
  K_Insert,
  K_Delete,
  K_Right,
  K_Left,
  K_Down,
  K_Up,
  K_Page_Up,
  K_Page_Down,
  K_Home,
  K_End,
  K_LShift,
  K_LCtrl,
  K_LAlt,
  K_RShift,
  K_RCtrl,
  K_RAlt,
}

extension EKeyExtension on EKey {
  int get id {
    switch (this) {
      case EKey.K_Space:
        return 32;
      case EKey.K_Apostrophe:
        return 39;
      case EKey.K_Plus:
        return 43;
      case EKey.K_Comma:
        return 44;
      case EKey.K_Minus:
        return 45;
      case EKey.K_Period:
        return 46;
      case EKey.K_Slash:
        return 47;
      case EKey.K_0:
        return 48;
      case EKey.K_1:
        return 49;
      case EKey.K_2:
        return 50;
      case EKey.K_3:
        return 51;
      case EKey.K_4:
        return 52;
      case EKey.K_5:
        return 53;
      case EKey.K_6:
        return 54;
      case EKey.K_7:
        return 55;
      case EKey.K_8:
        return 56;
      case EKey.K_9:
        return 57;
      case EKey.K_Semicolon:
        return 59;
      case EKey.K_Equal:
        return 61;
      case EKey.K_A:
        return 65;
      case EKey.K_B:
        return 66;
      case EKey.K_C:
        return 67;
      case EKey.K_D:
        return 68;
      case EKey.K_E:
        return 69;
      case EKey.K_F:
        return 70;
      case EKey.K_G:
        return 71;
      case EKey.K_H:
        return 72;
      case EKey.K_I:
        return 73;
      case EKey.K_J:
        return 74;
      case EKey.K_K:
        return 75;
      case EKey.K_L:
        return 76;
      case EKey.K_M:
        return 77;
      case EKey.K_N:
        return 78;
      case EKey.K_O:
        return 79;
      case EKey.K_P:
        return 80;
      case EKey.K_Q:
        return 81;
      case EKey.K_R:
        return 82;
      case EKey.K_S:
        return 83;
      case EKey.K_T:
        return 84;
      case EKey.K_U:
        return 85;
      case EKey.K_V:
        return 86;
      case EKey.K_W:
        return 87;
      case EKey.K_X:
        return 88;
      case EKey.K_Y:
        return 89;
      case EKey.K_Z:
        return 90;
      case EKey.K_Insert:
        return 260;
      case EKey.K_Delete:
        return 261;
      case EKey.K_Right:
        return 262;
      case EKey.K_Left:
        return 263;
      case EKey.K_Down:
        return 264;
      case EKey.K_Up:
        return 265;
      case EKey.K_Page_Up:
        return 266;
      case EKey.K_Page_Down:
        return 267;
      case EKey.K_Home:
        return 268;
      case EKey.K_End:
        return 269;
      case EKey.K_LShift:
        return 340;
      case EKey.K_LCtrl:
        return 341;
      case EKey.K_LAlt:
        return 342;
      case EKey.K_RShift:
        return 344;
      case EKey.K_RCtrl:
        return 345;
      case EKey.K_RAlt:
        return 346;
      default:
        return -1;
    }
  }

  static EKey fromId(int id) {
    switch (id) {
      case 32:
        return EKey.K_Space;
      case 39:
        return EKey.K_Apostrophe;
      case 43:
        return EKey.K_Plus;
      case 44:
        return EKey.K_Comma;
      case 45:
        return EKey.K_Minus;
      case 46:
        return EKey.K_Period;
      case 47:
        return EKey.K_Slash;
      case 48:
        return EKey.K_0;
      case 49:
        return EKey.K_1;
      case 50:
        return EKey.K_2;
      case 51:
        return EKey.K_3;
      case 52:
        return EKey.K_4;
      case 53:
        return EKey.K_5;
      case 54:
        return EKey.K_6;
      case 55:
        return EKey.K_7;
      case 56:
        return EKey.K_8;
      case 57:
        return EKey.K_9;
      case 59:
        return EKey.K_Semicolon;
      case 61:
        return EKey.K_Equal;
      case 65:
        return EKey.K_A;
      case 66:
        return EKey.K_B;
      case 67:
        return EKey.K_C;
      case 68:
        return EKey.K_D;
      case 69:
        return EKey.K_E;
      case 70:
        return EKey.K_F;
      case 71:
        return EKey.K_G;
      case 72:
        return EKey.K_H;
      case 73:
        return EKey.K_I;
      case 74:
        return EKey.K_J;
      case 75:
        return EKey.K_K;
      case 76:
        return EKey.K_L;
      case 77:
        return EKey.K_M;
      case 78:
        return EKey.K_N;
      case 79:
        return EKey.K_O;
      case 80:
        return EKey.K_P;
      case 81:
        return EKey.K_Q;
      case 82:
        return EKey.K_R;
      case 83:
        return EKey.K_S;
      case 84:
        return EKey.K_T;
      case 85:
        return EKey.K_U;
      case 86:
        return EKey.K_V;
      case 87:
        return EKey.K_W;
      case 88:
        return EKey.K_X;
      case 89:
        return EKey.K_Y;
      case 90:
        return EKey.K_Z;
      case 260:
        return EKey.K_Insert;
      case 261:
        return EKey.K_Delete;
      case 262:
        return EKey.K_Right;
      case 263:
        return EKey.K_Left;
      case 264:
        return EKey.K_Down;
      case 265:
        return EKey.K_Up;
      case 266:
        return EKey.K_Page_Up;
      case 267:
        return EKey.K_Page_Down;
      case 268:
        return EKey.K_Home;
      case 269:
        return EKey.K_End;
      case 340:
        return EKey.K_LShift;
      case 341:
        return EKey.K_LCtrl;
      case 342:
        return EKey.K_LAlt;
      case 344:
        return EKey.K_RShift;
      case 345:
        return EKey.K_RCtrl;
      case 346:
        return EKey.K_RAlt;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EKeyAction {
  KA_Release,
  KA_Press,
  KA_Repeat,
}

extension EKeyActionExtension on EKeyAction {
  int get id {
    switch (this) {
      case EKeyAction.KA_Release:
        return 0;
      case EKeyAction.KA_Press:
        return 1;
      case EKeyAction.KA_Repeat:
        return 2;
      default:
        return -1;
    }
  }

  static EKeyAction fromId(int id) {
    switch (id) {
      case 0:
        return EKeyAction.KA_Release;
      case 1:
        return EKeyAction.KA_Press;
      case 2:
        return EKeyAction.KA_Repeat;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
