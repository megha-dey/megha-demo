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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_screen_model.dart';
export 'home_screen_model.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  static String routeName = 'HomeScreen';
  static String routePath = '/homeScreen';

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  late HomeScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.homeResult = await GetHomePageDataCall.call();

      if ((_model.homeResult?.succeeded ?? true)) {
        _model.banners = HomePageResponseStruct.maybeFromMap(
                (_model.homeResult?.jsonBody ?? ''))!
            .data
            .banner
            .toList()
            .cast<ProductDataStruct>();
        _model.bestSellers = HomePageResponseStruct.maybeFromMap(
                (_model.homeResult?.jsonBody ?? ''))!
            .data
            .bestSellers
            .toList()
            .cast<ProductDataStruct>();
        _model.partyReady = HomePageResponseStruct.maybeFromMap(
                (_model.homeResult?.jsonBody ?? ''))!
            .data
            .partyReady
            .toList()
            .cast<ProductDataStruct>();
        _model.categories = HomePageResponseStruct.maybeFromMap(
                (_model.homeResult?.jsonBody ?? ''))!
            .data
            .categories
            .toList()
            .cast<CategoryStruct>();
        safeSetState(() {});
        FFAppState().productBanners = HomePageResponseStruct.maybeFromMap(
                (_model.homeResult?.jsonBody ?? ''))!
            .data
            .banner
            .toList()
            .cast<ProductDataStruct>();
        FFAppState().categories = HomePageResponseStruct.maybeFromMap(
                (_model.homeResult?.jsonBody ?? ''))!
            .data
            .categories
            .toList()
            .cast<CategoryStruct>();
        safeSetState(() {});
        _model.sections = await actions.numberOfSections(
          HomePageResponseStruct.maybeFromMap(
                  (_model.homeResult?.jsonBody ?? ''))
              ?.data
              ?.bestSellers
              ?.toList(),
        );
        _model.bestSellerSections = _model.sections!.toList().cast<int>();
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1400CA),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'SHOP',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                tabletLandscape: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: wrapWithModel(
                    model: _model.mobileHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MobileHeaderWidget(),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                wrapWithModel(
                  model: _model.headerComponentWebModel,
                  updateCallback: () => safeSetState(() {}),
                  child: HeaderComponentWebWidget(),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                wrapWithModel(
                  model: _model.offerPageComponentMobileModel,
                  updateCallback: () => safeSetState(() {}),
                  child: OfferPageComponentMobileWidget(
                    banners: _model.banners,
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                wrapWithModel(
                  model: _model.offerPageComponentWebModel,
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: OfferPageComponentWebWidget(
                    banners: _model.banners,
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 32.0),
                  child: Text(
                    'BEST  SELLERS',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).displaySmallFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).displaySmallFamily),
                        ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 70.0),
                  child: Text(
                    'BEST  SELLERS',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineLargeFamily),
                        ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 18.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 24.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 70.0;
                          } else {
                            return 0.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0,
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 18.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 24.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 70.0;
                          } else {
                            return 0.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0),
                  child: Container(
                    width: 1280.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Builder(
                      builder: (context) {
                        final bestSellerItems = _model.bestSellers.toList();

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(bestSellerItems.length,
                                (bestSellerItemsIndex) {
                              final bestSellerItemsItem =
                                  bestSellerItems[bestSellerItemsIndex];
                              return BestSellerComponentWidget(
                                key: Key(
                                    'Keyko3_${bestSellerItemsIndex}_of_${bestSellerItems.length}'),
                                image: getJsonField(
                                  bestSellerItemsItem.toMap(),
                                  r'''$.image''',
                                ).toString(),
                                productName: getJsonField(
                                  bestSellerItemsItem.toMap(),
                                  r'''$.title''',
                                ).toString(),
                                productDesc: getJsonField(
                                  bestSellerItemsItem.toMap(),
                                  r'''$.shortDescription''',
                                ).toString(),
                                price: '₹ ${getJsonField(
                                  bestSellerItemsItem.toMap(),
                                  r'''$.price''',
                                ).toString()}',
                                productCode: getJsonField(
                                  bestSellerItemsItem.toMap(),
                                  r'''$.code''',
                                ).toString(),
                              );
                            }).divide(SizedBox(width: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 20.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 34.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 48.0;
                              } else {
                                return 64.0;
                              }
                            }())),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 70.0),
                  child: Text(
                    'PARTY  READY',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineLargeFamily),
                        ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 18.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 24.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 70.0;
                          } else {
                            return 0.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0,
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 18.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 24.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 70.0;
                          } else {
                            return 0.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0),
                  child: Container(
                    width: 1280.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Visibility(
                      visible: responsiveVisibility(
                        context: context,
                        phone: false,
                      ),
                      child: Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Builder(
                            builder: (context) {
                              final partyReadyProducts =
                                  _model.partyReady.toList();

                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                      List.generate(partyReadyProducts.length,
                                          (partyReadyProductsIndex) {
                                    final partyReadyProductsItem =
                                        partyReadyProducts[
                                            partyReadyProductsIndex];
                                    return BestSellerComponentWidget(
                                      key: Key(
                                          'Keyxnn_${partyReadyProductsIndex}_of_${partyReadyProducts.length}'),
                                      image: getJsonField(
                                        partyReadyProductsItem.toMap(),
                                        r'''$.image''',
                                      ).toString(),
                                      productName: getJsonField(
                                        partyReadyProductsItem.toMap(),
                                        r'''$.title''',
                                      ).toString(),
                                      productDesc: getJsonField(
                                        partyReadyProductsItem.toMap(),
                                        r'''$.shortDescription''',
                                      ).toString(),
                                      price: '₹ ${getJsonField(
                                        partyReadyProductsItem.toMap(),
                                        r'''$.price''',
                                      ).toString()}',
                                      productCode: getJsonField(
                                        partyReadyProductsItem.toMap(),
                                        r'''$.code''',
                                      ).toString(),
                                    );
                                  }).divide(SizedBox(width: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 20.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 34.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 48.0;
                                    } else {
                                      return 64.0;
                                    }
                                  }())),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
              ))
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 110.0),
                  child: Container(
                    width: 284.0,
                    height: 51.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 2.0,
                      ),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          ShopScreenWidget.routeName,
                          queryParameters: {
                            'categoryCode': serializeParam(
                              '1',
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                28.0, 0.0, 10.0, 0.0),
                            child: Text(
                              'VIEW  ALL  PRODUCTS',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelLargeFamily),
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 2.0, 0.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
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
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 65.0, 0.0, 75.0),
                  child: Text(
                    'SHOP  BY  CONCERN',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineLargeFamily),
                        ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 65.0),
                  child: Text(
                    'SHOP  BY  CONCERN',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineLargeFamily),
                        ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 18.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 24.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 70.0;
                          } else {
                            return 0.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0,
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 18.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 24.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 70.0;
                          } else {
                            return 0.0;
                          }
                        }(),
                        0.0,
                      ),
                      68.0),
                  child: Container(
                    width: 1280.0,
                    height: 289.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Builder(
                      builder: (context) {
                        final ajaCategories = FFAppState().categories.toList();

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(ajaCategories.length,
                                (ajaCategoriesIndex) {
                              final ajaCategoriesItem =
                                  ajaCategories[ajaCategoriesIndex];
                              return wrapWithModel(
                                model: _model.shopByCategoryWebModels.getModel(
                                  ajaCategoriesIndex.toString(),
                                  ajaCategoriesIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: ShopByCategoryWebWidget(
                                  key: Key(
                                    'Keyjz3_${ajaCategoriesIndex.toString()}',
                                  ),
                                  categoryImage: ajaCategoriesItem.image,
                                  categoryName: ajaCategoriesItem.name,
                                ),
                              );
                            }).divide(SizedBox(width: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 20.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 70.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 65.0;
                              } else {
                                return 110.0;
                              }
                            }())).addToStart(SizedBox(width: 24.0)),
                          ),
                        );
                      },
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
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 0.0, 17.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final bestSellerData = _model.bestSellers.toList();

                        return GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 25.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 0.4,
                          ),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: bestSellerData.length,
                          itemBuilder: (context, bestSellerDataIndex) {
                            final bestSellerDataItem =
                                bestSellerData[bestSellerDataIndex];
                            return Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: wrapWithModel(
                                model:
                                    _model.bestSellerComponentModels3.getModel(
                                  bestSellerDataIndex.toString(),
                                  bestSellerDataIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: BestSellerComponentWidget(
                                  key: Key(
                                    'Keylth_${bestSellerDataIndex.toString()}',
                                  ),
                                  image: bestSellerDataItem.image,
                                  productName: bestSellerDataItem.title,
                                  productDesc:
                                      bestSellerDataItem.shortDescription,
                                  price: bestSellerDataItem.price,
                                  productCode: bestSellerDataItem.code,
                                ),
                              ),
                            );
                          },
                        );
                      },
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
                tabletLandscape: false,
                desktop: false,
              ))
                wrapWithModel(
                  model: _model.bestSellers2Model,
                  updateCallback: () => safeSetState(() {}),
                  child: BestSellers2Widget(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
