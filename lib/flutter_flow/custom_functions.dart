import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? checkIfProps(
  List<String> dropDownProp,
  List<String> dbProps,
) {
  return dbProps.any((dbString) => dropDownProp.contains(dbString));
}

bool? checkDropDowns(
  List<String>? dropDownArea,
  List<String> dropDownProp,
  String areaString,
  List<String> dbProps,
) {
  bool areaCondition = dropDownArea != null && dropDownArea == areaString;
  bool propCondition =
      dbProps.any((dbString) => dropDownProp.contains(dbString));

  if (dropDownArea != null && dropDownProp.isNotEmpty) {
    return areaCondition && propCondition;
  } else if (dropDownArea != null) {
    return areaCondition;
  } else if (dropDownProp.isNotEmpty) {
    return propCondition;
  }

  return false;
}

List<String>? parseBoolPropToList(
  bool? family,
  bool? couple,
  bool? one,
  bool? secureDoor,
  bool? dog,
  bool? cat,
  bool? babyCrib,
  bool? accessibility,
  bool? keepShabbat,
  bool? keepKosher,
  bool? emptyHouse,
) {
// Define the mapping from string to their respective boolean values
  Map<String, bool> mapping = {
    'מתאים למשפחה': family ?? false,
    'מתאים לזוג': couple ?? false,
    'מתאים ליחיד': one ?? false,
    'ממ"ד': secureDoor ?? false,
    'ידידותי לכלבים': dog ?? false,
    'ידידותי לחתולים': cat ?? false,
    'מיטת תינוק': babyCrib ?? false,
    'מקום נגיש': accessibility ?? false,
    'בית שומר שבת': keepShabbat ?? false,
    'בית שומר כשרות': keepKosher ?? false,
    'בית ריק': emptyHouse ?? false,
  };

  // Filter out the strings with false values
  return mapping.entries
      .where((entry) => entry.value)
      .map((entry) => entry.key)
      .toList();
}
