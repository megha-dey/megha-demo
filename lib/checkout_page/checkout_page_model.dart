import '/components/checkout_component_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/components/order_summary_component_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'checkout_page_widget.dart' show CheckoutPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutPageModel extends FlutterFlowModel<CheckoutPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for CheckoutComponent component.
  late CheckoutComponentModel checkoutComponentModel1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for OrderSummaryComponent component.
  late OrderSummaryComponentModel orderSummaryComponentModel1;
  // Model for OrderSummaryComponent component.
  late OrderSummaryComponentModel orderSummaryComponentModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for CheckoutComponent component.
  late CheckoutComponentModel checkoutComponentModel2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;

  @override
  void initState(BuildContext context) {
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    checkoutComponentModel1 =
        createModel(context, () => CheckoutComponentModel());
    orderSummaryComponentModel1 =
        createModel(context, () => OrderSummaryComponentModel());
    orderSummaryComponentModel2 =
        createModel(context, () => OrderSummaryComponentModel());
    checkoutComponentModel2 =
        createModel(context, () => CheckoutComponentModel());
  }

  @override
  void dispose() {
    mobileHeaderModel.dispose();
    headerComponentWebModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    checkoutComponentModel1.dispose();
    orderSummaryComponentModel1.dispose();
    orderSummaryComponentModel2.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    checkoutComponentModel2.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
