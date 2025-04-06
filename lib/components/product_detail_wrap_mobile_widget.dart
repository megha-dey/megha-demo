import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_detail_wrap_mobile_model.dart';
export 'product_detail_wrap_mobile_model.dart';

class ProductDetailWrapMobileWidget extends StatefulWidget {
  const ProductDetailWrapMobileWidget({
    super.key,
    required this.images,
    required this.mainImage,
  });

  final List<String>? images;
  final String? mainImage;

  @override
  State<ProductDetailWrapMobileWidget> createState() =>
      _ProductDetailWrapMobileWidgetState();
}

class _ProductDetailWrapMobileWidgetState
    extends State<ProductDetailWrapMobileWidget> {
  late ProductDetailWrapMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailWrapMobileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.imageList = await actions.checkImageListIsNotEmpty(
        widget!.images?.toList(),
      );
      if (_model.imageList == true) {
        _model.selectedImage = widget!.images!.firstOrNull!;
        safeSetState(() {});
      } else {
        _model.selectedImage = FFAppState().productMainImage;
        safeSetState(() {});
        await actions.consoleLog(
          'Images not ready',
        );
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
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: functions.addTwoNumbers(
                  MediaQuery.sizeOf(context).width, 130.0),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      functions.constructImagePath(_model.selectedImage),
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).width,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => Image.asset(
                        'assets/images/error_image.jpg',
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).width,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final productImages = widget!.images!.toList();

                          return Wrap(
                            spacing: 20.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.up,
                            clipBehavior: Clip.none,
                            children: List.generate(productImages.length,
                                (productImagesIndex) {
                              final productImagesItem =
                                  productImages[productImagesIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedImage = productImagesItem;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      functions.constructImagePath(
                                          productImagesItem),
                                      width: 75.0,
                                      height: 75.0,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Image.asset(
                                        'assets/images/error_image.jpg',
                                        width: 75.0,
                                        height: 75.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
