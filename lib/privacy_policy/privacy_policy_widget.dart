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
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  static String routeName = 'PrivacyPolicy';
  static String routePath = '/privacyPolicy';

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());
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
                        EdgeInsetsDirectional.fromSTEB(17.0, 20.0, 17.0, 70.0),
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
                                'PRIVACY POLICY :-',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleLargeFamily,
                                      fontSize: 16.0,
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
                                width: 110.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'At AJĀ, we are committed to protecting your privacy and ensuring a safe online experience. This Privacy Policy outlines how we collect, use, and protect your personal information when you visit our website or make a purchase. By using our website, you agree to the practices described in this policy.\n\n1. Information We Collect\n\nWe collect personal information when you visit our website, make a purchase, or engage with our services. This may include:\n\t•\tPersonal Details: Name, email address, phone number, and shipping information.\n\t•\tPayment Information: Credit card details and billing address (processed securely by our payment gateway provider).\n\t•\tUsage Information: IP address, browser type, pages visited, and other data related to your interaction with our website.\n\n2. How We Use Your Information\n\nWe may use the information we collect for the following purposes:\n\t•\tOrder Processing: To fulfill and deliver your orders, and communicate with you about your purchases.\n\t•\tCustomer Support: To provide assistance and resolve any issues you may have with our products or services.\n\t•\tMarketing Communications: To send promotional emails or updates about new products or offers. You can opt out of marketing communications at any time.\n\t•\tImprovement of Services: To improve our website, products, and customer experience.\n\n3. Data Sharing and Disclosure\n\nWe respect your privacy and will not sell, rent, or trade your personal information to third parties. However, we may share your information with trusted service providers who help us with the following:\n\t•\tPayment Processing: For secure payment transactions.\n\t•\tShipping and Delivery: To ensure your orders are delivered to you.\n\t•\tMarketing: To send you promotional emails (only if you have opted in).\n\nWe may also disclose your information if required by law, such as to comply with a legal process or in response to a request from law enforcement authorities.\n\n4. Data Security\n\nWe take reasonable steps to protect your personal information from unauthorized access, alteration, or destruction. This includes using encryption technologies and secure servers to protect sensitive data such as payment information.\n\n5. Cookies and Tracking Technologies\n\nOur website uses cookies to enhance your browsing experience. Cookies are small text files stored on your device that help us track usage patterns, remember preferences, and improve site functionality. You can disable cookies in your browser settings, but this may affect the performance of our website.\n\n6. Third-Party Websites\n\nOur website may contain links to third-party websites. These websites have their own privacy policies, and we encourage you to review them before providing any personal information. We are not responsible for the content or privacy practices of these external sites.\n\n7. Your Rights\n\nYou have the right to access, update, or delete your personal information. If you wish to exercise these rights, please contact us at [email address].\nYou may also opt out of receiving promotional emails by following the unsubscribe instructions included in every email we send.\n\n8. Changes to This Privacy Policy\n\nWe may update this Privacy Policy from time to time. Any changes will be posted on this page, and the date of the latest revision will be indicated at the bottom of the policy. Please review this policy periodically to stay informed.\n\n\n9. Contact Us\n\nIf you have any questions or concerns about this Privacy Policy or the use of your personal information, please contact us at:\n\n\nAJĀ Skincare\nEmail: \nPhone:\n',
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
                                'PRIVACY POLICY :-',
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
                                width: 250.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'At AJĀ, we are committed to protecting your privacy and ensuring a safe online experience. This Privacy Policy outlines how we collect, use, and protect your personal information when you visit our website or make a purchase. By using our website, you agree to the practices described in this policy.\n\n1. Information We Collect\n\nWe collect personal information when you visit our website, make a purchase, or engage with our services. This may include:\n\t•\tPersonal Details: Name, email address, phone number, and shipping information.\n\t•\tPayment Information: Credit card details and billing address (processed securely by our payment gateway provider).\n\t•\tUsage Information: IP address, browser type, pages visited, and other data related to your interaction with our website.\n\n2. How We Use Your Information\n\nWe may use the information we collect for the following purposes:\n\t•\tOrder Processing: To fulfill and deliver your orders, and communicate with you about your purchases.\n\t•\tCustomer Support: To provide assistance and resolve any issues you may have with our products or services.\n\t•\tMarketing Communications: To send promotional emails or updates about new products or offers. You can opt out of marketing communications at any time.\n\t•\tImprovement of Services: To improve our website, products, and customer experience.\n\n3. Data Sharing and Disclosure\n\nWe respect your privacy and will not sell, rent, or trade your personal information to third parties. However, we may share your information with trusted service providers who help us with the following:\n\t•\tPayment Processing: For secure payment transactions.\n\t•\tShipping and Delivery: To ensure your orders are delivered to you.\n\t•\tMarketing: To send you promotional emails (only if you have opted in).\n\nWe may also disclose your information if required by law, such as to comply with a legal process or in response to a request from law enforcement authorities.\n\n4. Data Security\n\nWe take reasonable steps to protect your personal information from unauthorized access, alteration, or destruction. This includes using encryption technologies and secure servers to protect sensitive data such as payment information.\n\n5. Cookies and Tracking Technologies\n\nOur website uses cookies to enhance your browsing experience. Cookies are small text files stored on your device that help us track usage patterns, remember preferences, and improve site functionality. You can disable cookies in your browser settings, but this may affect the performance of our website.\n\n6. Third-Party Websites\n\nOur website may contain links to third-party websites. These websites have their own privacy policies, and we encourage you to review them before providing any personal information. We are not responsible for the content or privacy practices of these external sites.\n\n7. Your Rights\n\nYou have the right to access, update, or delete your personal information. If you wish to exercise these rights, please contact us at [email address].\nYou may also opt out of receiving promotional emails by following the unsubscribe instructions included in every email we send.\n\n8. Changes to This Privacy Policy\n\nWe may update this Privacy Policy from time to time. Any changes will be posted on this page, and the date of the latest revision will be indicated at the bottom of the policy. Please review this policy periodically to stay informed.\n\n\n9. Contact Us\n\nIf you have any questions or concerns about this Privacy Policy or the use of your personal information, please contact us at:\n\n\nAJĀ Skincare\nEmail: \nPhone:\n',
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
