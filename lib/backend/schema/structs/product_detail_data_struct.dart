// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDetailDataStruct extends BaseStruct {
  ProductDetailDataStruct({
    String? code,
    String? category,
    String? title,
    String? shortDescription,
    String? price,
    String? longDescription,
    List<String>? imageGroup,
    String? imageMain,
    List<DescriptionItemStruct>? benefits,
    List<DescriptionItemStruct>? ingredients,
    List<VariantStruct>? variant,
    String? howToUse,
    String? story,
  })  : _code = code,
        _category = category,
        _title = title,
        _shortDescription = shortDescription,
        _price = price,
        _longDescription = longDescription,
        _imageGroup = imageGroup,
        _imageMain = imageMain,
        _benefits = benefits,
        _ingredients = ingredients,
        _variant = variant,
        _howToUse = howToUse,
        _story = story;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

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

  // "longDescription" field.
  String? _longDescription;
  String get longDescription => _longDescription ?? '';
  set longDescription(String? val) => _longDescription = val;

  bool hasLongDescription() => _longDescription != null;

  // "imageGroup" field.
  List<String>? _imageGroup;
  List<String> get imageGroup => _imageGroup ?? const [];
  set imageGroup(List<String>? val) => _imageGroup = val;

  void updateImageGroup(Function(List<String>) updateFn) {
    updateFn(_imageGroup ??= []);
  }

  bool hasImageGroup() => _imageGroup != null;

  // "imageMain" field.
  String? _imageMain;
  String get imageMain => _imageMain ?? '';
  set imageMain(String? val) => _imageMain = val;

  bool hasImageMain() => _imageMain != null;

  // "benefits" field.
  List<DescriptionItemStruct>? _benefits;
  List<DescriptionItemStruct> get benefits => _benefits ?? const [];
  set benefits(List<DescriptionItemStruct>? val) => _benefits = val;

  void updateBenefits(Function(List<DescriptionItemStruct>) updateFn) {
    updateFn(_benefits ??= []);
  }

  bool hasBenefits() => _benefits != null;

  // "ingredients" field.
  List<DescriptionItemStruct>? _ingredients;
  List<DescriptionItemStruct> get ingredients => _ingredients ?? const [];
  set ingredients(List<DescriptionItemStruct>? val) => _ingredients = val;

  void updateIngredients(Function(List<DescriptionItemStruct>) updateFn) {
    updateFn(_ingredients ??= []);
  }

  bool hasIngredients() => _ingredients != null;

  // "variant" field.
  List<VariantStruct>? _variant;
  List<VariantStruct> get variant => _variant ?? const [];
  set variant(List<VariantStruct>? val) => _variant = val;

  void updateVariant(Function(List<VariantStruct>) updateFn) {
    updateFn(_variant ??= []);
  }

  bool hasVariant() => _variant != null;

  // "howToUse" field.
  String? _howToUse;
  String get howToUse => _howToUse ?? '';
  set howToUse(String? val) => _howToUse = val;

  bool hasHowToUse() => _howToUse != null;

  // "story" field.
  String? _story;
  String get story => _story ?? '';
  set story(String? val) => _story = val;

  bool hasStory() => _story != null;

  static ProductDetailDataStruct fromMap(Map<String, dynamic> data) =>
      ProductDetailDataStruct(
        code: data['code'] as String?,
        category: data['category'] as String?,
        title: data['title'] as String?,
        shortDescription: data['shortDescription'] as String?,
        price: data['price'] as String?,
        longDescription: data['longDescription'] as String?,
        imageGroup: getDataList(data['imageGroup']),
        imageMain: data['imageMain'] as String?,
        benefits: getStructList(
          data['benefits'],
          DescriptionItemStruct.fromMap,
        ),
        ingredients: getStructList(
          data['ingredients'],
          DescriptionItemStruct.fromMap,
        ),
        variant: getStructList(
          data['variant'],
          VariantStruct.fromMap,
        ),
        howToUse: data['howToUse'] as String?,
        story: data['story'] as String?,
      );

  static ProductDetailDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDetailDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'category': _category,
        'title': _title,
        'shortDescription': _shortDescription,
        'price': _price,
        'longDescription': _longDescription,
        'imageGroup': _imageGroup,
        'imageMain': _imageMain,
        'benefits': _benefits?.map((e) => e.toMap()).toList(),
        'ingredients': _ingredients?.map((e) => e.toMap()).toList(),
        'variant': _variant?.map((e) => e.toMap()).toList(),
        'howToUse': _howToUse,
        'story': _story,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
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
        'longDescription': serializeParam(
          _longDescription,
          ParamType.String,
        ),
        'imageGroup': serializeParam(
          _imageGroup,
          ParamType.String,
          isList: true,
        ),
        'imageMain': serializeParam(
          _imageMain,
          ParamType.String,
        ),
        'benefits': serializeParam(
          _benefits,
          ParamType.DataStruct,
          isList: true,
        ),
        'ingredients': serializeParam(
          _ingredients,
          ParamType.DataStruct,
          isList: true,
        ),
        'variant': serializeParam(
          _variant,
          ParamType.DataStruct,
          isList: true,
        ),
        'howToUse': serializeParam(
          _howToUse,
          ParamType.String,
        ),
        'story': serializeParam(
          _story,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductDetailDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductDetailDataStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
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
        longDescription: deserializeParam(
          data['longDescription'],
          ParamType.String,
          false,
        ),
        imageGroup: deserializeParam<String>(
          data['imageGroup'],
          ParamType.String,
          true,
        ),
        imageMain: deserializeParam(
          data['imageMain'],
          ParamType.String,
          false,
        ),
        benefits: deserializeStructParam<DescriptionItemStruct>(
          data['benefits'],
          ParamType.DataStruct,
          true,
          structBuilder: DescriptionItemStruct.fromSerializableMap,
        ),
        ingredients: deserializeStructParam<DescriptionItemStruct>(
          data['ingredients'],
          ParamType.DataStruct,
          true,
          structBuilder: DescriptionItemStruct.fromSerializableMap,
        ),
        variant: deserializeStructParam<VariantStruct>(
          data['variant'],
          ParamType.DataStruct,
          true,
          structBuilder: VariantStruct.fromSerializableMap,
        ),
        howToUse: deserializeParam(
          data['howToUse'],
          ParamType.String,
          false,
        ),
        story: deserializeParam(
          data['story'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductDetailDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductDetailDataStruct &&
        code == other.code &&
        category == other.category &&
        title == other.title &&
        shortDescription == other.shortDescription &&
        price == other.price &&
        longDescription == other.longDescription &&
        listEquality.equals(imageGroup, other.imageGroup) &&
        imageMain == other.imageMain &&
        listEquality.equals(benefits, other.benefits) &&
        listEquality.equals(ingredients, other.ingredients) &&
        listEquality.equals(variant, other.variant) &&
        howToUse == other.howToUse &&
        story == other.story;
  }

  @override
  int get hashCode => const ListEquality().hash([
        code,
        category,
        title,
        shortDescription,
        price,
        longDescription,
        imageGroup,
        imageMain,
        benefits,
        ingredients,
        variant,
        howToUse,
        story
      ]);
}

ProductDetailDataStruct createProductDetailDataStruct({
  String? code,
  String? category,
  String? title,
  String? shortDescription,
  String? price,
  String? longDescription,
  String? imageMain,
  String? howToUse,
  String? story,
}) =>
    ProductDetailDataStruct(
      code: code,
      category: category,
      title: title,
      shortDescription: shortDescription,
      price: price,
      longDescription: longDescription,
      imageMain: imageMain,
      howToUse: howToUse,
      story: story,
    );
