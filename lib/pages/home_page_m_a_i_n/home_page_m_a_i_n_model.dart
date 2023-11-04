import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_m_a_i_n_widget.dart' show HomePageMAINWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HomePageMAINModel extends FlutterFlowModel<HomePageMAINWidget> {
  ///  Local state fields for this page.

  String? selectedArea;

  List<String> selectedProperties = [];
  void addToSelectedProperties(String item) => selectedProperties.add(item);
  void removeFromSelectedProperties(String item) =>
      selectedProperties.remove(item);
  void removeAtIndexFromSelectedProperties(int index) =>
      selectedProperties.removeAt(index);
  void insertAtIndexInSelectedProperties(int index, String item) =>
      selectedProperties.insert(index, item);
  void updateSelectedPropertiesAtIndex(int index, Function(String) updateFn) =>
      selectedProperties[index] = updateFn(selectedProperties[index]);

  List<String> selectedAreas = [];
  void addToSelectedAreas(String item) => selectedAreas.add(item);
  void removeFromSelectedAreas(String item) => selectedAreas.remove(item);
  void removeAtIndexFromSelectedAreas(int index) =>
      selectedAreas.removeAt(index);
  void insertAtIndexInSelectedAreas(int index, String item) =>
      selectedAreas.insert(index, item);
  void updateSelectedAreasAtIndex(int index, Function(String) updateFn) =>
      selectedAreas[index] = updateFn(selectedAreas[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for areaDropDown widget.
  List<String>? areaDropDownValue;
  FormFieldController<String>? areaDropDownValueController;
  // State field(s) for propDropDown widget.
  List<String>? propDropDownValue;
  FormFieldController<String>? propDropDownValueController;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, PropertiesRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    listViewPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<DocumentSnapshot?, PropertiesRecord> setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, PropertiesRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, PropertiesRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryPropertiesRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 15,
          isStream: false,
        ),
      );
  }
}
