import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text_field_component_model.dart';
export 'text_field_component_model.dart';

class TextFieldComponentWidget extends StatefulWidget {
  const TextFieldComponentWidget({
    super.key,
    required this.title,
    required this.hint,
  });

  final String? title;
  final String? hint;

  @override
  State<TextFieldComponentWidget> createState() =>
      _TextFieldComponentWidgetState();
}

class _TextFieldComponentWidgetState extends State<TextFieldComponentWidget> {
  late TextFieldComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextFieldComponentModel());

    _model.textController ??= TextEditingController(text: widget!.hint);
    _model.textFieldFocusNode ??= FocusNode();
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
        Align(
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
            child: Text(
              valueOrDefault<String>(
                widget!.title,
                'Title',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Gothic Regular',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: () {
                      if (MediaQuery.sizeOf(context).width < 600.0) {
                        return 13.0;
                      } else if (MediaQuery.sizeOf(context).width < 900.0) {
                        return 16.0;
                      } else {
                        return 20.0;
                      }
                    }(),
                    letterSpacing: 1.0,
                    useGoogleFonts:
                        GoogleFonts.asMap().containsKey('Gothic Regular'),
                  ),
            ),
          ),
        ),
        TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          autofocus: false,
          obscureText: false,
          decoration: InputDecoration(
            isDense: true,
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).labelMediumFamily),
                ),
            hintText: 'TextField',
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).labelMediumFamily),
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            filled: true,
            fillColor: FlutterFlowTheme.of(context).primaryBackground,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Gothic Regular',
                color: FlutterFlowTheme.of(context).primary,
                fontSize: () {
                  if (MediaQuery.sizeOf(context).width < 600.0) {
                    return 12.0;
                  } else if (MediaQuery.sizeOf(context).width < 900.0) {
                    return 16.0;
                  } else {
                    return 20.0;
                  }
                }(),
                letterSpacing: 1.0,
                useGoogleFonts:
                    GoogleFonts.asMap().containsKey('Gothic Regular'),
                lineHeight: () {
                  if (MediaQuery.sizeOf(context).width < 600.0) {
                    return 1.5;
                  } else if (MediaQuery.sizeOf(context).width < 900.0) {
                    return 2.5;
                  } else {
                    return 2.5;
                  }
                }(),
              ),
          cursorColor: FlutterFlowTheme.of(context).primaryText,
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ],
    );
  }
}
