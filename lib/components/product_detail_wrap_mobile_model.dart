import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'product_detail_wrap_mobile_widget.dart'
    show ProductDetailWrapMobileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailWrapMobileModel
    extends FlutterFlowModel<ProductDetailWrapMobileWidget> {
  ///  Local state fields for this component.

  String selectedImage = 'https://picsum.photos/seed/49/600';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - checkImageListIsNotEmpty] action in ProductDetailWrapMobile widget.
  bool? imageList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
