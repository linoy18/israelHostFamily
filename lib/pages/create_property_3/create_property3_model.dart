import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'create_property3_widget.dart' show CreateProperty3Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProperty3Model extends FlutterFlowModel<CreateProperty3Widget> {
  ///  Local state fields for this page.

  bool isLimitDays = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for countBeds widget.
  int? countBedsValue;
  // State field(s) for countRooms widget.
  int? countRoomsValue;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for hostName widget.
  FocusNode? hostNameFocusNode;
  TextEditingController? hostNameController;
  String? Function(BuildContext, String?)? hostNameControllerValidator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesController;
  String? Function(BuildContext, String?)? notesControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    phoneFocusNode?.dispose();
    phoneController?.dispose();

    hostNameFocusNode?.dispose();
    hostNameController?.dispose();

    notesFocusNode?.dispose();
    notesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
