// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemStruct extends BaseStruct {
  CartItemStruct({
    String? cartId,
    String? productCode,
    String? productName,
    String? productImage,
    int? selectedQty,
    VariantStruct? selectedVariant,
  })  : _cartId = cartId,
        _productCode = productCode,
        _productName = productName,
        _productImage = productImage,
        _selectedQty = selectedQty,
        _selectedVariant = selectedVariant;

  // "cartId" field.
  String? _cartId;
  String get cartId => _cartId ?? '';
  set cartId(String? val) => _cartId = val;

  bool hasCartId() => _cartId != null;

  // "productCode" field.
  String? _productCode;
  String get productCode => _productCode ?? '';
  set productCode(String? val) => _productCode = val;

  bool hasProductCode() => _productCode != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "productImage" field.
  String? _productImage;
  String get productImage => _productImage ?? '';
  set productImage(String? val) => _productImage = val;

  bool hasProductImage() => _productImage != null;

  // "selectedQty" field.
  int? _selectedQty;
  int get selectedQty => _selectedQty ?? 0;
  set selectedQty(int? val) => _selectedQty = val;

  void incrementSelectedQty(int amount) => selectedQty = selectedQty + amount;

  bool hasSelectedQty() => _selectedQty != null;

  // "selectedVariant" field.
  VariantStruct? _selectedVariant;
  VariantStruct get selectedVariant => _selectedVariant ?? VariantStruct();
  set selectedVariant(VariantStruct? val) => _selectedVariant = val;

  void updateSelectedVariant(Function(VariantStruct) updateFn) {
    updateFn(_selectedVariant ??= VariantStruct());
  }

  bool hasSelectedVariant() => _selectedVariant != null;

  static CartItemStruct fromMap(Map<String, dynamic> data) => CartItemStruct(
        cartId: data['cartId'] as String?,
        productCode: data['productCode'] as String?,
        productName: data['productName'] as String?,
        productImage: data['productImage'] as String?,
        selectedQty: castToType<int>(data['selectedQty']),
        selectedVariant: data['selectedVariant'] is VariantStruct
            ? data['selectedVariant']
            : VariantStruct.maybeFromMap(data['selectedVariant']),
      );

  static CartItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cartId': _cartId,
        'productCode': _productCode,
        'productName': _productName,
        'productImage': _productImage,
        'selectedQty': _selectedQty,
        'selectedVariant': _selectedVariant?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cartId': serializeParam(
          _cartId,
          ParamType.String,
        ),
        'productCode': serializeParam(
          _productCode,
          ParamType.String,
        ),
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'productImage': serializeParam(
          _productImage,
          ParamType.String,
        ),
        'selectedQty': serializeParam(
          _selectedQty,
          ParamType.int,
        ),
        'selectedVariant': serializeParam(
          _selectedVariant,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CartItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemStruct(
        cartId: deserializeParam(
          data['cartId'],
          ParamType.String,
          false,
        ),
        productCode: deserializeParam(
          data['productCode'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        productImage: deserializeParam(
          data['productImage'],
          ParamType.String,
          false,
        ),
        selectedQty: deserializeParam(
          data['selectedQty'],
          ParamType.int,
          false,
        ),
        selectedVariant: deserializeStructParam(
          data['selectedVariant'],
          ParamType.DataStruct,
          false,
          structBuilder: VariantStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CartItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemStruct &&
        cartId == other.cartId &&
        productCode == other.productCode &&
        productName == other.productName &&
        productImage == other.productImage &&
        selectedQty == other.selectedQty &&
        selectedVariant == other.selectedVariant;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cartId,
        productCode,
        productName,
        productImage,
        selectedQty,
        selectedVariant
      ]);
}

CartItemStruct createCartItemStruct({
  String? cartId,
  String? productCode,
  String? productName,
  String? productImage,
  int? selectedQty,
  VariantStruct? selectedVariant,
}) =>
    CartItemStruct(
      cartId: cartId,
      productCode: productCode,
      productName: productName,
      productImage: productImage,
      selectedQty: selectedQty,
      selectedVariant: selectedVariant ?? VariantStruct(),
    );
