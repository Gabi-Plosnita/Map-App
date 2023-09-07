// Copyright (C) 2019-2023, Magic Lane B.V.
// All rights reserved.
//
// This software is confidential and proprietary information of Magic Lane
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with Magic Lane.

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "gem_string.dart";

enum TRenameFolderField {
  ERenameFolder,
  EFolderName,
  ECurrentFolderName,
  EDone,
}

extension TRenameFolderFieldExtension on TRenameFolderField {
  int get id {
    switch (this) {
      case TRenameFolderField.ERenameFolder:
        return 0;
      case TRenameFolderField.EFolderName:
        return 1;
      case TRenameFolderField.ECurrentFolderName:
        return 2;
      case TRenameFolderField.EDone:
        return 3;
      default:
        return -1;
    }
  }

  static TRenameFolderField fromId(int id) {
    switch (id) {
      case 0:
        return TRenameFolderField.ERenameFolder;
      case 1:
        return TRenameFolderField.EFolderName;
      case 2:
        return TRenameFolderField.ECurrentFolderName;
      case 3:
        return TRenameFolderField.EDone;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}
