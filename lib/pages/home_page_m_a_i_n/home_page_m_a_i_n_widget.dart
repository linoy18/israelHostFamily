import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'home_page_m_a_i_n_model.dart';
export 'home_page_m_a_i_n_model.dart';

class HomePageMAINWidget extends StatefulWidget {
  const HomePageMAINWidget({Key? key}) : super(key: key);

  @override
  _HomePageMAINWidgetState createState() => _HomePageMAINWidgetState();
}

class _HomePageMAINWidgetState extends State<HomePageMAINWidget> {
  late HomePageMAINModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageMAINModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'homePage_MAIN'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x39000000),
                        offset: Offset(0.0, 2.0),
                      )
                    ],
                  ),
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.00, 0.00),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(-0.00, 0.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30.0, 40.0, 30.0, 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 5.0, 0.0),
                                                  child: Image.asset(
                                                    'assets/images/___(3).png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.2,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'ברוכים הבאים',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'מחבקים את תושבי החזית ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    10.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                                'createProperty_1');
                                                          },
                                                          text:
                                                              'הוספת מקום אירוח',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 200.0,
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFF0660A8),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'סנן לפי איזור ',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2.0, 2.0, 2.0, 2.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .areaDropDownValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          'רמת הגולן',
                                          'הגליל העליון',
                                          'הגליל התחתון',
                                          'בקעת הירדן',
                                          'עמק יזרעאל',
                                          'חיפה והקריות',
                                          'מישור החוף',
                                          'השרון',
                                          'תל אביב וגוש דן',
                                          'איזור ירושלים',
                                          'השפלה',
                                          'הנגב',
                                          'ים המלח',
                                          'הערבה',
                                          'אילת'
                                        ],
                                        onChanged: null,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.6,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              lineHeight: 1.2,
                                            ),
                                        hintText: ' איזור',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 40.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: true,
                                        onChangedForMultiSelect: (val) async {
                                          setState(() =>
                                              _model.areaDropDownValue = val);
                                          setState(() {
                                            _model.selectedAreas = _model
                                                .areaDropDownValue!
                                                .toList()
                                                .cast<String>();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'סנן לפי מאפיין ',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2.0, 2.0, 2.0, 2.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .propDropDownValueController ??=
                                            FormFieldController<String>(null),
                                        options: [
                                          'מתאים למשפחה',
                                          'מתאים לזוג',
                                          'מתאים ליחיד',
                                          'מקום נגיש',
                                          'ממ\"ד',
                                          'ידידותי לכלבים',
                                          'ידידותי לחתולים',
                                          'בית ריק',
                                          'מיטת תינוק',
                                          'בית שומר כשרות',
                                          'בית שומר שבת'
                                        ],
                                        onChanged: null,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.6,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              lineHeight: 1.2,
                                            ),
                                        hintText: 'מאפיינים',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 40.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: true,
                                        onChangedForMultiSelect: (val) async {
                                          setState(() =>
                                              _model.propDropDownValue = val);
                                          setState(() {
                                            _model.selectedProperties = _model
                                                .propDropDownValue!
                                                .toList()
                                                .cast<String>();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child:
                  PagedListView<DocumentSnapshot<Object?>?, PropertiesRecord>(
                pagingController: _model.setListViewController(
                  PropertiesRecord.collection
                      .where(
                        'isLive',
                        isEqualTo: true,
                      )
                      .whereIn(
                          'propertyNeighborhood',
                          (List<String> selectedAreas) {
                                    return selectedAreas.isEmpty
                                        ? null
                                        : selectedAreas;
                                  }(_model.selectedAreas.toList()) !=
                                  ''
                              ? (List<String> selectedAreas) {
                                  return selectedAreas.isEmpty
                                      ? null
                                      : selectedAreas;
                                }(_model.selectedAreas.toList())
                              : null)
                      .where(
                        'forFamily',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('מתאים למשפחה')),
                      )
                      .where(
                        'forCouple',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('מתאים לזוג')),
                      )
                      .where(
                        'forOne',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('מתאים ליחיד')),
                      )
                      .where(
                        'dogFriendly',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('ידידותי לכלבים')),
                      )
                      .where(
                        'catFriendly',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties
                            .contains('ידידותי לחתולים')),
                      )
                      .where(
                        'babyCrib',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('מיטת תינוק')),
                      )
                      .where(
                        'accessibility',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('מקום נגיש')),
                      )
                      .where(
                        'familyKeepKosher',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('בית שומר כשרות')),
                      )
                      .where(
                        'familyKeepShabbat',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('בית שומר שבת')),
                      )
                      .where(
                        'secureDoor',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('ממ\"ד')),
                      )
                      .where(
                        'emptyHouse',
                        isEqualTo: (bool value) {
                          return value ? true : null;
                        }(_model.selectedProperties.contains('בית ריק')),
                      )
                      .orderBy('lastUpdated', descending: true),
                ),
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                reverse: false,
                scrollDirection: Axis.vertical,
                builderDelegate: PagedChildBuilderDelegate<PropertiesRecord>(
                  // Customize what your widget looks like when it's loading the first page.
                  firstPageProgressIndicatorBuilder: (_) => Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  ),
                  // Customize what your widget looks like when it's loading another page.
                  newPageProgressIndicatorBuilder: (_) => Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  ),
                  noItemsFoundIndicatorBuilder: (_) => Center(
                    child: Image.asset(
                      getCORSProxyUrl(
                        '',
                      ),
                    ),
                  ),
                  itemBuilder: (context, _, listViewIndex) {
                    final listViewPropertiesRecord = _model
                        .listViewPagingController!.itemList![listViewIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'propertyDetails',
                              queryParameters: {
                                'propertyRef': serializeParam(
                                  listViewPropertiesRecord,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'propertyRef': listViewPropertiesRecord,
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (listViewPropertiesRecord.mainImage != null &&
                                  listViewPropertiesRecord.mainImage != '')
                                Hero(
                                  tag: listViewPropertiesRecord.mainImage,
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                    ),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          Duration(milliseconds: 500),
                                      imageUrl: getCORSProxyUrl(
                                        listViewPropertiesRecord.mainImage,
                                      ),
                                      width: double.infinity,
                                      height: 190.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        listViewPropertiesRecord.propertyName
                                            .maybeHandleOverflow(
                                          maxChars: 36,
                                          replacement: '…',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        listViewPropertiesRecord
                                            .propertyNeighborhood
                                            .maybeHandleOverflow(
                                          maxChars: 90,
                                          replacement: '…',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
