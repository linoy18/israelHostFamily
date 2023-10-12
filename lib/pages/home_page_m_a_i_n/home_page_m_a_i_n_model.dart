import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_m_a_i_n_widget.dart' show HomePageMAINWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class HomePageMAINModel extends FlutterFlowModel<HomePageMAINWidget> {
  ///  Local state fields for this page.

  String filterByArea = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTerm widget.
  TextEditingController? searchTermController;
  String? Function(BuildContext, String?)? searchTermControllerValidator;
  List<PropertiesRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    searchTermController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
