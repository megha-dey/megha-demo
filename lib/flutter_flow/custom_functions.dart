import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String getPriceofproductVariant(
  int qty,
  String price,
) {
  try {
    var amount = double.parse(price);
    var actualPrice = qty * amount;

    return "\u{20B9} ${actualPrice.toStringAsFixed(2)}";
  } catch (ex) {
    return "0.00";
  }
}

String toUpperCase(String value) {
  return value.toUpperCase();
}

String trimWhiteSpace(String? input) {
  if (input == null || input.isEmpty) {
    return "";
  }

  return input.trim();
}

double? addTwoNumbers(
  double first,
  double second,
) {
  return first + second;
}

double calculateSubTotal(List<CartItemStruct> cartList) {
  double subTotal = 0.0;

  if (cartList.isEmpty) {
    return subTotal;
  }

  for (int i = 0; i < cartList.length; i++) {
    var item = cartList[i];
    final qty = item.selectedQty;

    final variant = item.selectedVariant;
    double variantPrice = double.tryParse(variant.price) ?? 0.0;
    subTotal = subTotal + qty * variantPrice;
  }

  return subTotal;
}

String convertToDecimalRange(
  double amount,
  int range,
) {
  return amount.toStringAsFixed(range);
}

String constructImagePath(String imageName) {
  String baseUrl =
      'https://www.ajaskincare.in'; // FFDevEnvironmentValues().apiBaseUrl;

  print('Image : $baseUrl');
  return '$baseUrl/Images/$imageName';
}
