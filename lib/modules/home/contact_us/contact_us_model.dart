import '/components/comments_component_widget.dart';
import '/components/footer_component_web_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/components/text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'contact_us_widget.dart' show ContactUsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactUsModel extends FlutterFlowModel<ContactUsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // Model for TextFieldComponent component.
  late TextFieldComponentModel textFieldComponentModel1;
  // Model for TextFieldComponent component.
  late TextFieldComponentModel textFieldComponentModel2;
  // Model for TextFieldComponent component.
  late TextFieldComponentModel textFieldComponentModel3;
  // Model for TextFieldComponent component.
  late TextFieldComponentModel textFieldComponentModel4;
  // Model for TextFieldComponent component.
  late TextFieldComponentModel textFieldComponentModel5;
  // Model for CommentsComponent component.
  late CommentsComponentModel commentsComponentModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;
  // Model for FooterComponentWeb component.
  late FooterComponentWebModel footerComponentWebModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    textFieldComponentModel1 =
        createModel(context, () => TextFieldComponentModel());
    textFieldComponentModel2 =
        createModel(context, () => TextFieldComponentModel());
    textFieldComponentModel3 =
        createModel(context, () => TextFieldComponentModel());
    textFieldComponentModel4 =
        createModel(context, () => TextFieldComponentModel());
    textFieldComponentModel5 =
        createModel(context, () => TextFieldComponentModel());
    commentsComponentModel =
        createModel(context, () => CommentsComponentModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
    footerComponentWebModel =
        createModel(context, () => FooterComponentWebModel());
  }

  @override
  void dispose() {
    mobileHeaderModel.dispose();
    headerComponentWebModel.dispose();
    textFieldComponentModel1.dispose();
    textFieldComponentModel2.dispose();
    textFieldComponentModel3.dispose();
    textFieldComponentModel4.dispose();
    textFieldComponentModel5.dispose();
    commentsComponentModel.dispose();
    footerMobileModel.dispose();
    footerComponentWebModel.dispose();
  }
}
