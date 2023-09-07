// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";

enum EApiCustomer {
  Generic,
  MagicLane,
  KDAB,
  Selectric,
}

extension EApiCustomerExtension on EApiCustomer {
  int get id {
    switch (this) {
      case EApiCustomer.Generic:
        return 4095;
      case EApiCustomer.MagicLane:
        return 16;
      case EApiCustomer.KDAB:
        return 32;
      case EApiCustomer.Selectric:
        return 48;
      default:
        return -1;
    }
  }

  static EApiCustomer fromId(int id) {
    switch (id) {
      case 4095:
        return EApiCustomer.Generic;
      case 16:
        return EApiCustomer.MagicLane;
      case 32:
        return EApiCustomer.KDAB;
      case 48:
        return EApiCustomer.Selectric;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EApiProduct {
  MagicEarth,
  MagicEarthServices,
  MagicEarthWeb,
  MagicADAS,
}

extension EApiProductExtension on EApiProduct {
  int get id {
    switch (this) {
      case EApiProduct.MagicEarth:
        return 0;
      case EApiProduct.MagicEarthServices:
        return 1;
      case EApiProduct.MagicEarthWeb:
        return 2;
      case EApiProduct.MagicADAS:
        return 3;
      default:
        return -1;
    }
  }

  static EApiProduct fromId(int id) {
    switch (id) {
      case 0:
        return EApiProduct.MagicEarth;
      case 1:
        return EApiProduct.MagicEarthServices;
      case 2:
        return EApiProduct.MagicEarthWeb;
      case 3:
        return EApiProduct.MagicADAS;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EApiHosting {
  GenericStore,
  HuaweiStore,
}

extension EApiHostingExtension on EApiHosting {
  int get id {
    switch (this) {
      case EApiHosting.GenericStore:
        return 0;
      case EApiHosting.HuaweiStore:
        return 1;
      default:
        return -1;
    }
  }

  static EApiHosting fromId(int id) {
    switch (id) {
      case 0:
        return EApiHosting.GenericStore;
      case 1:
        return EApiHosting.HuaweiStore;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EApiFlavor {
  Final,
  Candidate,
  Beta,
  Alpha,
  SDK,
}

extension EApiFlavorExtension on EApiFlavor {
  int get id {
    switch (this) {
      case EApiFlavor.Final:
        return 16;
      case EApiFlavor.Candidate:
        return 32;
      case EApiFlavor.Beta:
        return 48;
      case EApiFlavor.Alpha:
        return 64;
      case EApiFlavor.SDK:
        return 255;
      default:
        return -1;
    }
  }

  static EApiFlavor fromId(int id) {
    switch (id) {
      case 16:
        return EApiFlavor.Final;
      case 32:
        return EApiFlavor.Candidate;
      case 48:
        return EApiFlavor.Beta;
      case 64:
        return EApiFlavor.Alpha;
      case 255:
        return EApiFlavor.SDK;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
