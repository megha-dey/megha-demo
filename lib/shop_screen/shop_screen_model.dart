import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/category_product_widget.dart';
import '/components/expand_widget.dart';
import '/components/footer_component_web_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/components/new_mobile_footer_widget.dart';
import '/components/offer_page_component_web_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'shop_screen_widget.dart' show ShopScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopScreenModel extends FlutterFlowModel<ShopScreenWidget> {
  ///  Local state fields for this page.

  List<CategoryStruct> productOfCategories = [];
  void addToProductOfCategories(CategoryStruct item) =>
      productOfCategories.add(item);
  void removeFromProductOfCategories(CategoryStruct item) =>
      productOfCategories.remove(item);
  void removeAtIndexFromProductOfCategories(int index) =>
      productOfCategories.removeAt(index);
  void insertAtIndexInProductOfCategories(int index, CategoryStruct item) =>
      productOfCategories.insert(index, item);
  void updateProductOfCategoriesAtIndex(
          int index, Function(CategoryStruct) updateFn) =>
      productOfCategories[index] = updateFn(productOfCategories[index]);

  String? selectedCategory;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetProduct)] action in ShopScreen widget.
  ApiCallResponse? categoryResult;
  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // Model for OfferPageComponentWeb component.
  late OfferPageComponentWebModel offerPageComponentWebModel;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;
  // Stores action output result for [Backend Call - API (GetProduct)] action in Container widget.
  ApiCallResponse? categoriesProduct;
  // Models for CategoryProduct dynamic component.
  late FlutterFlowDynamicModels<CategoryProductModel> categoryProductModels3;
  // Model for FooterComponentWeb component.
  late FooterComponentWebModel footerComponentWebModel;
  // Model for NewMobileFooter component.
  late NewMobileFooterModel newMobileFooterModel;
  // Model for expand component.
  late ExpandModel expandModel;

  @override
  void initState(BuildContext context) {
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    offerPageComponentWebModel =
        createModel(context, () => OfferPageComponentWebModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
    categoryProductModels3 =
        FlutterFlowDynamicModels(() => CategoryProductModel());
    footerComponentWebModel =
        createModel(context, () => FooterComponentWebModel());
    newMobileFooterModel = createModel(context, () => NewMobileFooterModel());
    expandModel = createModel(context, () => ExpandModel());
  }

  @override
  void dispose() {
    mobileHeaderModel.dispose();
    headerComponentWebModel.dispose();
    offerPageComponentWebModel.dispose();
    footerMobileModel.dispose();
    categoryProductModels3.dispose();
    footerComponentWebModel.dispose();
    newMobileFooterModel.dispose();
    expandModel.dispose();
  }
}
