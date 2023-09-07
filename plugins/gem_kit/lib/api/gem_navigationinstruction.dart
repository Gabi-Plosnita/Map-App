import "dart:typed_data";

import "package:gem_kit/gem_kit_platform_interface.dart";
import "package:gem_kit/gem_kit_basic.dart";
import "dart:convert";
import "gem_sdk.dart";
import "gem_position.dart";
import "gem_landmark.dart";
import "gem_images.dart";
import "gem_sensedatasource.dart";
import "gem_path.dart";
import "gem_types.dart";
import "gem_coordinates.dart";

class AbstractGeometryItemList {}

class SignpostItemList {}

class RoadInfoList {}

class Position {}

enum EShapeForm {
  SF_Line,
  SF_CircleSegment,
  SF_Point,
}

extension EShapeFormExtension on EShapeForm {
  int get id {
    switch (this) {
      case EShapeForm.SF_Line:
        return 0;
      case EShapeForm.SF_CircleSegment:
        return 1;
      case EShapeForm.SF_Point:
        return 2;
      default:
        return -1;
    }
  }

  static EShapeForm fromId(int id) {
    switch (id) {
      case 0:
        return EShapeForm.SF_Line;
      case 1:
        return EShapeForm.SF_CircleSegment;
      case 2:
        return EShapeForm.SF_Point;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EShapeType {
  ST_Route,
  ST_Street,
}

extension EShapeTypeExtension on EShapeType {
  int get id {
    switch (this) {
      case EShapeType.ST_Route:
        return 0;
      case EShapeType.ST_Street:
        return 1;
      default:
        return -1;
    }
  }

  static EShapeType fromId(int id) {
    switch (id) {
      case 0:
        return EShapeType.ST_Route;
      case 1:
        return EShapeType.ST_Street;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EArrowType {
  AR_None,
  AR_Begin,
  AR_End,
}

extension EArrowTypeExtension on EArrowType {
  int get id {
    switch (this) {
      case EArrowType.AR_None:
        return 0;
      case EArrowType.AR_Begin:
        return 1;
      case EArrowType.AR_End:
        return 2;
      default:
        return -1;
    }
  }

  static EArrowType fromId(int id) {
    switch (id) {
      case 0:
        return EArrowType.AR_None;
      case 1:
        return EArrowType.AR_Begin;
      case 2:
        return EArrowType.AR_End;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERestrictionType {
  RST_None,
  RST_Direction,
  RST_Manoeuvre,
}

extension ERestrictionTypeExtension on ERestrictionType {
  int get id {
    switch (this) {
      case ERestrictionType.RST_None:
        return 0;
      case ERestrictionType.RST_Direction:
        return 1;
      case ERestrictionType.RST_Manoeuvre:
        return 2;
      default:
        return -1;
    }
  }

  static ERestrictionType fromId(int id) {
    switch (id) {
      case 0:
        return ERestrictionType.RST_None;
      case 1:
        return ERestrictionType.RST_Direction;
      case 2:
        return ERestrictionType.RST_Manoeuvre;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EArrowDirection {
  EAD_None,
  EAD_Left,
  EAD_Straight,
  EAD_Right,
}

extension EArrowDirectionExtension on EArrowDirection {
  int get id {
    switch (this) {
      case EArrowDirection.EAD_None:
        return 0;
      case EArrowDirection.EAD_Left:
        return 1;
      case EArrowDirection.EAD_Straight:
        return 2;
      case EArrowDirection.EAD_Right:
        return 3;
      default:
        return -1;
    }
  }

  static EArrowDirection fromId(int id) {
    switch (id) {
      case 0:
        return EArrowDirection.EAD_None;
      case 1:
        return EArrowDirection.EAD_Left;
      case 2:
        return EArrowDirection.EAD_Straight;
      case 3:
        return EArrowDirection.EAD_Right;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EAnchorType {
  A_Point,
  A_Circle,
  A_Waypoint,
}

extension EAnchorTypeExtension on EAnchorType {
  int get id {
    switch (this) {
      case EAnchorType.A_Point:
        return 0;
      case EAnchorType.A_Circle:
        return 1;
      case EAnchorType.A_Waypoint:
        return 2;
      default:
        return -1;
    }
  }

  static EAnchorType fromId(int id) {
    switch (id) {
      case 0:
        return EAnchorType.A_Point;
      case 1:
        return EAnchorType.A_Circle;
      case 2:
        return EAnchorType.A_Waypoint;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum EDriveSide {
  DS_Left,
  DS_Right,
}

extension EDriveSideExtension on EDriveSide {
  int get id {
    switch (this) {
      case EDriveSide.DS_Left:
        return 0;
      case EDriveSide.DS_Right:
        return 1;
      default:
        return -1;
    }
  }

  static EDriveSide fromId(int id) {
    switch (id) {
      case 0:
        return EDriveSide.DS_Left;
      case 1:
        return EDriveSide.DS_Right;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ETurnEvent {
  T_NA,
  T_Straight,
  T_Right,
  T_Right1,
  T_Right2,
  T_Left,
  T_Left1,
  T_Left2,
  T_LightLeft,
  T_LightLeft1,
  T_LightLeft2,
  T_LightRight,
  T_LightRight1,
  T_LightRight2,
  T_SharpRight,
  T_SharpRight1,
  T_SharpRight2,
  T_SharpLeft,
  T_SharpLeft1,
  T_SharpLeft2,
  T_RoundaboutExitRight,
  T_Roundabout,
  T_RoundRight,
  T_RoundLeft,
  T_ExitRight,
  T_ExitRight1,
  T_ExitRight2,
  T_InfoGeneric,
  T_DriveOn,
  T_ExitNr,
  T_ExitLeft,
  T_ExitLeft1,
  T_ExitLeft2,
  T_RoundaboutExitLeft,
  T_IntoRoundabout,
  T_StayOn,
  T_BoatFerry,
  T_RailFerry,
  T_InfoLane,
  T_InfoSign,
  T_LeftRight,
  T_RightLeft,
  T_KeepLeft,
  T_KeepRight,
  T_Start,
  T_Intermediate,
  T_Stop,
}

extension ETurnEventExtension on ETurnEvent {
  int get id {
    switch (this) {
      case ETurnEvent.T_NA:
        return 0;
      case ETurnEvent.T_Straight:
        return 1;
      case ETurnEvent.T_Right:
        return 2;
      case ETurnEvent.T_Right1:
        return 3;
      case ETurnEvent.T_Right2:
        return 4;
      case ETurnEvent.T_Left:
        return 5;
      case ETurnEvent.T_Left1:
        return 6;
      case ETurnEvent.T_Left2:
        return 7;
      case ETurnEvent.T_LightLeft:
        return 8;
      case ETurnEvent.T_LightLeft1:
        return 9;
      case ETurnEvent.T_LightLeft2:
        return 10;
      case ETurnEvent.T_LightRight:
        return 11;
      case ETurnEvent.T_LightRight1:
        return 12;
      case ETurnEvent.T_LightRight2:
        return 13;
      case ETurnEvent.T_SharpRight:
        return 14;
      case ETurnEvent.T_SharpRight1:
        return 15;
      case ETurnEvent.T_SharpRight2:
        return 16;
      case ETurnEvent.T_SharpLeft:
        return 17;
      case ETurnEvent.T_SharpLeft1:
        return 18;
      case ETurnEvent.T_SharpLeft2:
        return 19;
      case ETurnEvent.T_RoundaboutExitRight:
        return 20;
      case ETurnEvent.T_Roundabout:
        return 21;
      case ETurnEvent.T_RoundRight:
        return 22;
      case ETurnEvent.T_RoundLeft:
        return 23;
      case ETurnEvent.T_ExitRight:
        return 24;
      case ETurnEvent.T_ExitRight1:
        return 25;
      case ETurnEvent.T_ExitRight2:
        return 26;
      case ETurnEvent.T_InfoGeneric:
        return 27;
      case ETurnEvent.T_DriveOn:
        return 28;
      case ETurnEvent.T_ExitNr:
        return 29;
      case ETurnEvent.T_ExitLeft:
        return 30;
      case ETurnEvent.T_ExitLeft1:
        return 31;
      case ETurnEvent.T_ExitLeft2:
        return 32;
      case ETurnEvent.T_RoundaboutExitLeft:
        return 33;
      case ETurnEvent.T_IntoRoundabout:
        return 34;
      case ETurnEvent.T_StayOn:
        return 35;
      case ETurnEvent.T_BoatFerry:
        return 36;
      case ETurnEvent.T_RailFerry:
        return 37;
      case ETurnEvent.T_InfoLane:
        return 38;
      case ETurnEvent.T_InfoSign:
        return 39;
      case ETurnEvent.T_LeftRight:
        return 40;
      case ETurnEvent.T_RightLeft:
        return 41;
      case ETurnEvent.T_KeepLeft:
        return 42;
      case ETurnEvent.T_KeepRight:
        return 43;
      case ETurnEvent.T_Start:
        return 44;
      case ETurnEvent.T_Intermediate:
        return 45;
      case ETurnEvent.T_Stop:
        return 46;
      default:
        return -1;
    }
  }

  static ETurnEvent fromId(int id) {
    switch (id) {
      case 0:
        return ETurnEvent.T_NA;
      case 1:
        return ETurnEvent.T_Straight;
      case 2:
        return ETurnEvent.T_Right;
      case 3:
        return ETurnEvent.T_Right1;
      case 4:
        return ETurnEvent.T_Right2;
      case 5:
        return ETurnEvent.T_Left;
      case 6:
        return ETurnEvent.T_Left1;
      case 7:
        return ETurnEvent.T_Left2;
      case 8:
        return ETurnEvent.T_LightLeft;
      case 9:
        return ETurnEvent.T_LightLeft1;
      case 10:
        return ETurnEvent.T_LightLeft2;
      case 11:
        return ETurnEvent.T_LightRight;
      case 12:
        return ETurnEvent.T_LightRight1;
      case 13:
        return ETurnEvent.T_LightRight2;
      case 14:
        return ETurnEvent.T_SharpRight;
      case 15:
        return ETurnEvent.T_SharpRight1;
      case 16:
        return ETurnEvent.T_SharpRight2;
      case 17:
        return ETurnEvent.T_SharpLeft;
      case 18:
        return ETurnEvent.T_SharpLeft1;
      case 19:
        return ETurnEvent.T_SharpLeft2;
      case 20:
        return ETurnEvent.T_RoundaboutExitRight;
      case 21:
        return ETurnEvent.T_Roundabout;
      case 22:
        return ETurnEvent.T_RoundRight;
      case 23:
        return ETurnEvent.T_RoundLeft;
      case 24:
        return ETurnEvent.T_ExitRight;
      case 25:
        return ETurnEvent.T_ExitRight1;
      case 26:
        return ETurnEvent.T_ExitRight2;
      case 27:
        return ETurnEvent.T_InfoGeneric;
      case 28:
        return ETurnEvent.T_DriveOn;
      case 29:
        return ETurnEvent.T_ExitNr;
      case 30:
        return ETurnEvent.T_ExitLeft;
      case 31:
        return ETurnEvent.T_ExitLeft1;
      case 32:
        return ETurnEvent.T_ExitLeft2;
      case 33:
        return ETurnEvent.T_RoundaboutExitLeft;
      case 34:
        return ETurnEvent.T_IntoRoundabout;
      case 35:
        return ETurnEvent.T_StayOn;
      case 36:
        return ETurnEvent.T_BoatFerry;
      case 37:
        return ETurnEvent.T_RailFerry;
      case 38:
        return ETurnEvent.T_InfoLane;
      case 39:
        return ETurnEvent.T_InfoSign;
      case 40:
        return ETurnEvent.T_LeftRight;
      case 41:
        return ETurnEvent.T_RightLeft;
      case 42:
        return ETurnEvent.T_KeepLeft;
      case 43:
        return ETurnEvent.T_KeepRight;
      case 44:
        return ETurnEvent.T_Start;
      case 45:
        return ETurnEvent.T_Intermediate;
      case 46:
        return ETurnEvent.T_Stop;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ERoadShieldType {
  RS_Invalid,
  RS_County,
  RS_State,
  RS_Federal,
  RS_Interstate,
  RS_4,
  RS_5,
  RS_6,
  RS_7,
}

extension ERoadShieldTypeExtension on ERoadShieldType {
  int get id {
    switch (this) {
      case ERoadShieldType.RS_Invalid:
        return 0;
      case ERoadShieldType.RS_County:
        return 1;
      case ERoadShieldType.RS_State:
        return 2;
      case ERoadShieldType.RS_Federal:
        return 3;
      case ERoadShieldType.RS_Interstate:
        return 4;
      case ERoadShieldType.RS_4:
        return 5;
      case ERoadShieldType.RS_5:
        return 6;
      case ERoadShieldType.RS_6:
        return 7;
      case ERoadShieldType.RS_7:
        return 8;
      default:
        return -1;
    }
  }

  static ERoadShieldType fromId(int id) {
    switch (id) {
      case 0:
        return ERoadShieldType.RS_Invalid;
      case 1:
        return ERoadShieldType.RS_County;
      case 2:
        return ERoadShieldType.RS_State;
      case 3:
        return ERoadShieldType.RS_Federal;
      case 4:
        return ERoadShieldType.RS_Interstate;
      case 5:
        return ERoadShieldType.RS_4;
      case 6:
        return ERoadShieldType.RS_5;
      case 7:
        return ERoadShieldType.RS_6;
      case 8:
        return ERoadShieldType.RS_7;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESignpostItemType {
  SI_Invalid,
  SI_PlaceName,
  SI_RouteNumber,
  SI_RouteName,
  SI_ExitNumber,
  SI_ExitName,
  SI_Pictogram,
  SI_OtherDestination,
}

extension ESignpostItemTypeExtension on ESignpostItemType {
  int get id {
    switch (this) {
      case ESignpostItemType.SI_Invalid:
        return 0;
      case ESignpostItemType.SI_PlaceName:
        return 1;
      case ESignpostItemType.SI_RouteNumber:
        return 2;
      case ESignpostItemType.SI_RouteName:
        return 3;
      case ESignpostItemType.SI_ExitNumber:
        return 4;
      case ESignpostItemType.SI_ExitName:
        return 5;
      case ESignpostItemType.SI_Pictogram:
        return 6;
      case ESignpostItemType.SI_OtherDestination:
        return 7;
      default:
        return -1;
    }
  }

  static ESignpostItemType fromId(int id) {
    switch (id) {
      case 0:
        return ESignpostItemType.SI_Invalid;
      case 1:
        return ESignpostItemType.SI_PlaceName;
      case 2:
        return ESignpostItemType.SI_RouteNumber;
      case 3:
        return ESignpostItemType.SI_RouteName;
      case 4:
        return ESignpostItemType.SI_ExitNumber;
      case 5:
        return ESignpostItemType.SI_ExitName;
      case 6:
        return ESignpostItemType.SI_Pictogram;
      case 7:
        return ESignpostItemType.SI_OtherDestination;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESignpostPictogramType {
  SP_Invalid,
  SP_Airport,
  SP_BusStation,
  SP_FairGround,
  SP_Ferry,
  SP_FirstAidPost,
  SP_Harbour,
  SP_Hospital,
  SP_HoteMotel,
  SP_IndustrialArea,
  SP_InformationCentre,
  SP_ParkingFacility,
  SP_PetrolStation,
  SP_RailwayStation,
  SP_RestArea,
  SP_Restaurant,
  SP_Toilet,
}

extension ESignpostPictogramTypeExtension on ESignpostPictogramType {
  int get id {
    switch (this) {
      case ESignpostPictogramType.SP_Invalid:
        return 0;
      case ESignpostPictogramType.SP_Airport:
        return 1;
      case ESignpostPictogramType.SP_BusStation:
        return 2;
      case ESignpostPictogramType.SP_FairGround:
        return 3;
      case ESignpostPictogramType.SP_Ferry:
        return 4;
      case ESignpostPictogramType.SP_FirstAidPost:
        return 5;
      case ESignpostPictogramType.SP_Harbour:
        return 6;
      case ESignpostPictogramType.SP_Hospital:
        return 7;
      case ESignpostPictogramType.SP_HoteMotel:
        return 8;
      case ESignpostPictogramType.SP_IndustrialArea:
        return 9;
      case ESignpostPictogramType.SP_InformationCentre:
        return 10;
      case ESignpostPictogramType.SP_ParkingFacility:
        return 11;
      case ESignpostPictogramType.SP_PetrolStation:
        return 12;
      case ESignpostPictogramType.SP_RailwayStation:
        return 13;
      case ESignpostPictogramType.SP_RestArea:
        return 14;
      case ESignpostPictogramType.SP_Restaurant:
        return 15;
      case ESignpostPictogramType.SP_Toilet:
        return 16;
      default:
        return -1;
    }
  }

  static ESignpostPictogramType fromId(int id) {
    switch (id) {
      case 0:
        return ESignpostPictogramType.SP_Invalid;
      case 1:
        return ESignpostPictogramType.SP_Airport;
      case 2:
        return ESignpostPictogramType.SP_BusStation;
      case 3:
        return ESignpostPictogramType.SP_FairGround;
      case 4:
        return ESignpostPictogramType.SP_Ferry;
      case 5:
        return ESignpostPictogramType.SP_FirstAidPost;
      case 6:
        return ESignpostPictogramType.SP_Harbour;
      case 7:
        return ESignpostPictogramType.SP_Hospital;
      case 8:
        return ESignpostPictogramType.SP_HoteMotel;
      case 9:
        return ESignpostPictogramType.SP_IndustrialArea;
      case 10:
        return ESignpostPictogramType.SP_InformationCentre;
      case 11:
        return ESignpostPictogramType.SP_ParkingFacility;
      case 12:
        return ESignpostPictogramType.SP_PetrolStation;
      case 13:
        return ESignpostPictogramType.SP_RailwayStation;
      case 14:
        return ESignpostPictogramType.SP_RestArea;
      case 15:
        return ESignpostPictogramType.SP_Restaurant;
      case 16:
        return ESignpostPictogramType.SP_Toilet;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

enum ESignpostConnectionInfo {
  SCI_Invalid,
  SCI_Branch,
  SCI_Towards,
  SCI_Exit,
}

extension ESignpostConnectionInfoExtension on ESignpostConnectionInfo {
  int get id {
    switch (this) {
      case ESignpostConnectionInfo.SCI_Invalid:
        return 0;
      case ESignpostConnectionInfo.SCI_Branch:
        return 1;
      case ESignpostConnectionInfo.SCI_Towards:
        return 2;
      case ESignpostConnectionInfo.SCI_Exit:
        return 3;
      default:
        return -1;
    }
  }

  static ESignpostConnectionInfo fromId(int id) {
    switch (id) {
      case 0:
        return ESignpostConnectionInfo.SCI_Invalid;
      case 1:
        return ESignpostConnectionInfo.SCI_Branch;
      case 2:
        return ESignpostConnectionInfo.SCI_Towards;
      case 3:
        return ESignpostConnectionInfo.SCI_Exit;

      default:
        throw ArgumentError('Invalid id');
    }
  }
}

class AbstractGeometryItem {
  EArrowType? arrowtype;
  EArrowDirection? beginarrowdirection;
  int? beginslot;
  EArrowDirection? endarrowdirection;
  int? endslot;
  ERestrictionType? restrictiontype;
  EShapeForm? shapeform;
  EShapeType? shapetype;
  int? slotallocation;
  AbstractGeometryItem({
    this.arrowtype,
    this.beginarrowdirection,
    this.beginslot,
    this.endarrowdirection,
    this.endslot,
    this.restrictiontype,
    this.shapeform,
    this.shapetype,
    this.slotallocation,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (arrowtype != null) {
      json['arrowtype'] = arrowtype!.id;
    }
    if (beginarrowdirection != null) {
      json['beginarrowdirection'] = beginarrowdirection!.id;
    }
    if (beginslot != null) {
      json['beginslot'] = beginslot;
    }
    if (endarrowdirection != null) {
      json['endarrowdirection'] = endarrowdirection!.id;
    }
    if (endslot != null) {
      json['endslot'] = endslot;
    }
    if (restrictiontype != null) {
      json['restrictiontype'] = restrictiontype!.id;
    }
    if (shapeform != null) {
      json['shapeform'] = shapeform!.id;
    }
    if (shapetype != null) {
      json['shapetype'] = shapetype!.id;
    }
    if (slotallocation != null) {
      json['slotallocation'] = slotallocation;
    }
    return json;
  }

  factory AbstractGeometryItem.fromJson(Map<String, dynamic> json) {
    return AbstractGeometryItem(
      arrowtype: json['arrowtype'],
      beginarrowdirection: json['beginarrowdirection'],
      beginslot: json['beginslot'],
      endarrowdirection: json['endarrowdirection'],
      endslot: json['endslot'],
      restrictiontype: json['restrictiontype'],
      shapeform: json['shapeform'],
      shapetype: json['shapetype'],
      slotallocation: json['slotallocation'],
    );
  }
}

class AbstractGeometry {
  EAnchorType? anchortype;
  EDriveSide? driveside;
  AbstractGeometryItemList? items;
  int? leftintermediateturns;
  int? rightintermediateturns;
  AbstractGeometry({
    this.anchortype,
    this.driveside,
    this.items,
    this.leftintermediateturns,
    this.rightintermediateturns,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (anchortype != null) {
      json['anchortype'] = anchortype!.id;
    }
    if (driveside != null) {
      json['driveside'] = driveside!.id;
    }
    if (items != null) {
      json['items'] = items;
    }
    if (leftintermediateturns != null) {
      json['leftintermediateturns'] = leftintermediateturns;
    }
    if (rightintermediateturns != null) {
      json['rightintermediateturns'] = rightintermediateturns;
    }
    return json;
  }

  factory AbstractGeometry.fromJson(Map<String, dynamic> json) {
    return AbstractGeometry(
      anchortype: json['anchortype'],
      driveside: json['driveside'],
      items: json['items'],
      leftintermediateturns: json['leftintermediateturns'],
      rightintermediateturns: json['rightintermediateturns'],
    );
  }
}

class TurnDetails extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  TurnDetails()
      : _id = -1,
        _mapId = -1;
  TurnDetails.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
  int getRoundaboutExitNumber() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "TurnDetails",
        'method': "getRoundaboutExitNumber",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  ETurnEvent getEvent() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "TurnDetails",
        'method': "getEvent",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return ETurnEventExtension.fromId(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  AbstractGeometry getAbstractGeometry() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "TurnDetails",
        'method': "getAbstractGeometry",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return AbstractGeometry.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  Uint8List getAbstractGeometryImage(int width, int height) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "TurnDetails",
        'method': "getAbstractGeometryImage",
        'args': XyType<int>(x: width, y: height)
      }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      throw (e.toString());
    }
  }

  static Future<TurnDetails> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "TurnDetails"}));
    final decodedVal = jsonDecode(resultString!);
    return TurnDetails.init(decodedVal['result'], mapId);
  }

  Future<void> dispose() async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectDestructor',
            jsonEncode({'class': "TurnDetails", 'id': _id}));
  }
}

class RoadInfo {
  String? roadname;
  ERoadShieldType? shieldtype;
  RoadInfo({
    this.roadname,
    this.shieldtype,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (roadname != null) {
      json['roadname'] = roadname;
    }
    if (shieldtype != null) {
      json['shieldtype'] = shieldtype!.id;
    }
    return json;
  }

  factory RoadInfo.fromJson(Map<String, dynamic> json) {
    return RoadInfo(
      roadname: json['roadname'],
      shieldtype: json['shieldtype'],
    );
  }
}

class SignpostItem {
  int? column;
  ESignpostConnectionInfo? connectioninfo;
  String? phoneme;
  ESignpostPictogramType? pictogramtype;
  int? row;
  ERoadShieldType? shieldtype;
  String? text;
  ESignpostItemType? type;
  SignpostItem({
    this.column,
    this.connectioninfo,
    this.phoneme,
    this.pictogramtype,
    this.row,
    this.shieldtype,
    this.text,
    this.type,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (column != null) {
      json['column'] = column;
    }
    if (connectioninfo != null) {
      json['connectioninfo'] = connectioninfo!.id;
    }
    if (phoneme != null) {
      json['phoneme'] = phoneme;
    }
    if (pictogramtype != null) {
      json['pictogramtype'] = pictogramtype!.id;
    }
    if (row != null) {
      json['row'] = row;
    }
    if (shieldtype != null) {
      json['shieldtype'] = shieldtype!.id;
    }
    if (text != null) {
      json['text'] = text;
    }
    if (type != null) {
      json['type'] = type!.id;
    }
    return json;
  }

  factory SignpostItem.fromJson(Map<String, dynamic> json) {
    return SignpostItem(
      column: json['column'],
      connectioninfo: json['connectioninfo'],
      phoneme: json['phoneme'],
      pictogramtype: json['pictogramtype'],
      row: json['row'],
      shieldtype: json['shieldtype'],
      text: json['text'],
      type: json['type'],
    );
  }
}

class SignpostDetails extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  SignpostDetails()
      : _id = -1,
        _mapId = -1;
  SignpostDetails.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;
// Future<SignpostItemList> getItems() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"SignpostDetails",
// 'method':"getItems",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return SignpostItemList.fromJson(decodedVal['result']);
// } catch (e) {
// throw (e.toString());
// }
// }
  bool hasBorderColor() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "SignpostDetails",
        'method': "hasBorderColor",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  Rgba getBorderColor() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "SignpostDetails",
        'method': "getBorderColor",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Rgba.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  bool hasTextColor() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "SignpostDetails",
        'method': "hasTextColor",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  Rgba getTextColor() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "SignpostDetails",
        'method': "getTextColor",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Rgba.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  bool hasBackgroundColor() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "SignpostDetails",
        'method': "hasBackgroundColor",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  Rgba getBackgroundColor() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "SignpostDetails",
        'method': "getBackgroundColor",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return Rgba.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

// Future<SignpostImage> getImage() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"SignpostDetails",
// 'method':"getImage",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return SignpostImage.fromJson(decodedVal['result']);
// } catch (e) {
// throw (e.toString());
// }
// }
  static Future<SignpostDetails> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>(
            'callObjectConstructor', jsonEncode({'class': "SignpostDetails"}));
    final decodedVal = jsonDecode(resultString!);
    return SignpostDetails.init(decodedVal['result'], mapId);
  }

  void dispose() {
    GemKitPlatform.instance
        .callDeleteObject(jsonEncode({'class': "SignpostDetails", 'id': _id}));
  }
}

class NavigationInstruction extends IGemEventHandler {
  int _id;
  int _mapId;
  int get id => _id;
  int get mapId => _mapId;
  NavigationInstruction()
      : _id = -1,
        _mapId = -1;
  NavigationInstruction.init(int id, int mapId)
      : _id = id,
        _mapId = mapId;

  SignpostDetails getSignpostDetails() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getSignpostDetails",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return SignpostDetails.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  String getSignpostInstruction() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getSignpostInstruction",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  TimeDistance getTimeDistanceToNextTurn() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getTimeDistanceToNextTurn",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  TimeDistance getRemainingTravelTimeDistance() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getRemainingTravelTimeDistance",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  TimeDistance getRemainingTravelTimeDistanceToNextWaypoint() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getRemainingTravelTimeDistanceToNextWaypoint",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  TimeDistance getTraveledTimeDistance() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getTraveledTimeDistance",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  int getNavigationStatus() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNavigationStatus",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  String getCurrentCountryCodeISO() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getCurrentCountryCodeISO",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  double getCurrentStreetSpeedLimit() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getCurrentStreetSpeedLimit",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  NextSpeedLimit getNextSpeedLimitVariation({int? checkDistance}) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextSpeedLimitVariation",
        'args': (checkDistance != null) ? checkDistance : {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return NextSpeedLimit.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  String getCurrentStreetName() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getCurrentStreetName",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

// Future<RoadInfoList> getCurrentRoadInformation() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"NavigationInstruction",
// 'method':"getCurrentRoadInformation",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RoadInfoList.init(decodedVal['result'],_mapId);
// } catch (e) {
// throw (e.toString());
// }
// }
  String getNextCountryCodeISO() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextCountryCodeISO",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  String getNextStreetName() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextStreetName",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

// Future<RoadInfoList> getNextRoadInformation() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"NavigationInstruction",
// 'method':"getNextRoadInformation",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RoadInfoList.init(decodedVal['result'],_mapId);
// } catch (e) {
// throw (e.toString());
// }
// }
  bool hasNextTurnInfo() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "hasNextTurnInfo",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  Uint8List getNextNextTurnImage(int width, int height) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextNextTurnImage",
        'args': XyType<int>(x: width, y: height)
      }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      throw (e.toString());
    }
  }

  Uint8List getNextTurnImage(int width, int height) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextTurnImage",
        'args': XyType<int>(x: width, y: height)
      }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      throw (e.toString());
    }
  }

  TurnDetails getNextTurnDetails() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextTurnDetails",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return TurnDetails.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  String getNextTurnInstruction() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextTurnInstruction",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  String getNextNextStreetName() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextNextStreetName",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  bool hasNextNextTurnInfo() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "hasNextNextTurnInfo",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

// Future<RoadInfoList> getNextNextRoadInformation() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"NavigationInstruction",
// 'method':"getNextNextRoadInformation",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RoadInfoList.init(decodedVal['result'],_mapId);
// } catch (e) {
// throw (e.toString());
// }
// }
// Future<Image> getNextNextTurnImage() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"NavigationInstruction",
// 'method':"getNextNextTurnImage",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return Image.init(decodedVal['result'],_mapId);
// } catch (e) {
// throw (e.toString());
// }
// }
  String getNextNextTurnInstruction() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextNextTurnInstruction",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

// Future<RoadInfoImage> getRoadInfoImage(RoadInfoList list) async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"NavigationInstruction",
// 'method':"getRoadInfoImage",
// 'args':list
//  }));
// final decodedVal = jsonDecode(resultString!);
// return RoadInfoImage.init(decodedVal['result'],_mapId);
// } catch (e) {
// throw (e.toString());
// }
// }
  Uint8List getLaneImage(int width, int height) {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getLaneImage",
        'args': XyType<int>(x: width, y: height)
      }));
      final decodedVal = jsonDecode(resultString!);
      return Uint8List.fromList(decodedVal['result'].cast<int>());
    } catch (e) {
      throw (e.toString());
    }
  }

  TurnDetails getNextNextTurnDetails() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getNextNextTurnDetails",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return TurnDetails.init(decodedVal['result'], _mapId);
    } catch (e) {
      throw (e.toString());
    }
  }

  TimeDistance getTimeDistanceToNextNextTurn() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getTimeDistanceToNextNextTurn",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return TimeDistance.fromJson(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

// Future<Position> getCurrentPosition() async {
// try {
// final resultString = await GemKitPlatform.instance
// .getChannel(mapId: _mapId)
// .invokeMethod<String>(
// 'callObjectMethod',
// jsonEncode({
// 'id':_id,
// 'class':"NavigationInstruction",
// 'method':"getCurrentPosition",
// 'args':{}
//  }));
// final decodedVal = jsonDecode(resultString!);
// return Position.fromJson(decodedVal['result']);
// } catch (e) {
// throw (e.toString());
// }
// }
  int getSegmentIndex() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getSegmentIndex",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  int getInstructionIndex() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getInstructionIndex",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return decodedVal['result'];
    } catch (e) {
      throw (e.toString());
    }
  }

  EDriveSide getDriveSide() {
    try {
      final resultString = GemKitPlatform.instance.callObjectMethod(jsonEncode({
        'id': _id,
        'class': "NavigationInstruction",
        'method': "getDriveSide",
        'args': {}
      }));
      final decodedVal = jsonDecode(resultString!);
      return EDriveSideExtension.fromId(decodedVal['result']);
    } catch (e) {
      throw (e.toString());
    }
  }

  static Future<NavigationInstruction> create(int mapId) async {
    final resultString = await GemKitPlatform.instance
        .getChannel(mapId: mapId)
        .invokeMethod<String>('callObjectConstructor',
            jsonEncode({'class': "NavigationInstruction"}));
    final decodedVal = jsonDecode(resultString!);
    return NavigationInstruction.init(decodedVal['result'], mapId);
  }

  void dispose() {
    GemKitPlatform.instance.callDeleteObject(
        jsonEncode({'class': "NavigationInstruction", 'id': _id}));
  }
}

class NextSpeedLimit {
  Coordinates? coords;
  int? distance;
  double? speed;
  NextSpeedLimit({
    this.coords,
    this.distance,
    this.speed,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (coords != null) {
      json['coords'] = coords;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (speed != null) {
      json['speed'] = speed;
    }
    return json;
  }

  factory NextSpeedLimit.fromJson(Map<String, dynamic> json) {
    return NextSpeedLimit(
      coords: json['coords'],
      distance: json['distance'],
      speed: json['speed'],
    );
  }
}
