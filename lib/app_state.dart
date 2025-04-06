import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<ProductDataStruct> _productBanners = [];
  List<ProductDataStruct> get productBanners => _productBanners;
  set productBanners(List<ProductDataStruct> value) {
    _productBanners = value;
  }

  void addToProductBanners(ProductDataStruct value) {
    productBanners.add(value);
  }

  void removeFromProductBanners(ProductDataStruct value) {
    productBanners.remove(value);
  }

  void removeAtIndexFromProductBanners(int index) {
    productBanners.removeAt(index);
  }

  void updateProductBannersAtIndex(
    int index,
    ProductDataStruct Function(ProductDataStruct) updateFn,
  ) {
    productBanners[index] = updateFn(_productBanners[index]);
  }

  void insertAtIndexInProductBanners(int index, ProductDataStruct value) {
    productBanners.insert(index, value);
  }

  List<CategoryStruct> _categories = [];
  List<CategoryStruct> get categories => _categories;
  set categories(List<CategoryStruct> value) {
    _categories = value;
  }

  void addToCategories(CategoryStruct value) {
    categories.add(value);
  }

  void removeFromCategories(CategoryStruct value) {
    categories.remove(value);
  }

  void removeAtIndexFromCategories(int index) {
    categories.removeAt(index);
  }

  void updateCategoriesAtIndex(
    int index,
    CategoryStruct Function(CategoryStruct) updateFn,
  ) {
    categories[index] = updateFn(_categories[index]);
  }

  void insertAtIndexInCategories(int index, CategoryStruct value) {
    categories.insert(index, value);
  }

  List<CartItemStruct> _cartData = [];
  List<CartItemStruct> get cartData => _cartData;
  set cartData(List<CartItemStruct> value) {
    _cartData = value;
  }

  void addToCartData(CartItemStruct value) {
    cartData.add(value);
  }

  void removeFromCartData(CartItemStruct value) {
    cartData.remove(value);
  }

  void removeAtIndexFromCartData(int index) {
    cartData.removeAt(index);
  }

  void updateCartDataAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    cartData[index] = updateFn(_cartData[index]);
  }

  void insertAtIndexInCartData(int index, CartItemStruct value) {
    cartData.insert(index, value);
  }

  DeliveryInfoStruct _deliveryInfoData = DeliveryInfoStruct();
  DeliveryInfoStruct get deliveryInfoData => _deliveryInfoData;
  set deliveryInfoData(DeliveryInfoStruct value) {
    _deliveryInfoData = value;
  }

  void updateDeliveryInfoDataStruct(Function(DeliveryInfoStruct) updateFn) {
    updateFn(_deliveryInfoData);
  }

  String _productMainImage = '';
  String get productMainImage => _productMainImage;
  set productMainImage(String value) {
    _productMainImage = value;
  }
}
