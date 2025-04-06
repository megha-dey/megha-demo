// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataStruct extends BaseStruct {
  ProductDataStruct({
    String? category,
    String? title,
    String? shortDescription,
    String? price,
    String? image,
    String? code,
    List<VariantStruct>? variants,
    String? longDescription,
  })  : _category = category,
        _title = title,
        _shortDescription = shortDescription,
        _price = price,
        _image = image,
        _code = code,
        _variants = variants,
        _longDescription = longDescription;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  set shortDescription(String? val) => _shortDescription = val;

  bool hasShortDescription() => _shortDescription != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "variants" field.
  List<VariantStruct>? _variants;
  List<VariantStruct> get variants => _variants ?? const [];
  set variants(List<VariantStruct>? val) => _variants = val;

  void updateVariants(Function(List<VariantStruct>) updateFn) {
    updateFn(_variants ??= []);
  }

  bool hasVariants() => _variants != null;

  // "longDescription" field.
  String? _longDescription;
  String get longDescription => _longDescription ?? '';
  set longDescription(String? val) => _longDescription = val;

  bool hasLongDescription() => _longDescription != null;

  static ProductDataStruct fromMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        category: data['category'] as String?,
        title: data['title'] as String?,
        shortDescription: data['shortDescription'] as String?,
        price: data['price'] as String?,
        image: data['image'] as String?,
        code: data['code'] as String?,
        variants: getStructList(
          data['variants'],
          VariantStruct.fromMap,
        ),
        longDescription: data['longDescription'] as String?,
      );

  static ProductDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category': _category,
        'title': _title,
        'shortDescription': _shortDescription,
        'price': _price,
        'image': _image,
        'code': _code,
        'variants': _variants?.map((e) => e.toMap()).toList(),
        'longDescription': _longDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'shortDescription': serializeParam(
          _shortDescription,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'variants': serializeParam(
          _variants,
          ParamType.DataStruct,
          isList: true,
        ),
        'longDescription': serializeParam(
          _longDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        shortDescription: deserializeParam(
          data['shortDescription'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        variants: deserializeStructParam<VariantStruct>(
          data['variants'],
          ParamType.DataStruct,
          true,
          structBuilder: VariantStruct.fromSerializableMap,
        ),
        longDescription: deserializeParam(
          data['longDescription'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductDataStruct &&
        category == other.category &&
        title == other.title &&
        shortDescription == other.shortDescription &&
        price == other.price &&
        image == other.image &&
        code == other.code &&
        listEquality.equals(variants, other.variants) &&
        longDescription == other.longDescription;
  }

  @override
  int get hashCode => const ListEquality().hash([
        category,
        title,
        shortDescription,
        price,
        image,
        code,
        variants,
        longDescription
      ]);
}

ProductDataStruct createProductDataStruct({
  String? category,
  String? title,
  String? shortDescription,
  String? price,
  String? image,
  String? code,
  String? longDescription,
}) =>
    ProductDataStruct(
      category: category,
      title: title,
      shortDescription: shortDescription,
      price: price,
      image: image,
      code: code,
      longDescription: longDescription,
    );
