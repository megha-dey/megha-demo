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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_detail_model.dart';
export 'product_detail_model.dart';

class ProductDetailWidget extends StatefulWidget {
  const ProductDetailWidget({
    super.key,
    required this.productCode,
  });

  final String? productCode;

  static String routeName = 'ProductDetail';
  static String routePath = '/productDetail';

  @override
  State<ProductDetailWidget> createState() => _ProductDetailWidgetState();
}

class _ProductDetailWidgetState extends State<ProductDetailWidget> {
  late ProductDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.productDetail = await GetProductCall.call(
        operation: 'P',
        code: widget!.productCode,
      );

      if ((_model.productDetail?.succeeded ?? true)) {
        _model.images = ProductDetailResponseStruct.maybeFromMap(
                (_model.productDetail?.jsonBody ?? ''))!
            .data
            .product
            .imageGroup
            .toList()
            .cast<String>();
        _model.productData = ProductDataStruct(
          category: ProductDetailResponseStruct.maybeFromMap(
                  (_model.productDetail?.jsonBody ?? ''))
              ?.data
              ?.product
              ?.category,
          title: ProductDetailResponseStruct.maybeFromMap(
                  (_model.productDetail?.jsonBody ?? ''))
              ?.data
              ?.product
              ?.title,
          shortDescription: ProductDetailResponseStruct.maybeFromMap(
                  (_model.productDetail?.jsonBody ?? ''))
              ?.data
              ?.product
              ?.shortDescription,
          image: ProductDetailResponseStruct.maybeFromMap(
                  (_model.productDetail?.jsonBody ?? ''))
              ?.data
              ?.product
              ?.imageMain,
          variants: ProductDetailResponseStruct.maybeFromMap(
                  (_model.productDetail?.jsonBody ?? ''))
              ?.data
              ?.product
              ?.variant,
          code: ProductDetailResponseStruct.maybeFromMap(
                  (_model.productDetail?.jsonBody ?? ''))
              ?.data
              ?.product
              ?.code,
          longDescription: ProductDetailResponseStruct.maybeFromMap(
                  (_model.productDetail?.jsonBody ?? ''))
              ?.data
              ?.product
              ?.longDescription,
        );
        _model.benefits = ProductDetailResponseStruct.maybeFromMap(
                (_model.productDetail?.jsonBody ?? ''))!
            .data
            .product
            .benefits
            .toList()
            .cast<DescriptionItemStruct>();
        _model.ingredients = ProductDetailResponseStruct.maybeFromMap(
                (_model.productDetail?.jsonBody ?? ''))!
            .data
            .product
            .ingredients
            .toList()
            .cast<DescriptionItemStruct>();
        _model.howToUse = ProductDetailResponseStruct.maybeFromMap(
                (_model.productDetail?.jsonBody ?? ''))
            ?.data
            ?.product
            ?.howToUse;
        _model.story = ProductDetailResponseStruct.maybeFromMap(
                (_model.productDetail?.jsonBody ?? ''))!
            .data
            .product
            .story;
        safeSetState(() {});
      } else {
        return;
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
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodySmallFamily),
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
                  wrapWithModel(
                    model: _model.headerComponentWebModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HeaderComponentWebWidget(),
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
                              return 20.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 45.0;
                            } else {
                              return 1.0;
                            }
                          }(),
                          1.0,
                        ),
                        30.0,
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 20.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 45.0;
                            } else {
                              return 10.0;
                            }
                          }(),
                          10.0,
                        ),
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 100.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 50.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 72.0;
                            } else {
                              return 100.0;
                            }
                          }(),
                          0.0,
                        )),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width > 1280.0
                          ? 1280.0
                          : MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Visibility(
                        visible: responsiveVisibility(
                          context: context,
                          phone: false,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model
                                  .productDetailImageGroupComponentWebModel,
                              updateCallback: () => safeSetState(() {}),
                              child: ProductDetailImageGroupComponentWebWidget(
                                images: _model.images,
                                mainImage: FFAppState().productMainImage,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 10.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 50.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 50.0;
                                      } else {
                                        return 45.0;
                                      }
                                    }(),
                                    0.0,
                                  ),
                                  0.0,
                                  0.0,
                                  0.0),
                              child: wrapWithModel(
                                model: _model.productSummaryComponentModel1,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: ProductSummaryComponentWidget(
                                  productData: _model.productData,
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
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: wrapWithModel(
                      model: _model.productDetailWrapMobileModel,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: ProductDetailWrapMobileWidget(
                        mainImage: _model.images.isNotEmpty
                            ? _model.images.firstOrNull!
                            : 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIALcAwgMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAAAwQFAQIH/8QAMxABAAIAAwQIBgIBBQAAAAAAAAECAwQRElJxkRMhMTNBQlFhFDI0gaGiIrFEBSNicoL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+zgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5N6V+a1eYOiG2Zw6+fl1vE5ynlrM/gFkUrZ2/lpX7zq7gZi98aIvbWs69UQC4AAAAAAAAAAAAAAaoM5N+jia200lRiLWt/GLWnmDStj4de28aorZzDr4WnhCrGVxreTTj1JK5O/mtFfyD1bOz5aR95R2zOJaO2I4Qnrk6R817T+EkZbBjy68ZBQnEvb5r25lcO1vLaWlFYr8sRD0ChXKYlvCK8Ze4yU+fEj7RK4ArRlKVidJmZVMOdMWvtZqR2szHrpi2j0nUGnrtaT7DlJ2qxPrDoAAAAAAAAAAAAIszG1g29o1/Kpk7bOYj3hftGtZj1hmYX8cWk+kxANRUx8zfCxZita/dbjriJZ2b7+3CAe/jcTdqfG4m7VJh5fCthRa396O9Bl979wRfG4m7U+NxN2qXoMvvfu50GX3v3BH8bibtT43E3apOgy+9+50GX3v3BH8biR4VQYl5xLbVtPst9Bl979zoMvvfuCGmavWuzXZ6vV6+MxN2qXoMvvfujzOBTDwta9vHUEuWx5xbzFtPl8FhRyPe24QvAAAAAAAAAAAMvGjYxbR6Tq1Gfna/70zvAv064rwhQzff24Qt5S21g19upUzff24QCePop4KOkzaIjtXo+ingqYVoriVmeyJiQWK5O011m3XPgr4mHbCtpbqn1alZjZ1r49ajnb1nE2Y7YBWAAFnL5eL9d+z0eMxgThTrHXE+IIV7N/TRxj+lFezf00cY/oEWR723CF5RyPe24QvAAAAAAAAAAAKefjTYt/5XOzrV85XXAj2kHn/T7a0mvpZDm+/twh7yE6Yk19YeM339uEAn/wp4KK9/hTwUQd2rRGkWtEemrmr1TCvfWa11c7J07LR6g4sZXBjFnbt1UjxecvgTjW6vljtloUiK12a+AOxERGleyOxy9YvWdqNXQGZjYXR2ms8Y91rN/TRxj+k2LhVxa6T2oc5/HLxHpMQCLI97bhC8o5HvbcIXgAAAAAAAAAAEePG3gWj0iUhPXGgM7LW0x68dDN9/bhCKJnDvrHbE6vV7Ta+1bxjwBcjWcnpHbojwMrPVbF6v8Aj6rGW7inBIBEREaVjTRHjYFMT5o090gDzSsUrs1jTT8vQAAAK+e7j7wsK+e7j7wCHI97bhC8o5HvbcIXgAAAAAAAAAAAAV/hKWtM2meudVXM1imNNa+DScmlbeUGXGLesfxtaHemxN+ebS2K7teRsV3a8gZvTYm/PM6bE355tLYru15GxXdryBm9Nib88zpsTfnm0tiu7XkbFd2vIGb02JvzzOmxN+ebS2K7teRsV3a8gZvTYnhiTzctiXvGlpmdPdp7Fd2vI2K7teQKeQ7yf+q85Fa7scnQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAf//Z',
                        images: _model.images,
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
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: wrapWithModel(
                      model: _model.productSummaryComponentModel2,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: ProductSummaryComponentWidget(
                        productData: _model.productData,
                      ),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 35.0),
                      child: Text(
                        'PRODUCT  DESCRIPTION',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelSmallFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .labelSmallFamily),
                            ),
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
                              return 20.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 45.0;
                            } else {
                              return 1.0;
                            }
                          }(),
                          1.0,
                        ),
                        0.0,
                        0.0,
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 10.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 21.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 32.0;
                            } else {
                              return 42.0;
                            }
                          }(),
                          0.0,
                        )),
                    child: Container(
                      width: 1280.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Visibility(
                        visible: responsiveVisibility(
                          context: context,
                          phone: false,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Text(
                            'PRODUCT  DESCRIPTION',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Montserrat'),
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 10.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 50.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 60.0;
                          } else {
                            return 10.0;
                          }
                        }(),
                        10.0,
                      ),
                      0.0, () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 10.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 50.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 60.0;
                    } else {
                      return 1.0;
                    }
                  }(), 20.0),
                  child: Container(
                    width: 1280.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: wrapWithModel(
                      model: _model.productDescriptionComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ProductDescriptionComponentWidget(
                        benefits: _model.benefits,
                        ingredients: _model.ingredients,
                        howToUse: _model.howToUse,
                        story: _model.story,
                      ),
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.footerComponentWebModel,
                      updateCallback: () => safeSetState(() {}),
                      child: FooterComponentWebWidget(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
