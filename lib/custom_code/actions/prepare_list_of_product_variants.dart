// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<ProductVariantStruct>> prepareListOfProductVariants(
    List<VariantStruct> items) async {
  // Add your function code here!
  List<ProductVariantStruct> variants = [];

  for (VariantStruct item in items) {
    variants.add(ProductVariantStruct(
        isSelected: false, variantName: item.variant, price: item.price));
  }

  variants[0].isSelected = true;

  return variants;
}
