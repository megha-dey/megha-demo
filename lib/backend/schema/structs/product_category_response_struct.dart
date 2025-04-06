// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductCategoryResponseStruct extends BaseStruct {
  ProductCategoryResponseStruct({
    List<CategoryStruct>? category,
    ProductDetailDataStruct? product,
  })  : _category = category,
        _product = product;

  // "category" field.
  List<CategoryStruct>? _category;
  List<CategoryStruct> get category => _category ?? const [];
  set category(List<CategoryStruct>? val) => _category = val;

  void updateCategory(Function(List<CategoryStruct>) updateFn) {
    updateFn(_category ??= []);
  }

  bool hasCategory() => _category != null;

  // "product" field.
  ProductDetailDataStruct? _product;
  ProductDetailDataStruct get product => _product ?? ProductDetailDataStruct();
  set product(ProductDetailDataStruct? val) => _product = val;

  void updateProduct(Function(ProductDetailDataStruct) updateFn) {
    updateFn(_product ??= ProductDetailDataStruct());
  }

  bool hasProduct() => _product != null;

  static ProductCategoryResponseStruct fromMap(Map<String, dynamic> data) =>
      ProductCategoryResponseStruct(
        category: getStructList(
          data['category'],
          CategoryStruct.fromMap,
        ),
        product: data['product'] is ProductDetailDataStruct
            ? data['product']
            : ProductDetailDataStruct.maybeFromMap(data['product']),
      );

  static ProductCategoryResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ProductCategoryResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'category': _category?.map((e) => e.toMap()).toList(),
        'product': _product?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
          isList: true,
        ),
        'product': serializeParam(
          _product,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProductCategoryResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductCategoryResponseStruct(
        category: deserializeStructParam<CategoryStruct>(
          data['category'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        product: deserializeStructParam(
          data['product'],
          ParamType.DataStruct,
          false,
          structBuilder: ProductDetailDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductCategoryResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductCategoryResponseStruct &&
        listEquality.equals(category, other.category) &&
        product == other.product;
  }

  @override
  int get hashCode => const ListEquality().hash([category, product]);
}

ProductCategoryResponseStruct createProductCategoryResponseStruct({
  ProductDetailDataStruct? product,
}) =>
    ProductCategoryResponseStruct(
      product: product ?? ProductDetailDataStruct(),
    );
