import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/best_seller_component_widget.dart';
import '/components/best_sellers2_widget.dart';
import '/components/expand_widget.dart';
import '/components/footer_component_web_widget.dart';
import '/components/footer_mobile_widget.dart';
import '/components/header_component_web_widget.dart';
import '/components/mobile_header_widget.dart';
import '/components/new_mobile_footer_widget.dart';
import '/components/offer_page_component_mobile_widget.dart';
import '/components/offer_page_component_web_widget.dart';
import '/components/shop_by_category_web_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  Local state fields for this page.

  List<ProductDataStruct> banners = [];
  void addToBanners(ProductDataStruct item) => banners.add(item);
  void removeFromBanners(ProductDataStruct item) => banners.remove(item);
  void removeAtIndexFromBanners(int index) => banners.removeAt(index);
  void insertAtIndexInBanners(int index, ProductDataStruct item) =>
      banners.insert(index, item);
  void updateBannersAtIndex(int index, Function(ProductDataStruct) updateFn) =>
      banners[index] = updateFn(banners[index]);

  List<CategoryStruct> categories = [];
  void addToCategories(CategoryStruct item) => categories.add(item);
  void removeFromCategories(CategoryStruct item) => categories.remove(item);
  void removeAtIndexFromCategories(int index) => categories.removeAt(index);
  void insertAtIndexInCategories(int index, CategoryStruct item) =>
      categories.insert(index, item);
  void updateCategoriesAtIndex(int index, Function(CategoryStruct) updateFn) =>
      categories[index] = updateFn(categories[index]);

  List<ProductDataStruct> bestSellers = [];
  void addToBestSellers(ProductDataStruct item) => bestSellers.add(item);
  void removeFromBestSellers(ProductDataStruct item) =>
      bestSellers.remove(item);
  void removeAtIndexFromBestSellers(int index) => bestSellers.removeAt(index);
  void insertAtIndexInBestSellers(int index, ProductDataStruct item) =>
      bestSellers.insert(index, item);
  void updateBestSellersAtIndex(
          int index, Function(ProductDataStruct) updateFn) =>
      bestSellers[index] = updateFn(bestSellers[index]);

  List<int> bestSellerSections = [];
  void addToBestSellerSections(int item) => bestSellerSections.add(item);
  void removeFromBestSellerSections(int item) =>
      bestSellerSections.remove(item);
  void removeAtIndexFromBestSellerSections(int index) =>
      bestSellerSections.removeAt(index);
  void insertAtIndexInBestSellerSections(int index, int item) =>
      bestSellerSections.insert(index, item);
  void updateBestSellerSectionsAtIndex(int index, Function(int) updateFn) =>
      bestSellerSections[index] = updateFn(bestSellerSections[index]);

  List<ProductDataStruct> partyReady = [];
  void addToPartyReady(ProductDataStruct item) => partyReady.add(item);
  void removeFromPartyReady(ProductDataStruct item) => partyReady.remove(item);
  void removeAtIndexFromPartyReady(int index) => partyReady.removeAt(index);
  void insertAtIndexInPartyReady(int index, ProductDataStruct item) =>
      partyReady.insert(index, item);
  void updatePartyReadyAtIndex(
          int index, Function(ProductDataStruct) updateFn) =>
      partyReady[index] = updateFn(partyReady[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetHomePageData)] action in HomeScreen widget.
  ApiCallResponse? homeResult;
  // Stores action output result for [Custom Action - numberOfSections] action in HomeScreen widget.
  List<int>? sections;
  // Model for NewMobileFooter component.
  late NewMobileFooterModel newMobileFooterModel;
  // Model for expand component.
  late ExpandModel expandModel;
  // Model for MobileHeader component.
  late MobileHeaderModel mobileHeaderModel;
  // Model for HeaderComponentWeb component.
  late HeaderComponentWebModel headerComponentWebModel;
  // Model for OfferPageComponentMobile component.
  late OfferPageComponentMobileModel offerPageComponentMobileModel;
  // Model for OfferPageComponentWeb component.
  late OfferPageComponentWebModel offerPageComponentWebModel;
  // Models for ShopByCategoryWeb dynamic component.
  late FlutterFlowDynamicModels<ShopByCategoryWebModel> shopByCategoryWebModels;
  // Model for FooterComponentWeb component.
  late FooterComponentWebModel footerComponentWebModel;
  // Models for BestSellerComponent dynamic component.
  late FlutterFlowDynamicModels<BestSellerComponentModel>
      bestSellerComponentModels3;
  // Model for FooterMobile component.
  late FooterMobileModel footerMobileModel;
  // Model for BestSellers2 component.
  late BestSellers2Model bestSellers2Model;

  @override
  void initState(BuildContext context) {
    newMobileFooterModel = createModel(context, () => NewMobileFooterModel());
    expandModel = createModel(context, () => ExpandModel());
    mobileHeaderModel = createModel(context, () => MobileHeaderModel());
    headerComponentWebModel =
        createModel(context, () => HeaderComponentWebModel());
    offerPageComponentMobileModel =
        createModel(context, () => OfferPageComponentMobileModel());
    offerPageComponentWebModel =
        createModel(context, () => OfferPageComponentWebModel());
    shopByCategoryWebModels =
        FlutterFlowDynamicModels(() => ShopByCategoryWebModel());
    footerComponentWebModel =
        createModel(context, () => FooterComponentWebModel());
    bestSellerComponentModels3 =
        FlutterFlowDynamicModels(() => BestSellerComponentModel());
    footerMobileModel = createModel(context, () => FooterMobileModel());
    bestSellers2Model = createModel(context, () => BestSellers2Model());
  }

  @override
  void dispose() {
    newMobileFooterModel.dispose();
    expandModel.dispose();
    mobileHeaderModel.dispose();
    headerComponentWebModel.dispose();
    offerPageComponentMobileModel.dispose();
    offerPageComponentWebModel.dispose();
    shopByCategoryWebModels.dispose();
    footerComponentWebModel.dispose();
    bestSellerComponentModels3.dispose();
    footerMobileModel.dispose();
    bestSellers2Model.dispose();
  }
}
