import '/components/footer_component_web_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'disclaimer_and_important_information_model.dart';
export 'disclaimer_and_important_information_model.dart';

class DisclaimerAndImportantInformationWidget extends StatefulWidget {
  const DisclaimerAndImportantInformationWidget({super.key});

  static String routeName = 'DisclaimerAndImportantInformation';
  static String routePath = '/disclaimerAndImportantInformation';

  @override
  State<DisclaimerAndImportantInformationWidget> createState() =>
      _DisclaimerAndImportantInformationWidgetState();
}

class _DisclaimerAndImportantInformationWidgetState
    extends State<DisclaimerAndImportantInformationWidget> {
  late DisclaimerAndImportantInformationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => DisclaimerAndImportantInformationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  wrapWithModel(
                    model: _model.mobileHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MobileHeaderWidget(),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  wrapWithModel(
                    model: _model.headerComponentWebModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HeaderComponentWebWidget(),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 10.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 45.0;
                            } else {
                              return 1.0;
                            }
                          }(),
                          0.0,
                        ),
                        0.0,
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 10.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 40.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 45.0;
                            } else {
                              return 1.0;
                            }
                          }(),
                          0.0,
                        ),
                        0.0),
                    child: Container(
                      width: 1280.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'DISCLAIMER & IMPORTANT INFORMATION -',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 1.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily),
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 28.0),
                                child: Container(
                                  width: 550.0,
                                  height: 7.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 50.0),
                                child: Text(
                                  '1. Handmade Self-Care Products\nAJĀ offers handmade self-care products, crafted with the finest natural ingredients for personal use and enjoyment. Our products are intended to enhance your personal wellness experience, not for medical purposes or treatment.\n\n2. Not Registered as a Commercial Skincare Brand\nAt this time, AJĀ is a small-scale, artisanal brand, and we are not registered with regulatory authorities as a formal commercial skincare company. While our products are designed with care, they are not intended to treat, diagnose, or cure any medical condition. Please consult a licensed professional before using any of our products, especially if you have sensitive skin or any pre-existing skin conditions.\n\n3. Product Use & Patch Testing\nWe recommend performing a patch test on a small area of skin before using any product to ensure compatibility. If irritation occurs, discontinue use immediately. AJĀ is not liable for any allergic reactions or side effects.\n\n4. Personalized, Handcrafted Experience\nEach product is handcrafted and made to order, ensuring high-quality, fresh formulations. As a result, slight variations in texture, color, or fragrance may occur. This is normal and does not affect the efficacy of the product.\n\n5. Customer Acknowledgment\nBy purchasing AJĀ products, you acknowledge and accept that our products are handcrafted, made for personal use, and not registered as a formal skincare brand. AJĀ products are not intended for medical use or treatment.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'ABeeZee',
                                        color: Color(0xD8000000),
                                        fontSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 16.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 18.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 20.0;
                                          } else {
                                            return 20.0;
                                          }
                                        }(),
                                        letterSpacing: 1.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('ABeeZee'),
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 17.0, 0.0),
                    child: Container(
                      width: 1280.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Text(
                                  'DISCLAIMER & IMPORTANT INFORMATION -',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        fontSize: 13.0,
                                        letterSpacing: 1.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily),
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 28.0),
                                child: Container(
                                  width: 350.0,
                                  height: 7.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Text(
                                '1. Handmade Self-Care Products\nAJĀ offers handmade self-care products, crafted with the finest natural ingredients for personal use and enjoyment. Our products are intended to enhance your personal wellness experience, not for medical purposes or treatment.\n\n2. Not Registered as a Commercial Skincare Brand\nAt this time, AJĀ is a small-scale, artisanal brand, and we are not registered with regulatory authorities as a formal commercial skincare company. While our products are designed with care, they are not intended to treat, diagnose, or cure any medical condition. Please consult a licensed professional before using any of our products, especially if you have sensitive skin or any pre-existing skin conditions.\n\n3. Product Use & Patch Testing\nWe recommend performing a patch test on a small area of skin before using any product to ensure compatibility. If irritation occurs, discontinue use immediately. AJĀ is not liable for any allergic reactions or side effects.\n\n4. Personalized, Handcrafted Experience\nEach product is handcrafted and made to order, ensuring high-quality, fresh formulations. As a result, slight variations in texture, color, or fragrance may occur. This is normal and does not affect the efficacy of the product.\n\n5. Customer Acknowledgment\nBy purchasing AJĀ products, you acknowledge and accept that our products are handcrafted, made for personal use, and not registered as a formal skincare brand. AJĀ products are not intended for medical use or treatment.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'ABeeZee',
                                      color: Color(0xD8000000),
                                      fontSize: 16.0,
                                      letterSpacing: 1.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('ABeeZee'),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  wrapWithModel(
                    model: _model.footerComponentWebModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FooterComponentWebWidget(),
                  ),
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.footerMobileModel,
                      updateCallback: () => safeSetState(() {}),
                      child: FooterMobileWidget(),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
