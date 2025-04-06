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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shop_screen_model.dart';
export 'shop_screen_model.dart';

class ShopScreenWidget extends StatefulWidget {
  const ShopScreenWidget({
    super.key,
    required this.categoryCode,
  });

  final String? categoryCode;

  static String routeName = 'ShopScreen';
  static String routePath = '/shopScreen';

  @override
  State<ShopScreenWidget> createState() => _ShopScreenWidgetState();
}

class _ShopScreenWidgetState extends State<ShopScreenWidget> {
  late ShopScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.categoryResult = await GetProductCall.call(
        operation: 'C',
        code: widget!.categoryCode,
      );

      if ((_model.categoryResult?.succeeded ?? true)) {
        _model.productOfCategories = ProductDetailResponseStruct.maybeFromMap(
                (_model.categoryResult?.jsonBody ?? ''))!
            .data
            .category
            .toList()
            .cast<CategoryStruct>();
        _model.selectedCategory = FFAppState().categories.firstOrNull?.name;
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: GetProductCall.call(
        operation: 'C',
        code: widget!.categoryCode,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 100.0,
                height: 100.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final shopScreenGetProductResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Drawer(
              elevation: 16.0,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'SHOP',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodySmallFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodySmallFamily),
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Icon(
                                Icons.close,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      wrapWithModel(
                        model: _model.newMobileFooterModel,
                        updateCallback: () => safeSetState(() {}),
                        child: NewMobileFooterWidget(),
                      ),
                    wrapWithModel(
                      model: _model.expandModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ExpandWidget(),
                    ),
                  ],
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      wrapWithModel(
                        model: _model.mobileHeaderModel,
                        updateCallback: () => safeSetState(() {}),
                        child: MobileHeaderWidget(),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: wrapWithModel(
                          model: _model.headerComponentWebModel,
                          updateCallback: () => safeSetState(() {}),
                          child: HeaderComponentWebWidget(),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 65.0),
                        child: wrapWithModel(
                          model: _model.offerPageComponentWebModel,
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: OfferPageComponentWebWidget(
                            banners: FFAppState().productBanners,
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 10.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 40.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 45.0;
                                } else {
                                  return 76.0;
                                }
                              }(),
                              0.0,
                            ),
                            0.0,
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 10.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 40.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 45.0;
                                } else {
                                  return 76.0;
                                }
                              }(),
                              0.0,
                            ),
                            15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 320.0, 0.0),
                              child: Text(
                                'SHOP',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily),
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        _model.selectedCategory,
                                        'NA',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              17.0, 15.0, 0.0, 30.0),
                          child: Text(
                            valueOrDefault<String>(
                              _model.selectedCategory,
                              'NA',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 15.0, 0.0, 30.0),
                          child: Text(
                            'FACE',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Container(
                          width: double.infinity,
                          height: 788.51,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 0.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final categoriesProductMobile =
                                    _model.productOfCategories.toList();

                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 2;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 3;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 3;
                                      } else {
                                        return 4;
                                      }
                                    }(),
                                    crossAxisSpacing: 20.0,
                                    mainAxisSpacing: 10.0,
                                    childAspectRatio: 0.56,
                                  ),
                                  primary: false,
                                  scrollDirection: Axis.vertical,
                                  itemCount: categoriesProductMobile.length,
                                  itemBuilder:
                                      (context, categoriesProductMobileIndex) {
                                    final categoriesProductMobileItem =
                                        categoriesProductMobile[
                                            categoriesProductMobileIndex];
                                    return CategoryProductWidget(
                                      key: Key(
                                          'Keydbv_${categoriesProductMobileIndex}_of_${categoriesProductMobile.length}'),
                                      productName:
                                          categoriesProductMobileItem.title,
                                      productCategory: _model.selectedCategory!,
                                      productPrice: categoriesProductMobileItem
                                          .price
                                          .toString(),
                                      productCode:
                                          categoriesProductMobileItem.code,
                                      productImage:
                                          categoriesProductMobileItem.image,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Container(
                          width: double.infinity,
                          height: 788.5,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                17.0, 0.0, 17.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final categoriesProductMobile =
                                    _model.productOfCategories.toList();

                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 2;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 3;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 3;
                                      } else {
                                        return 4;
                                      }
                                    }(),
                                    crossAxisSpacing: 20.0,
                                    mainAxisSpacing: 10.0,
                                    childAspectRatio: 0.4,
                                  ),
                                  primary: false,
                                  scrollDirection: Axis.vertical,
                                  itemCount: categoriesProductMobile.length,
                                  itemBuilder:
                                      (context, categoriesProductMobileIndex) {
                                    final categoriesProductMobileItem =
                                        categoriesProductMobile[
                                            categoriesProductMobileIndex];
                                    return CategoryProductWidget(
                                      key: Key(
                                          'Keyyfm_${categoriesProductMobileIndex}_of_${categoriesProductMobile.length}'),
                                      productName:
                                          categoriesProductMobileItem.title,
                                      productCategory: _model.selectedCategory!,
                                      productPrice: categoriesProductMobileItem
                                          .price
                                          .toString(),
                                      productCode:
                                          categoriesProductMobileItem.code,
                                      productImage:
                                          categoriesProductMobileItem.image,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      wrapWithModel(
                        model: _model.footerMobileModel,
                        updateCallback: () => safeSetState(() {}),
                        child: FooterMobileWidget(),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Container(
                        width: 1280.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Visibility(
                          visible: responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 10.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 40.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 45.0;
                                    } else {
                                      return 1.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                0.0,
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 10.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 40.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 45.0;
                                    } else {
                                      return 1.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                100.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 90.0, 0.0),
                                  child: Container(
                                    width: 298.0,
                                    height: 950.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Builder(
                                      builder: (context) {
                                        final productCategories =
                                            FFAppState().categories.toList();

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              productCategories.length,
                                              (productCategoriesIndex) {
                                            final productCategoriesItem =
                                                productCategories[
                                                    productCategoriesIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.categoriesProduct =
                                                    await GetProductCall.call(
                                                  operation: 'C',
                                                  code: productCategoriesItem
                                                      .code,
                                                );

                                                if ((_model.categoriesProduct
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.productOfCategories =
                                                      ProductDetailResponseStruct
                                                              .maybeFromMap((_model
                                                                      .categoriesProduct
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .data
                                                          .category
                                                          .toList()
                                                          .cast<
                                                              CategoryStruct>();
                                                  _model.selectedCategory =
                                                      productCategoriesItem
                                                          .name;
                                                  safeSetState(() {});
                                                }

                                                safeSetState(() {});
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: 52.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Divider(
                                                      thickness: 1.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Text(
                                                        '${productCategoriesItem.name}',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLargeFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                ))
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: 950.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Builder(
                                        builder: (context) {
                                          final items = _model
                                              .productOfCategories
                                              .toList();

                                          return GridView.builder(
                                            padding: EdgeInsets.zero,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 2;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 3;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 3;
                                                } else {
                                                  return 3;
                                                }
                                              }(),
                                              crossAxisSpacing: 20.0,
                                              childAspectRatio: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 1.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 0.35;
                                                } else {
                                                  return 0.52;
                                                }
                                              }(),
                                            ),
                                            scrollDirection: Axis.vertical,
                                            itemCount: items.length,
                                            itemBuilder: (context, itemsIndex) {
                                              final itemsItem =
                                                  items[itemsIndex];
                                              return wrapWithModel(
                                                model: _model
                                                    .categoryProductModels3
                                                    .getModel(
                                                  itemsIndex.toString(),
                                                  itemsIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CategoryProductWidget(
                                                  key: Key(
                                                    'Keyimd_${itemsIndex.toString()}',
                                                  ),
                                                  productName: itemsItem.title,
                                                  productCategory:
                                                      _model.selectedCategory!,
                                                  productPrice: itemsItem.price
                                                      .toString(),
                                                  productCode: itemsItem.code,
                                                  productImage: itemsItem.image,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      wrapWithModel(
                        model: _model.footerComponentWebModel,
                        updateCallback: () => safeSetState(() {}),
                        child: FooterComponentWebWidget(),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
