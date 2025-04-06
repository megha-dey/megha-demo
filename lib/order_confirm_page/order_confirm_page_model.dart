import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/components/order_details_component_widget.dart';
import '/components/order_summary_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'order_confirm_page_widget.dart' show OrderConfirmPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderConfirmPageModel extends FlutterFlowModel<OrderConfirmPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Model for OrderDetailsComponent component.
  late OrderDetailsComponentModel orderDetailsComponentModel1;
  // Model for OrderSummaryComponent component.
  late OrderSummaryComponentModel orderSummaryComponentModel1;
  // Model for OrderSummaryComponent component.
  late OrderSummaryComponentModel orderSummaryComponentModel2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for OrderDetailsComponent component.
  late OrderDetailsComponentModel orderDetailsComponentModel2;

  @override
  void initState(BuildContext context) {
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    orderDetailsComponentModel1 =
        createModel(context, () => OrderDetailsComponentModel());
    orderSummaryComponentModel1 =
        createModel(context, () => OrderSummaryComponentModel());
    orderSummaryComponentModel2 =
        createModel(context, () => OrderSummaryComponentModel());
    orderDetailsComponentModel2 =
        createModel(context, () => OrderDetailsComponentModel());
  }

  @override
  void dispose() {
    headerComponentWebModel.dispose();
    mobileHeaderModel.dispose();
    orderDetailsComponentModel1.dispose();
    orderSummaryComponentModel1.dispose();
    orderSummaryComponentModel2.dispose();
    orderDetailsComponentModel2.dispose();
  }
}
