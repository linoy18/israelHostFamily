import '/backend/backend.dart';
import '/components/amenitity_indicator/amenitity_indicator_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'property_details_owner_model.dart';
export 'property_details_owner_model.dart';

class PropertyDetailsOwnerWidget extends StatefulWidget {
  const PropertyDetailsOwnerWidget({
    Key? key,
    this.propertyRef,
  }) : super(key: key);

  final PropertiesRecord? propertyRef;

  @override
  _PropertyDetailsOwnerWidgetState createState() =>
      _PropertyDetailsOwnerWidgetState();
}

class _PropertyDetailsOwnerWidgetState extends State<PropertyDetailsOwnerWidget>
    with TickerProviderStateMixin {
  late PropertyDetailsOwnerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.4, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyDetailsOwnerModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 320.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFDBE2E7),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Stack(
                            children: [
                              if (widget.propertyRef?.hasMainImage() != null)
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: FlutterFlowExpandedImageView(
                                            image: Image.network(
                                              widget.propertyRef!.mainImage,
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: widget.propertyRef!.mainImage,
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: widget.propertyRef!.mainImage,
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.network(
                                          widget.propertyRef!.mainImage,
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pop();
                                          },
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0x3A000000),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              buttonSize: 46.0,
                                              icon: Icon(
                                                Icons.arrow_back_rounded,
                                                color: Colors.white,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                context.pop();
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            widget.propertyRef!.propertyName,
                            style: FlutterFlowTheme.of(context).displaySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            widget.propertyRef!.propertyNeighborhood,
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'תיאור מקום האירוח',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 24.0),
                            child: Text(
                              widget.propertyRef!.propertyDescription,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'מאפיינים חשובים',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (widget.propertyRef?.hasForFamily() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel1,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.family_restroom,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasForCouple() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel2,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.group_sharp,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasForOne() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel3,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.person_sharp,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasAccessibility() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel4,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.accessible,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasDogFriendly() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel5,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.paw,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasSecureDoor() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel6,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.sensor_door_sharp,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasCatFriendly() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel7,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.cat,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasBabyCrib() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel8,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.babyCarriage,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasFamilyKeepShabbat() ??
                              true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel9,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.synagogue,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                          if (widget.propertyRef?.hasFamilyKeepKosher() ?? true)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: wrapWithModel(
                                model: _model.amenitityIndicatorModel10,
                                updateCallback: () => setState(() {}),
                                child: AmenitityIndicatorWidget(
                                  icon: Icon(
                                    Icons.food_bank,
                                    color:
                                        FlutterFlowTheme.of(context).grayIcon,
                                  ),
                                  background: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineGray,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation1']!),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'כמות מיטות פנויות',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              widget.propertyRef!.bedsCount.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation2']!),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'כמות חדרים פנויים',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              widget.propertyRef!.roomsCount.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation3']!),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'כמות ימים פנויים לאירוח',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Lexend Deca',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              widget.propertyRef!.minNights.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation4']!),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 16.0, 40.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'editProperty_1',
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
                          text: 'עריכת מקום האירוח',
                          options: FFButtonOptions(
                            width: 200.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
