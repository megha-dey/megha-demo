// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VariantStruct extends BaseStruct {
  VariantStruct({
    String? variant,
    String? price,
  })  : _variant = variant,
        _price = price;

  // "variant" field.
  String? _variant;
  String get variant => _variant ?? '';
  set variant(String? val) => _variant = val;

  bool hasVariant() => _variant != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static VariantStruct fromMap(Map<String, dynamic> data) => VariantStruct(
        variant: data['variant'] as String?,
        price: data['price'] as String?,
      );

  static VariantStruct? maybeFromMap(dynamic data) =>
      data is Map ? VariantStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'variant': _variant,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'variant': serializeParam(
          _variant,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static VariantStruct fromSerializableMap(Map<String, dynamic> data) =>
      VariantStruct(
        variant: deserializeParam(
          data['variant'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VariantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VariantStruct &&
        variant == other.variant &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([variant, price]);
}

VariantStruct createVariantStruct({
  String? variant,
  String? price,
}) =>
    VariantStruct(
      variant: variant,
      price: price,
    );
