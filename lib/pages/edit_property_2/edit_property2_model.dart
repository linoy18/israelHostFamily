import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_property2_widget.dart' show EditProperty2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProperty2Model extends FlutterFlowModel<EditProperty2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for family widget.
  bool? familyValue;
  // State field(s) for couple widget.
  bool? coupleValue;
  // State field(s) for person widget.
  bool? personValue;
  // State field(s) for secureDoor widget.
  bool? secureDoorValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel1;
  // State field(s) for cat widget.
  bool? catValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel2;
  // State field(s) for babyCrib widget.
  bool? babyCribValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel3;
  // State field(s) for dog widget.
  bool? dogValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel4;
  // State field(s) for accessibility widget.
  bool? accessibilityValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel5;
  // State field(s) for familyShabbat widget.
  bool? familyShabbatValue;
  // Model for amenitityIndicator component.
  late AmenitityIndicatorModel amenitityIndicatorModel6;
  // State field(s) for familyKosher widget.
  bool? familyKosherValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    amenitityIndicatorModel1 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel2 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel3 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel4 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel5 =
        createModel(context, () => AmenitityIndicatorModel());
    amenitityIndicatorModel6 =
        createModel(context, () => AmenitityIndicatorModel());
  }

  void dispose() {
    amenitityIndicatorModel1.dispose();
    amenitityIndicatorModel2.dispose();
    amenitityIndicatorModel3.dispose();
    amenitityIndicatorModel4.dispose();
    amenitityIndicatorModel5.dispose();
    amenitityIndicatorModel6.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
