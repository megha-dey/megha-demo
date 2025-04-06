import '/components/best_seller1_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'grid_component_model.dart';
export 'grid_component_model.dart';

class GridComponentWidget extends StatefulWidget {
  const GridComponentWidget({super.key});

  @override
  State<GridComponentWidget> createState() => _GridComponentWidgetState();
}

class _GridComponentWidgetState extends State<GridComponentWidget> {
  late GridComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.0,
      ),
      scrollDirection: Axis.vertical,
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: wrapWithModel(
            model: _model.bestSeller1ComponentModel1,
            updateCallback: () => safeSetState(() {}),
            child: BestSeller1ComponentWidget(),
          ),
        ),
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: wrapWithModel(
            model: _model.bestSeller1ComponentModel2,
            updateCallback: () => safeSetState(() {}),
            child: BestSeller1ComponentWidget(),
          ),
        ),
      ],
    );
  }
}
