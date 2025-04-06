import '/components/best_seller1_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'grid_component_widget.dart' show GridComponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GridComponentModel extends FlutterFlowModel<GridComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for bestSeller1Component component.
  late BestSeller1ComponentModel bestSeller1ComponentModel1;
  // Model for bestSeller1Component component.
  late BestSeller1ComponentModel bestSeller1ComponentModel2;

  @override
  void initState(BuildContext context) {
    bestSeller1ComponentModel1 =
        createModel(context, () => BestSeller1ComponentModel());
    bestSeller1ComponentModel2 =
        createModel(context, () => BestSeller1ComponentModel());
  }

  @override
  void dispose() {
    bestSeller1ComponentModel1.dispose();
    bestSeller1ComponentModel2.dispose();
  }
}
