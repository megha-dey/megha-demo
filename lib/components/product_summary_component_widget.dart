import 'package:readmore/readmore.dart';

import '/backend/schema/structs/index.dart';
import '/components/varient_component_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_summary_component_model.dart';
export 'product_summary_component_model.dart';

class ProductSummaryComponentWidget extends StatefulWidget {
  const ProductSummaryComponentWidget({
    super.key,
    this.productData,
  });

  final ProductDataStruct? productData;

  @override
  State<ProductSummaryComponentWidget> createState() =>
      _ProductSummaryComponentWidgetState();
}

class _ProductSummaryComponentWidgetState
    extends State<ProductSummaryComponentWidget> {
  late ProductSummaryComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductSummaryComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.productData != null) {
        if ((widget!.productData?.variants != null &&
                (widget!.productData?.variants)!.isNotEmpty) ==
            true) {
          _model.selectedVariant = widget!.productData?.variants?.firstOrNull;
          safeSetState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Container(
                    width: 426.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width > 1280.0
                                ? 426.0
                                : MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 2.0, 20.0, 10.0),
                                    child: Text(
                                      widget!.productData != null
                                          ? functions.toUpperCase(
                                              widget!.productData!.title)
                                          : 'NA',
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .displayLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .displayLargeFamily,
                                            fontSize: 18.0,
                                            letterSpacing: 1.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .displayLargeFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 20.0),
                                    child: Text(
                                      functions
                                          .toUpperCase(valueOrDefault<String>(
                                        widget!.productData != null
                                            ? widget!
                                                .productData?.shortDescription
                                            : '',
                                        'NA',
                                      )),
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Gothic Regular',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 12.0,
                                            letterSpacing: 1.5,
                                            fontWeight: FontWeight.w100,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Gothic Regular'),
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 32.0),
                                      // child: Text(
                                      //   valueOrDefault<String>(
                                      //     widget!.productData != null
                                      //         ? widget!
                                      //             .productData?.longDescription
                                      //         : '',
                                      //     'NA',
                                      //   ),
                                      //   style: FlutterFlowTheme.of(context)
                                      //       .labelLarge
                                      //       .override(
                                      //         fontFamily:
                                      //             FlutterFlowTheme.of(context)
                                      //                 .labelLargeFamily,
                                      //         color: FlutterFlowTheme.of(context)
                                      //             .secondaryText,
                                      //         letterSpacing: 0.0,
                                      //         fontWeight: FontWeight.w300,
                                      //         useGoogleFonts: GoogleFonts.asMap()
                                      //             .containsKey(
                                      //                 FlutterFlowTheme.of(context)
                                      //                     .labelLargeFamily),
                                      //       ),
                                      // ),
                                      child: ReadMoreText(
                                        valueOrDefault<String>(
                                          widget!.productData != null
                                              ? widget!
                                                  .productData?.longDescription
                                              : '',
                                          'NA',
                                        ),
                                        trimMode: TrimMode.Line,
                                        trimLines: 2,
                                        colorClickableText: Colors.grey,
                                        trimCollapsedText: 'Show more',
                                        trimExpandedText: 'Show less',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLargeFamily),
                                            ),
                                        moreStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Gothic Bold',
                                              fontWeight: FontWeight.w800,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          'Gothic Bold'),
                                            ),
                                        lessStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Gothic Bold',
                                              fontWeight: FontWeight.w800,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          'Gothic Bold'),
                                            ),
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 10.0, 0.0),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Container(
                                          width: 426.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 20.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Select size',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 1.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 0.0, 10.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final varient = widget!
                                                            .productData
                                                            ?.variants
                                                            ?.toList() ??
                                                        [];

                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          varient.length,
                                                          (varientIndex) {
                                                        final varientItem =
                                                            varient[
                                                                varientIndex];
                                                        return wrapWithModel(
                                                          model: _model
                                                              .varientComponentModels1
                                                              .getModel(
                                                            varientIndex
                                                                .toString(),
                                                            varientIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child:
                                                              VarientComponentWidget(
                                                            key: Key(
                                                              'Keyldn_${varientIndex.toString()}',
                                                            ),
                                                            isSelected:
                                                                varientIndex ==
                                                                    _model
                                                                        .selectedIndex,
                                                            productSize:
                                                                varientItem
                                                                    .variant,
                                                            index: varientIndex,
                                                            handleClick:
                                                                (selectedIndexOnCick) async {
                                                              _model.selectedIndex =
                                                                  varientIndex;
                                                              _model.selectedVariant =
                                                                  varientItem;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        );
                                                      }).divide(SizedBox(
                                                          width: 15.0)),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 155.0,
                                          height: 16.9,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Text(
                                              'CHOOSE VARIANTS',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 1.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 20.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Quantity:',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLargeFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      23.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 110.0,
                                    height: 26.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: FlutterFlowCountController(
                                      decrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.minus,
                                        color: enabled
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryText
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        size: 12.0,
                                      ),
                                      incrementIconBuilder: (enabled) => FaIcon(
                                        FontAwesomeIcons.plus,
                                        color: enabled
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        size: 12.0,
                                      ),
                                      countBuilder: (count) => Text(
                                        count.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily),
                                            ),
                                      ),
                                      count: _model.countControllerValue1 ??= 1,
                                      updateCount: (count) async {
                                        safeSetState(() => _model
                                            .countControllerValue1 = count);
                                        _model.selectedQty =
                                            _model.countControllerValue1!;
                                        safeSetState(() {});
                                      },
                                      stepSize: 1,
                                      minimum: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Text(
                                    'PRICE',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily),
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  height: 44.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: Color(0xFFDAD8D8),
                                  ),
                                ),
                                Text(
                                  functions.getPriceofproductVariant(
                                      _model.selectedQty,
                                      _model.selectedVariant == null
                                          ? (widget!.productData != null
                                              ? widget!.productData!.variants
                                                  .firstOrNull!.price
                                              : '0')
                                          : _model.selectedVariant!.price),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await actions.updateCartItems(
                                    CartItemStruct(
                                      cartId:
                                          '${widget!.productData?.code}-${_model.selectedVariant == null ? widget!.productData?.variants?.firstOrNull?.variant : _model.selectedVariant?.variant}',
                                      productCode: widget!.productData?.code,
                                      productName: widget!.productData?.title,
                                      productImage: widget!.productData?.image,
                                      selectedQty: _model.selectedQty,
                                      selectedVariant:
                                          _model.selectedVariant == null
                                              ? widget!.productData?.variants
                                                  ?.firstOrNull
                                              : _model.selectedVariant,
                                    ),
                                  );

                                  FFAppState().update(() {});
                                  await actions.showToast(
                                    context,
                                    FlutterFlowTheme.of(context).primaryText,
                                    'Product  added to cart.',
                                  );
                                },
                                text: 'ADD TO CART',
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 10.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 18.0;
                                    } else {
                                      return 24.0;
                                    }
                                  }(),
                                ),
                                options: FFButtonOptions(
                                  width: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 140.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 150.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 190.0;
                                    } else {
                                      return 200.0;
                                    }
                                  }(),
                                  height: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 40.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 30.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 45.0;
                                    } else {
                                      return 55.0;
                                    }
                                  }(),
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconAlignment: IconAlignment.end,
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        color: Colors.white,
                                        fontSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 10.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 9.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 13.0;
                                          } else {
                                            return 18.0;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 100.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 250.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 375.0;
                      } else {
                        return 500.0;
                      }
                    }(),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width > 1280.0
                          ? 1280.0
                          : MediaQuery.sizeOf(context).width,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 2.0, 0.0, 10.0),
                          child: Text(
                            widget!.productData != null
                                ? valueOrDefault<String>(
                                    functions.toUpperCase(
                                        widget!.productData!.title),
                                    'NA',
                                  )
                                : '',
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineLargeFamily,
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 18.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 18.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 28.0;
                                    } else {
                                      return 32.0;
                                    }
                                  }(),
                                  letterSpacing: 1.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineLargeFamily),
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Text(
                            functions.toUpperCase(valueOrDefault<String>(
                              widget!.productData != null
                                  ? widget!.productData?.shortDescription
                                  : '',
                              'NA',
                            )),
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Gothic Regular',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 14.0,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w100,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Gothic Regular'),
                                ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 25.0),
                            // child: Text(
                            //   valueOrDefault<String>(
                            //     widget!.productData != null
                            //         ? widget!.productData?.longDescription
                            //         : '',
                            //     'NA',
                            //   ),
                            //   style: FlutterFlowTheme.of(context)
                            //       .bodyMedium
                            //       .override(
                            //         fontFamily: FlutterFlowTheme.of(context)
                            //             .bodyMediumFamily,
                            //         color: FlutterFlowTheme.of(context)
                            //             .secondaryText,
                            //         fontSize: () {
                            //           if (MediaQuery.sizeOf(context).width <
                            //               kBreakpointSmall) {
                            //             return 10.0;
                            //           } else if (MediaQuery.sizeOf(context)
                            //                   .width <
                            //               kBreakpointMedium) {
                            //             return 10.0;
                            //           } else if (MediaQuery.sizeOf(context)
                            //                   .width <
                            //               kBreakpointLarge) {
                            //             return 12.0;
                            //           } else {
                            //             return 14.0;
                            //           }
                            //         }(),
                            //         letterSpacing: 0.0,
                            //         fontWeight: FontWeight.w300,
                            //         useGoogleFonts: GoogleFonts.asMap()
                            //             .containsKey(FlutterFlowTheme.of(context)
                            //                 .bodyMediumFamily),
                            //       ),
                            // ),
                            child: ReadMoreText(
                              valueOrDefault<String>(
                                widget!.productData != null
                                    ? widget!.productData?.longDescription
                                    : '',
                                'NA',
                              ),
                              trimMode: TrimMode.Line,
                              trimLines: 2,
                              colorClickableText: Colors.grey,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelLargeFamily),
                                  ),
                              moreStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Gothic Bold',
                                    fontWeight: FontWeight.w800,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Gothic Bold'),
                                  ),
                              lessStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Gothic Bold',
                                    fontWeight: FontWeight.w800,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Gothic Bold'),
                                  ),
                            )),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 10.0, 0.0),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            'Select size',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 1.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 10.0, 0.0, 10.0),
                                        child: Builder(
                                          builder: (context) {
                                            final variants = widget!
                                                    .productData?.variants
                                                    ?.toList() ??
                                                [];

                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children:
                                                  List.generate(variants.length,
                                                      (variantsIndex) {
                                                final variantsItem =
                                                    variants[variantsIndex];
                                                return wrapWithModel(
                                                  model: _model
                                                      .varientComponentModels2
                                                      .getModel(
                                                    variantsIndex.toString(),
                                                    variantsIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  updateOnChange: true,
                                                  child: VarientComponentWidget(
                                                    key: Key(
                                                      'Keye1r_${variantsIndex.toString()}',
                                                    ),
                                                    isSelected: variantsIndex ==
                                                        _model.selectedIndex,
                                                    productSize:
                                                        valueOrDefault<String>(
                                                      variantsItem.variant,
                                                      'NA',
                                                    ),
                                                    index: variantsIndex,
                                                    handleClick:
                                                        (selectedIndexOnCick) async {
                                                      _model.selectedIndex =
                                                          variantsIndex;
                                                      _model.selectedVariant =
                                                          variantsItem;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                );
                                              }).divide(SizedBox(width: 25.0)),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 155.0,
                                  height: 16.9,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Text(
                                      'CHOOSE VARIANTS',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 1.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 10.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 25.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 30.0;
                                  } else {
                                    return 40.0;
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
                                    return 25.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 20.0;
                                  } else {
                                    return 20.0;
                                  }
                                }(),
                                0.0,
                              )),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Quantity:',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12.0,
                                      letterSpacing: 1.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    17.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 90.0,
                                  height: 26.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: FlutterFlowCountController(
                                    decrementIconBuilder: (enabled) => FaIcon(
                                      FontAwesomeIcons.minus,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context)
                                              .primaryText
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 12.0,
                                    ),
                                    incrementIconBuilder: (enabled) => FaIcon(
                                      FontAwesomeIcons.plus,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context)
                                              .primaryText
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 12.0,
                                    ),
                                    countBuilder: (count) => Text(
                                      count.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.0,
                                            letterSpacing: 2.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Montserrat'),
                                          ),
                                    ),
                                    count: _model.countControllerValue2 ??= 1,
                                    updateCount: (count) async {
                                      safeSetState(() =>
                                          _model.countControllerValue2 = count);
                                      _model.selectedQty =
                                          _model.countControllerValue2!;
                                      safeSetState(() {});
                                    },
                                    stepSize: 1,
                                    minimum: 1,
                                    maximum: 5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              0.0,
                              0.0,
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 10.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 25.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 30.0;
                                  } else {
                                    return 34.0;
                                  }
                                }(),
                                0.0,
                              )),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Text(
                                  'PRICE',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        fontSize: 12.0,
                                        letterSpacing: 1.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily),
                                      ),
                                ),
                              ),
                              SizedBox(
                                height: 44.0,
                                child: VerticalDivider(
                                  thickness: 1.0,
                                  color: Color(0xFFDAD8D8),
                                ),
                              ),
                              Text(
                                functions.getPriceofproductVariant(
                                    _model.selectedQty,
                                    _model.selectedVariant == null
                                        ? (widget!.productData != null
                                            ? widget!.productData!.variants
                                                .firstOrNull!.price
                                            : '0')
                                        : _model.selectedVariant!.price),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Montserrat'),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await actions.updateCartItems(
                                CartItemStruct(
                                  cartId:
                                      '${widget!.productData?.code}-${_model.selectedVariant == null ? widget!.productData?.variants?.firstOrNull?.variant : _model.selectedVariant?.variant}',
                                  productCode: widget!.productData?.code,
                                  productName: widget!.productData?.title,
                                  productImage: widget!.productData?.image,
                                  selectedQty: _model.selectedQty,
                                  selectedVariant:
                                      _model.selectedVariant == null
                                          ? widget!.productData?.variants
                                              ?.firstOrNull
                                          : _model.selectedVariant,
                                ),
                              );

                              FFAppState().update(() {});
                              await actions.showToast(
                                context,
                                FlutterFlowTheme.of(context).primaryText,
                                'Product added to cart.',
                              );
                            },
                            text: 'ADD TO CART',
                            icon: Icon(
                              Icons.arrow_forward,
                              size: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 10.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 12.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 18.0;
                                } else {
                                  return 24.0;
                                }
                              }(),
                            ),
                            options: FFButtonOptions(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 140.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 150.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 190.0;
                                } else {
                                  return 200.0;
                                }
                              }(),
                              height: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 40.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 30.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 45.0;
                                } else {
                                  return 55.0;
                                }
                              }(),
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 12.0, 10.0, 0.0),
                              iconAlignment: IconAlignment.end,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 6.0),
                              color: FlutterFlowTheme.of(context).primaryText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 10.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 9.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 13.0;
                                      } else {
                                        return 18.0;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
