import '/backend/schema/structs/index.dart';
import '/components/description_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'product_description_component_widget.dart'
    show ProductDescriptionComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDescriptionComponentModel
    extends FlutterFlowModel<ProductDescriptionComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // Models for DescriptionComponent dynamic component.
  late FlutterFlowDynamicModels<DescriptionComponentModel>
      descriptionComponentModels1;
  // Models for DescriptionComponent dynamic component.
  late FlutterFlowDynamicModels<DescriptionComponentModel>
      descriptionComponentModels2;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // Models for DescriptionComponent dynamic component.
  late FlutterFlowDynamicModels<DescriptionComponentModel>
      descriptionComponentModels3;
  // Models for DescriptionComponent dynamic component.
  late FlutterFlowDynamicModels<DescriptionComponentModel>
      descriptionComponentModels4;

  @override
  void initState(BuildContext context) {
    descriptionComponentModels1 =
        FlutterFlowDynamicModels(() => DescriptionComponentModel());
    descriptionComponentModels2 =
        FlutterFlowDynamicModels(() => DescriptionComponentModel());
    descriptionComponentModels3 =
        FlutterFlowDynamicModels(() => DescriptionComponentModel());
    descriptionComponentModels4 =
        FlutterFlowDynamicModels(() => DescriptionComponentModel());
  }

  @override
  void dispose() {
    tabBarController1?.dispose();
    descriptionComponentModels1.dispose();
    descriptionComponentModels2.dispose();
    tabBarController2?.dispose();
    descriptionComponentModels3.dispose();
    descriptionComponentModels4.dispose();
  }
}
