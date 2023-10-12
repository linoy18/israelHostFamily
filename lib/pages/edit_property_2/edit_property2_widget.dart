import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_property2_model.dart';
export 'edit_property2_model.dart';

class EditProperty2Widget extends StatefulWidget {
  const EditProperty2Widget({
    Key? key,
    this.propertyRef,
  }) : super(key: key);

  final PropertiesRecord? propertyRef;

  @override
  _EditProperty2WidgetState createState() => _EditProperty2WidgetState();
}

class _EditProperty2WidgetState extends State<EditProperty2Widget> {
  late EditProperty2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProperty2Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'editProperty_2'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'עריכת מקום האירוח',
          style: FlutterFlowTheme.of(context).headlineSmall,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel1,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.family_restroom,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.familyValue ??=
                                    widget.propertyRef!.forFamily,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.familyValue = newValue!);
                                },
                                title: Text(
                                  'מתאים למשפחה',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel2,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.group_sharp,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.coupleValue ??=
                                    widget.propertyRef!.forCouple,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.coupleValue = newValue!);
                                },
                                title: Text(
                                  'מתאים לזוג',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel3,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.person_sharp,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.personValue ??=
                                    widget.propertyRef!.forOne,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.personValue = newValue!);
                                },
                                title: Text(
                                  'מתאים לבודד',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel4,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.sensor_door_sharp,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.secureDoorValue ??=
                                    widget.propertyRef!.secureDoor,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.secureDoorValue = newValue!);
                                },
                                title: Text(
                                  'ממ\"ד',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel5,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.cat,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.catValue ??=
                                    widget.propertyRef!.catFriendly,
                                onChanged: (newValue) async {
                                  setState(() => _model.catValue = newValue!);
                                },
                                title: Text(
                                  'ידידותי לחתולים',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel6,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.babyCarriage,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.babyCribValue ??=
                                    widget.propertyRef!.babyCrib,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.babyCribValue = newValue!);
                                },
                                title: Text(
                                  'מיטת תינוק',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel7,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.paw,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.dogValue ??=
                                    widget.propertyRef!.dogFriendly,
                                onChanged: (newValue) async {
                                  setState(() => _model.dogValue = newValue!);
                                },
                                title: Text(
                                  'ידידותי לכלבים',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel8,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.accessible,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.accessibilityValue ??=
                                    widget.propertyRef!.accessibility,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.accessibilityValue = newValue!);
                                },
                                title: Text(
                                  'נגישות (מעלית/כניסה שטוחה)',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel9,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.synagogue,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.familyShabbatValue ??=
                                    widget.propertyRef!.familyKeepShabbat,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.familyShabbatValue = newValue!);
                                },
                                title: Text(
                                  'משפחה שומרת שבת',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel10,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.food_bank_sharp,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.familyKosherValue ??=
                                    widget.propertyRef!.familyKeepKosher,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.familyKosherValue = newValue!);
                                },
                                title: Text(
                                  'משפחה שומרת כשרות',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel11,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.home,
                                    color: FlutterFlowTheme.of(context).gray600,
                                  ),
                                  background:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderColor: Color(0xFFE1EDF9),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.emptyHouseValue ??=
                                    widget.propertyRef!.emptyHouse,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.emptyHouseValue = newValue!);
                                },
                                title: Text(
                                  'בית ריק',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor: Color(0xFF392BBA),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 8.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'עמוד',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Text(
                          '2/3',
                          style: FlutterFlowTheme.of(context).headlineMedium,
                        ),
                      ],
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        await widget.propertyRef!.reference
                            .update(createPropertiesRecordData(
                          forFamily: _model.familyValue,
                          forCouple: _model.coupleValue,
                          forOne: _model.personValue,
                          dogFriendly: _model.dogValue,
                          catFriendly: _model.catValue,
                          babyCrib: _model.babyCribValue,
                          accessibility: _model.accessibilityValue,
                          familyKeepShabbat: _model.familyShabbatValue,
                          familyKeepKosher: _model.familyKosherValue,
                          secureDoor: _model.secureDoorValue,
                          emptyHouse: _model.emptyHouseValue,
                        ));

                        context.pushNamed(
                          'editProperty_3',
                          queryParameters: {
                            'propertyRef': serializeParam(
                              widget.propertyRef,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'propertyRef': widget.propertyRef,
                          },
                        );
                      },
                      text: 'הבא',
                      options: FFButtonOptions(
                        width: 120.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(60.0),
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
  }
}
