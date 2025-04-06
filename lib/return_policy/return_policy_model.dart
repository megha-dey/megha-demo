import '/components/footer_component_web_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'return_policy_widget.dart' show ReturnPolicyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReturnPolicyModel extends FlutterFlowModel<ReturnPolicyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // Model for FooterComponentWeb component.
  late FooterComponentWebModel footerComponentWebModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    footerComponentWebModel =
        createModel(context, () => FooterComponentWebModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
  }

  @override
  void dispose() {
    mobileHeaderModel.dispose();
    headerComponentWebModel.dispose();
    footerComponentWebModel.dispose();
    footerMobileModel.dispose();
  }
}
