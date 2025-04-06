import '/components/footer_component_web_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'aja_motto_widget.dart' show AjaMottoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjaMottoModel extends FlutterFlowModel<AjaMottoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // Model for FooterComponentWeb component.
  late FooterComponentWebModel footerComponentWebModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;

  @override
  void initState(BuildContext context) {
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    footerComponentWebModel =
        createModel(context, () => FooterComponentWebModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
  }

  @override
  void dispose() {
    headerComponentWebModel.dispose();
    mobileHeaderModel.dispose();
    footerComponentWebModel.dispose();
    footerMobileModel.dispose();
  }
}
