// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomeDataStruct extends BaseStruct {
  HomeDataStruct({
    List<ProductDataStruct>? banner,
    List<ProductDataStruct>? bestSellers,
    List<ProductDataStruct>? partyReady,
    List<CategoryStruct>? categories,
  })  : _banner = banner,
        _bestSellers = bestSellers,
        _partyReady = partyReady,
        _categories = categories;

  // "banner" field.
  List<ProductDataStruct>? _banner;
  List<ProductDataStruct> get banner => _banner ?? const [];
  set banner(List<ProductDataStruct>? val) => _banner = val;

  void updateBanner(Function(List<ProductDataStruct>) updateFn) {
    updateFn(_banner ??= []);
  }

  bool hasBanner() => _banner != null;

  // "bestSellers" field.
  List<ProductDataStruct>? _bestSellers;
  List<ProductDataStruct> get bestSellers => _bestSellers ?? const [];
  set bestSellers(List<ProductDataStruct>? val) => _bestSellers = val;

  void updateBestSellers(Function(List<ProductDataStruct>) updateFn) {
    updateFn(_bestSellers ??= []);
  }

  bool hasBestSellers() => _bestSellers != null;

  // "partyReady" field.
  List<ProductDataStruct>? _partyReady;
  List<ProductDataStruct> get partyReady => _partyReady ?? const [];
  set partyReady(List<ProductDataStruct>? val) => _partyReady = val;

  void updatePartyReady(Function(List<ProductDataStruct>) updateFn) {
    updateFn(_partyReady ??= []);
  }

  bool hasPartyReady() => _partyReady != null;

  // "categories" field.
  List<CategoryStruct>? _categories;
  List<CategoryStruct> get categories => _categories ?? const [];
  set categories(List<CategoryStruct>? val) => _categories = val;

  void updateCategories(Function(List<CategoryStruct>) updateFn) {
    updateFn(_categories ??= []);
  }

  bool hasCategories() => _categories != null;

  static HomeDataStruct fromMap(Map<String, dynamic> data) => HomeDataStruct(
        banner: getStructList(
          data['banner'],
          ProductDataStruct.fromMap,
        ),
        bestSellers: getStructList(
          data['bestSellers'],
          ProductDataStruct.fromMap,
        ),
        partyReady: getStructList(
          data['partyReady'],
          ProductDataStruct.fromMap,
        ),
        categories: getStructList(
          data['categories'],
          CategoryStruct.fromMap,
        ),
      );

  static HomeDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? HomeDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'banner': _banner?.map((e) => e.toMap()).toList(),
        'bestSellers': _bestSellers?.map((e) => e.toMap()).toList(),
        'partyReady': _partyReady?.map((e) => e.toMap()).toList(),
        'categories': _categories?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'banner': serializeParam(
          _banner,
          ParamType.DataStruct,
          isList: true,
        ),
        'bestSellers': serializeParam(
          _bestSellers,
          ParamType.DataStruct,
          isList: true,
        ),
        'partyReady': serializeParam(
          _partyReady,
          ParamType.DataStruct,
          isList: true,
        ),
        'categories': serializeParam(
          _categories,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static HomeDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      HomeDataStruct(
        banner: deserializeStructParam<ProductDataStruct>(
          data['banner'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductDataStruct.fromSerializableMap,
        ),
        bestSellers: deserializeStructParam<ProductDataStruct>(
          data['bestSellers'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductDataStruct.fromSerializableMap,
        ),
        partyReady: deserializeStructParam<ProductDataStruct>(
          data['partyReady'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductDataStruct.fromSerializableMap,
        ),
        categories: deserializeStructParam<CategoryStruct>(
          data['categories'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HomeDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HomeDataStruct &&
        listEquality.equals(banner, other.banner) &&
        listEquality.equals(bestSellers, other.bestSellers) &&
        listEquality.equals(partyReady, other.partyReady) &&
        listEquality.equals(categories, other.categories);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([banner, bestSellers, partyReady, categories]);
}

HomeDataStruct createHomeDataStruct() => HomeDataStruct();
