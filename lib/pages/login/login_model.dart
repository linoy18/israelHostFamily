import '/auth/firebase_auth/auth_util.dart';
import '/components/google_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Model for google component.
  late GoogleModel googleModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    googleModel = createModel(context, () => GoogleModel());
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
    googleModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
