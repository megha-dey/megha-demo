import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/expand_widget.dart';
import '/components/footer_component_web_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/components/product_description_component_widget.dart';
import '/components/product_detail_image_group_component_web_widget.dart';
import '/components/product_detail_wrap_mobile_widget.dart';
import '/components/product_summary_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'product_detail_widget.dart' show ProductDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailModel extends FlutterFlowModel<ProductDetailWidget> {
  ///  Local state fields for this page.

  List<String> images = [];
  void addToImages(String item) => images.add(item);
  void removeFromImages(String item) => images.remove(item);
  void removeAtIndexFromImages(int index) => images.removeAt(index);
  void insertAtIndexInImages(int index, String item) =>
      images.insert(index, item);
  void updateImagesAtIndex(int index, Function(String) updateFn) =>
      images[index] = updateFn(images[index]);

  ProductDataStruct? productData;
  void updateProductDataStruct(Function(ProductDataStruct) updateFn) {
    updateFn(productData ??= ProductDataStruct());
  }

  List<DescriptionItemStruct> benefits = [];
  void addToBenefits(DescriptionItemStruct item) => benefits.add(item);
  void removeFromBenefits(DescriptionItemStruct item) => benefits.remove(item);
  void removeAtIndexFromBenefits(int index) => benefits.removeAt(index);
  void insertAtIndexInBenefits(int index, DescriptionItemStruct item) =>
      benefits.insert(index, item);
  void updateBenefitsAtIndex(
          int index, Function(DescriptionItemStruct) updateFn) =>
      benefits[index] = updateFn(benefits[index]);

  List<DescriptionItemStruct> ingredients = [];
  void addToIngredients(DescriptionItemStruct item) => ingredients.add(item);
  void removeFromIngredients(DescriptionItemStruct item) =>
      ingredients.remove(item);
  void removeAtIndexFromIngredients(int index) => ingredients.removeAt(index);
  void insertAtIndexInIngredients(int index, DescriptionItemStruct item) =>
      ingredients.insert(index, item);
  void updateIngredientsAtIndex(
          int index, Function(DescriptionItemStruct) updateFn) =>
      ingredients[index] = updateFn(ingredients[index]);

  String? howToUse;

  String story = 'NA';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetProduct)] action in ProductDetail widget.
  ApiCallResponse? productDetail;
  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // Model for ProductDetailImageGroupComponentWeb component.
  late ProductDetailImageGroupComponentWebModel
      productDetailImageGroupComponentWebModel;
  // Model for ProductSummaryComponent component.
  late ProductSummaryComponentModel productSummaryComponentModel1;
  // Model for ProductDetailWrapMobile component.
  late ProductDetailWrapMobileModel productDetailWrapMobileModel;
  // Model for ProductSummaryComponent component.
  late ProductSummaryComponentModel productSummaryComponentModel2;
  // Model for ProductDescriptionComponent component.
  late ProductDescriptionComponentModel productDescriptionComponentModel;
  // Model for FooterComponentWeb component.
  late FooterComponentWebModel footerComponentWebModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;
  // Model for expand component.
  late ExpandModel expandModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    productDetailImageGroupComponentWebModel =
        createModel(context, () => ProductDetailImageGroupComponentWebModel());
    productSummaryComponentModel1 =
        createModel(context, () => ProductSummaryComponentModel());
    productDetailWrapMobileModel =
        createModel(context, () => ProductDetailWrapMobileModel());
    productSummaryComponentModel2 =
        createModel(context, () => ProductSummaryComponentModel());
    productDescriptionComponentModel =
        createModel(context, () => ProductDescriptionComponentModel());
    footerComponentWebModel =
        createModel(context, () => FooterComponentWebModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
    expandModel = createModel(context, () => ExpandModel());
  }

  @override
  void dispose() {
    mobileHeaderModel.dispose();
    headerComponentWebModel.dispose();
    productDetailImageGroupComponentWebModel.dispose();
    productSummaryComponentModel1.dispose();
    productDetailWrapMobileModel.dispose();
    productSummaryComponentModel2.dispose();
    productDescriptionComponentModel.dispose();
    footerComponentWebModel.dispose();
    footerMobileModel.dispose();
    expandModel.dispose();
  }
}
