import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'qty_count_component_model.dart';
export 'qty_count_component_model.dart';

class QtyCountComponentWidget extends StatefulWidget {
  const QtyCountComponentWidget({
    super.key,
    required this.id,
    required this.qty,
    required this.index,
    bool? isCheckout,
  }) : this.isCheckout = isCheckout ?? false;

  final String? id;
  final int? qty;
  final int? index;
  final bool isCheckout;

  @override
  State<QtyCountComponentWidget> createState() =>
      _QtyCountComponentWidgetState();
}

class _QtyCountComponentWidgetState extends State<QtyCountComponentWidget> {
  late QtyCountComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QtyCountComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 76.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 76.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 87.0;
              } else {
                return 87.0;
              }
            }(),
            height: 31.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(0.0),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).info,
              ),
            ),
            child: FlutterFlowCountController(
              decrementIconBuilder: (enabled) => Icon(
                Icons.remove_rounded,
                color: enabled
                    ? FlutterFlowTheme.of(context).primaryText
                    : FlutterFlowTheme.of(context).alternate,
                size: 12.0,
              ),
              incrementIconBuilder: (enabled) => Icon(
                Icons.add_rounded,
                color: enabled
                    ? FlutterFlowTheme.of(context).primaryText
                    : FlutterFlowTheme.of(context).alternate,
                size: 12.0,
              ),
              countBuilder: (count) => Text(
                count.toString(),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleLargeFamily),
                    ),
              ),
              count: _model.countControllerValue ??= widget!.qty!,
              updateCount: (count) async {
                safeSetState(() => _model.countControllerValue = count);
                if (widget!.isCheckout == true) {
                  FFAppState().updateCartDataAtIndex(
                    widget!.index!,
                    (e) => e..selectedQty = _model.countControllerValue,
                  );
                  safeSetState(() {});
                  await actions.consoleLog(
                    'Controller count Value  : ${_model.countControllerValue?.toString()}Selected Qty : ${FFAppState().cartData.elementAtOrNull(widget!.index!)?.selectedQty?.toString()}',
                  );
                } else {
                  return;
                }
              },
              stepSize: 1,
              minimum: 1,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            ),
          ),
          if (widget!.isCheckout)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().removeAtIndexFromCartData(widget!.index!);
                  FFAppState().update(() {});
                },
                child: Text(
                  'Remove',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Gothic Regular',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Gothic Regular'),
                      ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
