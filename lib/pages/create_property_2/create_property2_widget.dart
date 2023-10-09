import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_property2_model.dart';
export 'create_property2_model.dart';

class CreateProperty2Widget extends StatefulWidget {
  const CreateProperty2Widget({
    Key? key,
    required this.propName,
    required this.propDescription,
    String? propAddress,
    String? propNeighborhood,
    this.mainImage,
  })  : this.propAddress = propAddress ?? '',
        this.propNeighborhood = propNeighborhood ?? ' ',
        super(key: key);

  final String? propName;
  final String? propDescription;
  final String propAddress;
  final String propNeighborhood;
  final String? mainImage;

  @override
  _CreateProperty2WidgetState createState() => _CreateProperty2WidgetState();
}

class _CreateProperty2WidgetState extends State<CreateProperty2Widget> {
  late CreateProperty2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateProperty2Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'createProperty_2'});
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
            color: Color(0xFF95A1AC),
            size: 24.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'הוספת מקום אירוח',
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
            mainAxisAlignment: MainAxisAlignment.start,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Icon(
                                Icons.family_restroom_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.familyValue ??= false,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.familyValue = newValue!);
                                },
                                title: Text(
                                  'מתאים למשפחה',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו האם מתאים למשפחה',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Icon(
                                Icons.group_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.coupleValue ??= false,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.coupleValue = newValue!);
                                },
                                title: Text(
                                  'מתאים לזוג',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו אם מתאים לזוג',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Icon(
                                Icons.person,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.personValue ??= false,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.personValue = newValue!);
                                },
                                title: Text(
                                  'מתאים לבודד',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו אם מתאים לבנאדם אחד',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Icon(
                                Icons.sensor_door_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.secureDoorValue ??= false,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.secureDoorValue = newValue!);
                                },
                                title: Text(
                                  'ממ\"ד',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו אם יש לכם חדר מוגן',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.paw,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.dogFriendlyValue ??= false,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.dogFriendlyValue = newValue!);
                                },
                                title: Text(
                                  'ידידותית לכלבים',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 18.0,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו אם זה אפשרי להביא כלב ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.cat,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.catFriendlyValue ??= false,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.catFriendlyValue = newValue!);
                                },
                                title: Text(
                                  'ידידותית לחתולים',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו אם זה אפשרי להביא חתול ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.babyCarriage,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.babyCribValue ??= false,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.babyCribValue = newValue!);
                                },
                                title: Text(
                                  'מיטת תינוק',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו אם יש לכם לול לתינוק בבית ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Icon(
                                Icons.accessible,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.accessibilityValue ??= false,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.accessibilityValue = newValue!);
                                },
                                title: Text(
                                  'נגישות (מעלית/כניסה שטוחה)',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו האם מתאים לבעלי מוגבלויות',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.synagogue,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.familyShabbatValue ??= false,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.familyShabbatValue = newValue!);
                                },
                                title: Text(
                                  'משפחה שומרת שבת',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו אם אתם שומרים שבת',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Icon(
                                Icons.food_bank,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26.0,
                              ),
                            ),
                            Expanded(
                              child: SwitchListTile.adaptive(
                                value: _model.familyKosherValue ??= false,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.familyKosherValue = newValue!);
                                },
                                title: Text(
                                  'משפחה שומרת כשרות',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                                subtitle: Text(
                                  'סמנו אם אתם שומרים כשרות',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                      ),
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
                        context.pushNamed(
                          'createProperty_3',
                          queryParameters: {
                            'family': serializeParam(
                              _model.familyValue,
                              ParamType.bool,
                            ),
                            'couple': serializeParam(
                              _model.coupleValue,
                              ParamType.bool,
                            ),
                            'one': serializeParam(
                              _model.personValue,
                              ParamType.bool,
                            ),
                            'secureDoor': serializeParam(
                              _model.secureDoorValue,
                              ParamType.bool,
                            ),
                            'dog': serializeParam(
                              _model.dogFriendlyValue,
                              ParamType.bool,
                            ),
                            'cat': serializeParam(
                              _model.catFriendlyValue,
                              ParamType.bool,
                            ),
                            'babyCrib': serializeParam(
                              _model.babyCribValue,
                              ParamType.bool,
                            ),
                            'acessability': serializeParam(
                              _model.accessibilityValue,
                              ParamType.bool,
                            ),
                            'keepShabbat': serializeParam(
                              _model.familyShabbatValue,
                              ParamType.bool,
                            ),
                            'keepKosher': serializeParam(
                              _model.familyKosherValue,
                              ParamType.bool,
                            ),
                            'name': serializeParam(
                              widget.propName,
                              ParamType.String,
                            ),
                            'descriptioon': serializeParam(
                              widget.propDescription,
                              ParamType.String,
                            ),
                            'address': serializeParam(
                              widget.propAddress,
                              ParamType.String,
                            ),
                            'neighborhood': serializeParam(
                              widget.propNeighborhood,
                              ParamType.String,
                            ),
                            'mainImage': serializeParam(
                              widget.mainImage,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'המשך',
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
