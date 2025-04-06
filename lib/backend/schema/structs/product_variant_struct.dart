// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductVariantStruct extends BaseStruct {
  ProductVariantStruct({
    bool? isSelected,
    String? variantName,
    String? price,
  })  : _isSelected = isSelected,
        _variantName = variantName,
        _price = price;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "variantName" field.
  String? _variantName;
  String get variantName => _variantName ?? '';
  set variantName(String? val) => _variantName = val;

  bool hasVariantName() => _variantName != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static ProductVariantStruct fromMap(Map<String, dynamic> data) =>
      ProductVariantStruct(
        isSelected: data['isSelected'] as bool?,
        variantName: data['variantName'] as String?,
        price: data['price'] as String?,
      );

  static ProductVariantStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductVariantStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isSelected': _isSelected,
        'variantName': _variantName,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
        'variantName': serializeParam(
          _variantName,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductVariantStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductVariantStruct(
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
        variantName: deserializeParam(
          data['variantName'],
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
  String toString() => 'ProductVariantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductVariantStruct &&
        isSelected == other.isSelected &&
        variantName == other.variantName &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isSelected, variantName, price]);
}

ProductVariantStruct createProductVariantStruct({
  bool? isSelected,
  String? variantName,
  String? price,
}) =>
    ProductVariantStruct(
      isSelected: isSelected,
      variantName: variantName,
      price: price,
    );
