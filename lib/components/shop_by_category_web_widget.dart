import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shop_by_category_web_model.dart';
export 'shop_by_category_web_model.dart';

class ShopByCategoryWebWidget extends StatefulWidget {
  const ShopByCategoryWebWidget({
    super.key,
    required this.categoryImage,
    required this.categoryName,
  });

  final String? categoryImage;
  final String? categoryName;

  @override
  State<ShopByCategoryWebWidget> createState() =>
      _ShopByCategoryWebWidgetState();
}

class _ShopByCategoryWebWidgetState extends State<ShopByCategoryWebWidget>
    with TickerProviderStateMixin {
  late ShopByCategoryWebModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopByCategoryWebModel());

    animationsMap.addAll({
      'circleImageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 250.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.12, 1.12),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 269.3,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 100.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 130.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 166.0;
              } else {
                return 212.0;
              }
            }(),
            height: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 100.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 130.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 166.0;
              } else {
                return 212.0;
              }
            }(),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                width: 5.0,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Error_Image.jpg',
                    fit: BoxFit.cover,
                  ),
                ).animateOnActionTrigger(
                  animationsMap['circleImageOnActionTriggerAnimation']!,
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered = true);
                    if (animationsMap['circleImageOnActionTriggerAnimation'] !=
                        null) {
                      animationsMap['circleImageOnActionTriggerAnimation']!
                          .controller
                          .forward(from: 0.0);
                    }
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered = false);
                  }),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget!.categoryName,
                'categoryname',
              ),
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                    letterSpacing: 1.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).titleSmallFamily),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
