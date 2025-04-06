import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'description_component_model.dart';
export 'description_component_model.dart';

class DescriptionComponentWidget extends StatefulWidget {
  const DescriptionComponentWidget({
    super.key,
    this.itemDescription,
  });

  final DescriptionItemStruct? itemDescription;

  @override
  State<DescriptionComponentWidget> createState() =>
      _DescriptionComponentWidgetState();
}

class _DescriptionComponentWidgetState
    extends State<DescriptionComponentWidget> {
  late DescriptionComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DescriptionComponentModel());
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(2.0, 27.0, 0.0, 25.0),
          child: Text(
            valueOrDefault<String>(
              widget!.itemDescription?.title,
              'NA',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 14.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 18.0;
                    } else {
                      return 18.0;
                    }
                  }(),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey('Montserrat'),
                ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget!.itemDescription?.desc,
                'NA',
              ),
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 12.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 13.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 14.0;
                      } else {
                        return 14.0;
                      }
                    }(),
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w300,
                    useGoogleFonts:
                        GoogleFonts.asMap().containsKey('Montserrat'),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
