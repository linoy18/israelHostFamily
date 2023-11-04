// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesStruct extends FFFirebaseStruct {
  PropertiesStruct({
    DocumentReference? propertyRef,
    bool? forFamily,
    bool? forCouple,
    bool? forOne,
    bool? dogFriendly,
    bool? catFriendly,
    bool? babyCrib,
    bool? accessibility,
    bool? familyKeepShabbat,
    bool? familyKeepKosher,
    bool? secureDoor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _propertyRef = propertyRef,
        _forFamily = forFamily,
        _forCouple = forCouple,
        _forOne = forOne,
        _dogFriendly = dogFriendly,
        _catFriendly = catFriendly,
        _babyCrib = babyCrib,
        _accessibility = accessibility,
        _familyKeepShabbat = familyKeepShabbat,
        _familyKeepKosher = familyKeepKosher,
        _secureDoor = secureDoor,
        super(firestoreUtilData);

  // "propertyRef" field.
  DocumentReference? _propertyRef;
  DocumentReference? get propertyRef => _propertyRef;
  set propertyRef(DocumentReference? val) => _propertyRef = val;
  bool hasPropertyRef() => _propertyRef != null;

  // "forFamily" field.
  bool? _forFamily;
  bool get forFamily => _forFamily ?? false;
  set forFamily(bool? val) => _forFamily = val;
  bool hasForFamily() => _forFamily != null;

  // "forCouple" field.
  bool? _forCouple;
  bool get forCouple => _forCouple ?? false;
  set forCouple(bool? val) => _forCouple = val;
  bool hasForCouple() => _forCouple != null;

  // "forOne" field.
  bool? _forOne;
  bool get forOne => _forOne ?? false;
  set forOne(bool? val) => _forOne = val;
  bool hasForOne() => _forOne != null;

  // "dogFriendly" field.
  bool? _dogFriendly;
  bool get dogFriendly => _dogFriendly ?? false;
  set dogFriendly(bool? val) => _dogFriendly = val;
  bool hasDogFriendly() => _dogFriendly != null;

  // "catFriendly" field.
  bool? _catFriendly;
  bool get catFriendly => _catFriendly ?? false;
  set catFriendly(bool? val) => _catFriendly = val;
  bool hasCatFriendly() => _catFriendly != null;

  // "babyCrib" field.
  bool? _babyCrib;
  bool get babyCrib => _babyCrib ?? false;
  set babyCrib(bool? val) => _babyCrib = val;
  bool hasBabyCrib() => _babyCrib != null;

  // "accessibility" field.
  bool? _accessibility;
  bool get accessibility => _accessibility ?? false;
  set accessibility(bool? val) => _accessibility = val;
  bool hasAccessibility() => _accessibility != null;

  // "familyKeepShabbat" field.
  bool? _familyKeepShabbat;
  bool get familyKeepShabbat => _familyKeepShabbat ?? false;
  set familyKeepShabbat(bool? val) => _familyKeepShabbat = val;
  bool hasFamilyKeepShabbat() => _familyKeepShabbat != null;

  // "familyKeepKosher" field.
  bool? _familyKeepKosher;
  bool get familyKeepKosher => _familyKeepKosher ?? false;
  set familyKeepKosher(bool? val) => _familyKeepKosher = val;
  bool hasFamilyKeepKosher() => _familyKeepKosher != null;

  // "secureDoor" field.
  bool? _secureDoor;
  bool get secureDoor => _secureDoor ?? false;
  set secureDoor(bool? val) => _secureDoor = val;
  bool hasSecureDoor() => _secureDoor != null;

  static PropertiesStruct fromMap(Map<String, dynamic> data) =>
      PropertiesStruct(
        propertyRef: data['propertyRef'] as DocumentReference?,
        forFamily: data['forFamily'] as bool?,
        forCouple: data['forCouple'] as bool?,
        forOne: data['forOne'] as bool?,
        dogFriendly: data['dogFriendly'] as bool?,
        catFriendly: data['catFriendly'] as bool?,
        babyCrib: data['babyCrib'] as bool?,
        accessibility: data['accessibility'] as bool?,
        familyKeepShabbat: data['familyKeepShabbat'] as bool?,
        familyKeepKosher: data['familyKeepKosher'] as bool?,
        secureDoor: data['secureDoor'] as bool?,
      );

  static PropertiesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PropertiesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'propertyRef': _propertyRef,
        'forFamily': _forFamily,
        'forCouple': _forCouple,
        'forOne': _forOne,
        'dogFriendly': _dogFriendly,
        'catFriendly': _catFriendly,
        'babyCrib': _babyCrib,
        'accessibility': _accessibility,
        'familyKeepShabbat': _familyKeepShabbat,
        'familyKeepKosher': _familyKeepKosher,
        'secureDoor': _secureDoor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'propertyRef': serializeParam(
          _propertyRef,
          ParamType.DocumentReference,
        ),
        'forFamily': serializeParam(
          _forFamily,
          ParamType.bool,
        ),
        'forCouple': serializeParam(
          _forCouple,
          ParamType.bool,
        ),
        'forOne': serializeParam(
          _forOne,
          ParamType.bool,
        ),
        'dogFriendly': serializeParam(
          _dogFriendly,
          ParamType.bool,
        ),
        'catFriendly': serializeParam(
          _catFriendly,
          ParamType.bool,
        ),
        'babyCrib': serializeParam(
          _babyCrib,
          ParamType.bool,
        ),
        'accessibility': serializeParam(
          _accessibility,
          ParamType.bool,
        ),
        'familyKeepShabbat': serializeParam(
          _familyKeepShabbat,
          ParamType.bool,
        ),
        'familyKeepKosher': serializeParam(
          _familyKeepKosher,
          ParamType.bool,
        ),
        'secureDoor': serializeParam(
          _secureDoor,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PropertiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertiesStruct(
        propertyRef: deserializeParam(
          data['propertyRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['properties'],
        ),
        forFamily: deserializeParam(
          data['forFamily'],
          ParamType.bool,
          false,
        ),
        forCouple: deserializeParam(
          data['forCouple'],
          ParamType.bool,
          false,
        ),
        forOne: deserializeParam(
          data['forOne'],
          ParamType.bool,
          false,
        ),
        dogFriendly: deserializeParam(
          data['dogFriendly'],
          ParamType.bool,
          false,
        ),
        catFriendly: deserializeParam(
          data['catFriendly'],
          ParamType.bool,
          false,
        ),
        babyCrib: deserializeParam(
          data['babyCrib'],
          ParamType.bool,
          false,
        ),
        accessibility: deserializeParam(
          data['accessibility'],
          ParamType.bool,
          false,
        ),
        familyKeepShabbat: deserializeParam(
          data['familyKeepShabbat'],
          ParamType.bool,
          false,
        ),
        familyKeepKosher: deserializeParam(
          data['familyKeepKosher'],
          ParamType.bool,
          false,
        ),
        secureDoor: deserializeParam(
          data['secureDoor'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PropertiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PropertiesStruct &&
        propertyRef == other.propertyRef &&
        forFamily == other.forFamily &&
        forCouple == other.forCouple &&
        forOne == other.forOne &&
        dogFriendly == other.dogFriendly &&
        catFriendly == other.catFriendly &&
        babyCrib == other.babyCrib &&
        accessibility == other.accessibility &&
        familyKeepShabbat == other.familyKeepShabbat &&
        familyKeepKosher == other.familyKeepKosher &&
        secureDoor == other.secureDoor;
  }

  @override
  int get hashCode => const ListEquality().hash([
        propertyRef,
        forFamily,
        forCouple,
        forOne,
        dogFriendly,
        catFriendly,
        babyCrib,
        accessibility,
        familyKeepShabbat,
        familyKeepKosher,
        secureDoor
      ]);
}

PropertiesStruct createPropertiesStruct({
  DocumentReference? propertyRef,
  bool? forFamily,
  bool? forCouple,
  bool? forOne,
  bool? dogFriendly,
  bool? catFriendly,
  bool? babyCrib,
  bool? accessibility,
  bool? familyKeepShabbat,
  bool? familyKeepKosher,
  bool? secureDoor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PropertiesStruct(
      propertyRef: propertyRef,
      forFamily: forFamily,
      forCouple: forCouple,
      forOne: forOne,
      dogFriendly: dogFriendly,
      catFriendly: catFriendly,
      babyCrib: babyCrib,
      accessibility: accessibility,
      familyKeepShabbat: familyKeepShabbat,
      familyKeepKosher: familyKeepKosher,
      secureDoor: secureDoor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PropertiesStruct? updatePropertiesStruct(
  PropertiesStruct? properties, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    properties
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPropertiesStructData(
  Map<String, dynamic> firestoreData,
  PropertiesStruct? properties,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (properties == null) {
    return;
  }
  if (properties.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && properties.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final propertiesData = getPropertiesFirestoreData(properties, forFieldValue);
  final nestedData = propertiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = properties.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPropertiesFirestoreData(
  PropertiesStruct? properties, [
  bool forFieldValue = false,
]) {
  if (properties == null) {
    return {};
  }
  final firestoreData = mapToFirestore(properties.toMap());

  // Add any Firestore field values
  properties.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPropertiesListFirestoreData(
  List<PropertiesStruct>? propertiess,
) =>
    propertiess?.map((e) => getPropertiesFirestoreData(e, true)).toList() ?? [];
