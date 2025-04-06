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
import 'terms_and_conditions_model.dart';
export 'terms_and_conditions_model.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  static String routeName = 'TermsAndConditions';
  static String routePath = '/termsAndConditions';

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  late TermsAndConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsModel());
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: wrapWithModel(
                      model: _model.mobileHeaderModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MobileHeaderWidget(),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: wrapWithModel(
                      model: _model.headerComponentWebModel,
                      updateCallback: () => safeSetState(() {}),
                      child: HeaderComponentWebWidget(),
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
                        EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 17.0, 70.0),
                    child: Container(
                      width: 1280.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Text(
                                'TERMS AND CONDITIONS :-',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      fontSize: 15.0,
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
                                width: 300.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'General Disclaimer\n\t•\tOur products are for external use only and are not intended for medical treatment, diagnosis, or curing any medical conditions.\n •\tWhile we take great care to ensure the quality of our products, results may vary from person to person.\n\nPatch Test Advisory\n\t•\tWe strongly recommend performing a patch test before using any new skincare products to ensure there is no allergic reaction or irritation.\n\t•\tIf irritation occurs, please discontinue use and consult a healthcare professional.\n\nContent Accuracy\n\t•\tWe strive for accuracy in the descriptions, pricing, and availability of our products. However, we do not guarantee the completeness or accuracy of any content on our website.\n\nLiability\n\t•\tWe will not be held liable for any adverse effects or consequences arising from the use of our products.\n\t•\tCustomers are advised to follow all usage instructions and take precautions if they have sensitive skin or pre-existing conditions.\n\nProduct Availability\n\t•\tProducts are subject to availability and may be discontinued without prior notice.\n\t•\tIn case of product unavailability, we will notify the customer and offer a suitable alternative or a refund.\n\nCompliance with Local Laws\n\t•\tIt is the customer’s responsibility to ensure compliance with all local laws and regulations regarding skincare products in their area.\n\t•\tWe cannot be held responsible for any legal issues arising from the use of our products in regions where they are prohibited.\n',
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
                        ],
                      ),
                    ),
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
                        150.0),
                    child: Container(
                      width: 1280.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Text(
                                'TERMS AND CONDITIONS :-',
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
                                width: 350.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'General Disclaimer\n\t•\tOur products are for external use only and are not intended for medical treatment, diagnosis, or curing any medical conditions.\n •\tWhile we take great care to ensure the quality of our products, results may vary from person to person.\n\nPatch Test Advisory\n\t•\tWe strongly recommend performing a patch test before using any new skincare products to ensure there is no allergic reaction or irritation.\n\t•\tIf irritation occurs, please discontinue use and consult a healthcare professional.\n\nContent Accuracy\n\t•\tWe strive for accuracy in the descriptions, pricing, and availability of our products. However, we do not guarantee the completeness or accuracy of any content on our website.\n\nLiability\n\t•\tWe will not be held liable for any adverse effects or consequences arising from the use of our products.\n\t•\tCustomers are advised to follow all usage instructions and take precautions if they have sensitive skin or pre-existing conditions.\n\nProduct Availability\n\t•\tProducts are subject to availability and may be discontinued without prior notice.\n\t•\tIn case of product unavailability, we will notify the customer and offer a suitable alternative or a refund.\n\nCompliance with Local Laws\n\t•\tIt is the customer’s responsibility to ensure compliance with all local laws and regulations regarding skincare products in their area.\n\t•\tWe cannot be held responsible for any legal issues arising from the use of our products in regions where they are prohibited.\n',
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
                        ],
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  wrapWithModel(
                    model: _model.footerComponentWebModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FooterComponentWebWidget(),
                  ),
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  wrapWithModel(
                    model: _model.footerMobileModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FooterMobileWidget(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
