import '/backend/schema/structs/index.dart';
import '/components/varient_component_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'product_summary_component_widget.dart'
    show ProductSummaryComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductSummaryComponentModel
    extends FlutterFlowModel<ProductSummaryComponentWidget> {
  ///  Local state fields for this component.

  VariantStruct? selectedVariant;
  void updateSelectedVariantStruct(Function(VariantStruct) updateFn) {
    updateFn(selectedVariant ??= VariantStruct());
  }

  int selectedQty = 1;

  int selectedIndex = 0;

  ///  State fields for stateful widgets in this component.

  // Models for VarientComponent dynamic component.
  late FlutterFlowDynamicModels<VarientComponentModel> varientComponentModels1;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // Models for VarientComponent dynamic component.
  late FlutterFlowDynamicModels<VarientComponentModel> varientComponentModels2;
  // State field(s) for CountController widget.
  int? countControllerValue2;

  @override
  void initState(BuildContext context) {
    varientComponentModels1 =
        FlutterFlowDynamicModels(() => VarientComponentModel());
    varientComponentModels2 =
        FlutterFlowDynamicModels(() => VarientComponentModel());
  }

  @override
  void dispose() {
    varientComponentModels1.dispose();
    varientComponentModels2.dispose();
  }
}
