// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateCartItems(CartItemStruct data) async {
  // Add your function code here!

  var cartData = FFAppState().cartData;

  if (cartData.isEmpty) {
    cartData.add(data);
  } else {
    for (int i = 0; i < cartData.length; i++) {
      if (cartData[i].cartId == data.cartId) {
        FFAppState().update(() {
          cartData[i].selectedQty = cartData[i].selectedQty + data.selectedQty;
        });
        return;
      }
    }
    FFAppState().cartData.add(data);
  }

  print('Cart Data : ${FFAppState().cartData}');
}
