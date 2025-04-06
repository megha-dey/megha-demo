import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_mobile_footer_model.dart';
export 'new_mobile_footer_model.dart';

class NewMobileFooterWidget extends StatefulWidget {
  const NewMobileFooterWidget({super.key});

  @override
  State<NewMobileFooterWidget> createState() => _NewMobileFooterWidgetState();
}

class _NewMobileFooterWidgetState extends State<NewMobileFooterWidget> {
  late NewMobileFooterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewMobileFooterModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
