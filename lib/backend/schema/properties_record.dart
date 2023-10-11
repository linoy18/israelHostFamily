import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesRecord extends FirestoreRecord {
  PropertiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "propertyName" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "propertyDescription" field.
  String? _propertyDescription;
  String get propertyDescription => _propertyDescription ?? '';
  bool hasPropertyDescription() => _propertyDescription != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  bool hasMainImage() => _mainImage != null;

  // "propertyAddress" field.
  String? _propertyAddress;
  String get propertyAddress => _propertyAddress ?? '';
  bool hasPropertyAddress() => _propertyAddress != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "propertyNeighborhood" field.
  String? _propertyNeighborhood;
  String get propertyNeighborhood => _propertyNeighborhood ?? '';
  bool hasPropertyNeighborhood() => _propertyNeighborhood != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "lastUpdated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "isLive" field.
  bool? _isLive;
  bool get isLive => _isLive ?? false;
  bool hasIsLive() => _isLive != null;

  // "minNights" field.
  int? _minNights;
  int get minNights => _minNights ?? 0;
  bool hasMinNights() => _minNights != null;

  // "bedsCount" field.
  int? _bedsCount;
  int get bedsCount => _bedsCount ?? 0;
  bool hasBedsCount() => _bedsCount != null;

  // "roomsCount" field.
  int? _roomsCount;
  int get roomsCount => _roomsCount ?? 0;
  bool hasRoomsCount() => _roomsCount != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "forFamily" field.
  bool? _forFamily;
  bool get forFamily => _forFamily ?? false;
  bool hasForFamily() => _forFamily != null;

  // "forCouple" field.
  bool? _forCouple;
  bool get forCouple => _forCouple ?? false;
  bool hasForCouple() => _forCouple != null;

  // "forOne" field.
  bool? _forOne;
  bool get forOne => _forOne ?? false;
  bool hasForOne() => _forOne != null;

  // "dogFriendly" field.
  bool? _dogFriendly;
  bool get dogFriendly => _dogFriendly ?? false;
  bool hasDogFriendly() => _dogFriendly != null;

  // "catFriendly" field.
  bool? _catFriendly;
  bool get catFriendly => _catFriendly ?? false;
  bool hasCatFriendly() => _catFriendly != null;

  // "babyCrib" field.
  bool? _babyCrib;
  bool get babyCrib => _babyCrib ?? false;
  bool hasBabyCrib() => _babyCrib != null;

  // "accessibility" field.
  bool? _accessibility;
  bool get accessibility => _accessibility ?? false;
  bool hasAccessibility() => _accessibility != null;

  // "familyKeepShabbat" field.
  bool? _familyKeepShabbat;
  bool get familyKeepShabbat => _familyKeepShabbat ?? false;
  bool hasFamilyKeepShabbat() => _familyKeepShabbat != null;

  // "familyKeepKosher" field.
  bool? _familyKeepKosher;
  bool get familyKeepKosher => _familyKeepKosher ?? false;
  bool hasFamilyKeepKosher() => _familyKeepKosher != null;

  // "secureDoor" field.
  bool? _secureDoor;
  bool get secureDoor => _secureDoor ?? false;
  bool hasSecureDoor() => _secureDoor != null;

  // "hostName" field.
  String? _hostName;
  String get hostName => _hostName ?? '';
  bool hasHostName() => _hostName != null;

  // "emptyHouse" field.
  bool? _emptyHouse;
  bool get emptyHouse => _emptyHouse ?? false;
  bool hasEmptyHouse() => _emptyHouse != null;

  // "hostEmail" field.
  String? _hostEmail;
  String get hostEmail => _hostEmail ?? '';
  bool hasHostEmail() => _hostEmail != null;

  // "hostInsatgram" field.
  String? _hostInsatgram;
  String get hostInsatgram => _hostInsatgram ?? '';
  bool hasHostInsatgram() => _hostInsatgram != null;

  // "hostBio" field.
  String? _hostBio;
  String get hostBio => _hostBio ?? '';
  bool hasHostBio() => _hostBio != null;

  // "hostProfileImge" field.
  String? _hostProfileImge;
  String get hostProfileImge => _hostProfileImge ?? '';
  bool hasHostProfileImge() => _hostProfileImge != null;

  void _initializeFields() {
    _propertyName = snapshotData['propertyName'] as String?;
    _propertyDescription = snapshotData['propertyDescription'] as String?;
    _mainImage = snapshotData['mainImage'] as String?;
    _propertyAddress = snapshotData['propertyAddress'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _propertyNeighborhood = snapshotData['propertyNeighborhood'] as String?;
    _notes = snapshotData['notes'] as String?;
    _lastUpdated = snapshotData['lastUpdated'] as DateTime?;
    _isLive = snapshotData['isLive'] as bool?;
    _minNights = castToType<int>(snapshotData['minNights']);
    _bedsCount = castToType<int>(snapshotData['bedsCount']);
    _roomsCount = castToType<int>(snapshotData['roomsCount']);
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _forFamily = snapshotData['forFamily'] as bool?;
    _forCouple = snapshotData['forCouple'] as bool?;
    _forOne = snapshotData['forOne'] as bool?;
    _dogFriendly = snapshotData['dogFriendly'] as bool?;
    _catFriendly = snapshotData['catFriendly'] as bool?;
    _babyCrib = snapshotData['babyCrib'] as bool?;
    _accessibility = snapshotData['accessibility'] as bool?;
    _familyKeepShabbat = snapshotData['familyKeepShabbat'] as bool?;
    _familyKeepKosher = snapshotData['familyKeepKosher'] as bool?;
    _secureDoor = snapshotData['secureDoor'] as bool?;
    _hostName = snapshotData['hostName'] as String?;
    _emptyHouse = snapshotData['emptyHouse'] as bool?;
    _hostEmail = snapshotData['hostEmail'] as String?;
    _hostInsatgram = snapshotData['hostInsatgram'] as String?;
    _hostBio = snapshotData['hostBio'] as String?;
    _hostProfileImge = snapshotData['hostProfileImge'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertiesRecord.fromSnapshot(s));

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertiesRecord.fromSnapshot(s));

  static PropertiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertiesRecordData({
  String? propertyName,
  String? propertyDescription,
  String? mainImage,
  String? propertyAddress,
  DocumentReference? userRef,
  String? propertyNeighborhood,
  String? notes,
  DateTime? lastUpdated,
  bool? isLive,
  int? minNights,
  int? bedsCount,
  int? roomsCount,
  String? phoneNumber,
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
  String? hostName,
  bool? emptyHouse,
  String? hostEmail,
  String? hostInsatgram,
  String? hostBio,
  String? hostProfileImge,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'propertyName': propertyName,
      'propertyDescription': propertyDescription,
      'mainImage': mainImage,
      'propertyAddress': propertyAddress,
      'userRef': userRef,
      'propertyNeighborhood': propertyNeighborhood,
      'notes': notes,
      'lastUpdated': lastUpdated,
      'isLive': isLive,
      'minNights': minNights,
      'bedsCount': bedsCount,
      'roomsCount': roomsCount,
      'phoneNumber': phoneNumber,
      'forFamily': forFamily,
      'forCouple': forCouple,
      'forOne': forOne,
      'dogFriendly': dogFriendly,
      'catFriendly': catFriendly,
      'babyCrib': babyCrib,
      'accessibility': accessibility,
      'familyKeepShabbat': familyKeepShabbat,
      'familyKeepKosher': familyKeepKosher,
      'secureDoor': secureDoor,
      'hostName': hostName,
      'emptyHouse': emptyHouse,
      'hostEmail': hostEmail,
      'hostInsatgram': hostInsatgram,
      'hostBio': hostBio,
      'hostProfileImge': hostProfileImge,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertiesRecordDocumentEquality implements Equality<PropertiesRecord> {
  const PropertiesRecordDocumentEquality();

  @override
  bool equals(PropertiesRecord? e1, PropertiesRecord? e2) {
    return e1?.propertyName == e2?.propertyName &&
        e1?.propertyDescription == e2?.propertyDescription &&
        e1?.mainImage == e2?.mainImage &&
        e1?.propertyAddress == e2?.propertyAddress &&
        e1?.userRef == e2?.userRef &&
        e1?.propertyNeighborhood == e2?.propertyNeighborhood &&
        e1?.notes == e2?.notes &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.isLive == e2?.isLive &&
        e1?.minNights == e2?.minNights &&
        e1?.bedsCount == e2?.bedsCount &&
        e1?.roomsCount == e2?.roomsCount &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.forFamily == e2?.forFamily &&
        e1?.forCouple == e2?.forCouple &&
        e1?.forOne == e2?.forOne &&
        e1?.dogFriendly == e2?.dogFriendly &&
        e1?.catFriendly == e2?.catFriendly &&
        e1?.babyCrib == e2?.babyCrib &&
        e1?.accessibility == e2?.accessibility &&
        e1?.familyKeepShabbat == e2?.familyKeepShabbat &&
        e1?.familyKeepKosher == e2?.familyKeepKosher &&
        e1?.secureDoor == e2?.secureDoor &&
        e1?.hostName == e2?.hostName &&
        e1?.emptyHouse == e2?.emptyHouse &&
        e1?.hostEmail == e2?.hostEmail &&
        e1?.hostInsatgram == e2?.hostInsatgram &&
        e1?.hostBio == e2?.hostBio &&
        e1?.hostProfileImge == e2?.hostProfileImge;
  }

  @override
  int hash(PropertiesRecord? e) => const ListEquality().hash([
        e?.propertyName,
        e?.propertyDescription,
        e?.mainImage,
        e?.propertyAddress,
        e?.userRef,
        e?.propertyNeighborhood,
        e?.notes,
        e?.lastUpdated,
        e?.isLive,
        e?.minNights,
        e?.bedsCount,
        e?.roomsCount,
        e?.phoneNumber,
        e?.forFamily,
        e?.forCouple,
        e?.forOne,
        e?.dogFriendly,
        e?.catFriendly,
        e?.babyCrib,
        e?.accessibility,
        e?.familyKeepShabbat,
        e?.familyKeepKosher,
        e?.secureDoor,
        e?.hostName,
        e?.emptyHouse,
        e?.hostEmail,
        e?.hostInsatgram,
        e?.hostBio,
        e?.hostProfileImge
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertiesRecord;
}
