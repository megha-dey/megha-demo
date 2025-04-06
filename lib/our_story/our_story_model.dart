import '/components/footer_component_web_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'our_story_widget.dart' show OurStoryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OurStoryModel extends FlutterFlowModel<OurStoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;
  // Model for FooterComponentWeb component.
  late FooterComponentWebModel footerComponentWebModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
    footerComponentWebModel =
        createModel(context, () => FooterComponentWebModel());
  }

  @override
  void dispose() {
    mobileHeaderModel.dispose();
    headerComponentWebModel.dispose();
    footerMobileModel.dispose();
    footerComponentWebModel.dispose();
  }
}
