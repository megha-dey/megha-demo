// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fluttertoast/fluttertoast.dart';

Future showToast(
  BuildContext context,
  Color? bgColor,
  String? message,
) async {
  FToast fToast = FToast();

  fToast.init(context);

  Widget toast = Center(
      child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: bgColor),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 12.0,
        ),
        Flexible(
          child: Text(message ?? "",
              maxLines: 2, style: TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ],
    ),
  ));

  fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: Duration(seconds: 2),
      positionedToastBuilder: (context, child, ToastGravity) {
        return Positioned(
          child: child,
          top: 40.0,
          left: MediaQuery.of(context).size.width * 0.10,
          right: MediaQuery.of(context).size.width * 0.10,
        );
      });
}
