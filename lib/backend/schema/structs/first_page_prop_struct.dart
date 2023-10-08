// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FirstPagePropStruct extends FFFirebaseStruct {
  FirstPagePropStruct({
    String? description,
    String? name,
    String? address,
    String? neighborhood,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _description = description,
        _name = name,
        _address = address,
        _neighborhood = neighborhood,
        super(firestoreUtilData);

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "neighborhood" field.
  String? _neighborhood;
  String get neighborhood => _neighborhood ?? '';
  set neighborhood(String? val) => _neighborhood = val;
  bool hasNeighborhood() => _neighborhood != null;

  static FirstPagePropStruct fromMap(Map<String, dynamic> data) =>
      FirstPagePropStruct(
        description: data['description'] as String?,
        name: data['name'] as String?,
        address: data['address'] as String?,
        neighborhood: data['neighborhood'] as String?,
      );

  static FirstPagePropStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? FirstPagePropStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'name': _name,
        'address': _address,
        'neighborhood': _neighborhood,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'neighborhood': serializeParam(
          _neighborhood,
          ParamType.String,
        ),
      }.withoutNulls;

  static FirstPagePropStruct fromSerializableMap(Map<String, dynamic> data) =>
      FirstPagePropStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        neighborhood: deserializeParam(
          data['neighborhood'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FirstPagePropStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FirstPagePropStruct &&
        description == other.description &&
        name == other.name &&
        address == other.address &&
        neighborhood == other.neighborhood;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([description, name, address, neighborhood]);
}

FirstPagePropStruct createFirstPagePropStruct({
  String? description,
  String? name,
  String? address,
  String? neighborhood,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FirstPagePropStruct(
      description: description,
      name: name,
      address: address,
      neighborhood: neighborhood,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FirstPagePropStruct? updateFirstPagePropStruct(
  FirstPagePropStruct? firstPageProp, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    firstPageProp
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFirstPagePropStructData(
  Map<String, dynamic> firestoreData,
  FirstPagePropStruct? firstPageProp,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (firstPageProp == null) {
    return;
  }
  if (firstPageProp.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && firstPageProp.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final firstPagePropData =
      getFirstPagePropFirestoreData(firstPageProp, forFieldValue);
  final nestedData =
      firstPagePropData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = firstPageProp.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFirstPagePropFirestoreData(
  FirstPagePropStruct? firstPageProp, [
  bool forFieldValue = false,
]) {
  if (firstPageProp == null) {
    return {};
  }
  final firestoreData = mapToFirestore(firstPageProp.toMap());

  // Add any Firestore field values
  firstPageProp.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFirstPagePropListFirestoreData(
  List<FirstPagePropStruct>? firstPageProps,
) =>
    firstPageProps
        ?.map((e) => getFirstPagePropFirestoreData(e, true))
        .toList() ??
    [];
