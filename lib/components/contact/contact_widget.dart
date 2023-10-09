import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_model.dart';
export 'contact_model.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({
    Key? key,
    required this.name,
    required this.number,
    required this.mainImage,
  }) : super(key: key);

  final String? name;
  final String? number;
  final String? mainImage;

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  late ContactModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Align(
            alignment: AlignmentDirectional(-0.00, 0.00),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x2014181B),
                ),
                alignment: AlignmentDirectional(-0.00, 0.00),
                child: Align(
                  alignment: AlignmentDirectional(-0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      height: MediaQuery.sizeOf(context).height * 0.534,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      alignment: AlignmentDirectional(-0.00, -1.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 8.0),
                              child: Text(
                                'פרטי המארחים',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            if (widget.mainImage != null &&
                                widget.mainImage != '')
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 120.0,
                                    height: 120.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        widget.mainImage,
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/apart-wenglu/assets/8q2m3effkszm/7474049.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: Visibility(
                                visible:
                                    widget.name != null && widget.name != '',
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: _model.mouseRegionHovered1!
                                        ? FlutterFlowTheme.of(context)
                                            .primaryBackground
                                        : FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.person_2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 20.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              widget.name!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered1 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered1 = false);
                              }),
                            ),
                            MouseRegion(
                              opaque: false,
                              cursor:
                                  SystemMouseCursors.basic ?? MouseCursor.defer,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchUrl(Uri(
                                    scheme: 'tel',
                                    path: widget.number!,
                                  ));
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: _model.mouseRegionHovered2!
                                        ? FlutterFlowTheme.of(context)
                                            .primaryBackground
                                        : FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.phone,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 20.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.number,
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered2 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered2 = false);
                              }),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      'שימו לב !',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .redApple,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'על אחריותכם לוודא את אמינותו של האדם\nאו המשפחה אליה אתם רוצים להגיע',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .redApple,
                                      ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'שמרו על עצמכם',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF0B4B3C),
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
