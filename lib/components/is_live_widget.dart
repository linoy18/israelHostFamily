import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'is_live_model.dart';
export 'is_live_model.dart';

class IsLiveWidget extends StatefulWidget {
  const IsLiveWidget({
    Key? key,
    required this.isLiveValue,
    required this.propRef,
  }) : super(key: key);

  final bool? isLiveValue;
  final DocumentReference? propRef;

  @override
  _IsLiveWidgetState createState() => _IsLiveWidgetState();
}

class _IsLiveWidgetState extends State<IsLiveWidget> {
  late IsLiveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IsLiveModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
      child: SwitchListTile.adaptive(
        value: _model.switchListTileValue ??= widget.isLiveValue!,
        onChanged: (newValue) async {
          setState(() => _model.switchListTileValue = newValue!);
          if (newValue!) {
            await widget.propRef!.update({
              ...createPropertiesRecordData(
                isLive: true,
              ),
              ...mapToFirestore(
                {
                  'lastUpdated': FieldValue.serverTimestamp(),
                },
              ),
            });
          } else {
            await widget.propRef!.update({
              ...createPropertiesRecordData(
                isLive: false,
              ),
              ...mapToFirestore(
                {
                  'lastUpdated': FieldValue.serverTimestamp(),
                },
              ),
            });
          }
        },
        title: Text(
          widget.isLiveValue! ? 'מודעה פעילה' : 'מודעה לא פעילה',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Montserrat',
                color: widget.isLiveValue!
                    ? FlutterFlowTheme.of(context).success
                    : FlutterFlowTheme.of(context).redApple,
                fontSize: 18.0,
              ),
        ),
        tileColor: FlutterFlowTheme.of(context).secondaryBackground,
        activeColor: FlutterFlowTheme.of(context).success,
        activeTrackColor: Color(0xFF3F7758),
        dense: false,
        controlAffinity: ListTileControlAffinity.trailing,
        contentPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
      ),
    );
  }
}
