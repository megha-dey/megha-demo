// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDetailResponseStruct extends BaseStruct {
  ProductDetailResponseStruct({
    ApiStatusResponseStruct? status,
    ProductCategoryResponseStruct? data,
  })  : _status = status,
        _data = data;

  // "status" field.
  ApiStatusResponseStruct? _status;
  ApiStatusResponseStruct get status => _status ?? ApiStatusResponseStruct();
  set status(ApiStatusResponseStruct? val) => _status = val;

  void updateStatus(Function(ApiStatusResponseStruct) updateFn) {
    updateFn(_status ??= ApiStatusResponseStruct());
  }

  bool hasStatus() => _status != null;

  // "data" field.
  ProductCategoryResponseStruct? _data;
  ProductCategoryResponseStruct get data =>
      _data ?? ProductCategoryResponseStruct();
  set data(ProductCategoryResponseStruct? val) => _data = val;

  void updateData(Function(ProductCategoryResponseStruct) updateFn) {
    updateFn(_data ??= ProductCategoryResponseStruct());
  }

  bool hasData() => _data != null;

  static ProductDetailResponseStruct fromMap(Map<String, dynamic> data) =>
      ProductDetailResponseStruct(
        status: data['status'] is ApiStatusResponseStruct
            ? data['status']
            : ApiStatusResponseStruct.maybeFromMap(data['status']),
        data: data['data'] is ProductCategoryResponseStruct
            ? data['data']
            : ProductCategoryResponseStruct.maybeFromMap(data['data']),
      );

  static ProductDetailResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDetailResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status?.toMap(),
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.DataStruct,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProductDetailResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductDetailResponseStruct(
        status: deserializeStructParam(
          data['status'],
          ParamType.DataStruct,
          false,
          structBuilder: ApiStatusResponseStruct.fromSerializableMap,
        ),
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: ProductCategoryResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductDetailResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDetailResponseStruct &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([status, data]);
}

ProductDetailResponseStruct createProductDetailResponseStruct({
  ApiStatusResponseStruct? status,
  ProductCategoryResponseStruct? data,
}) =>
    ProductDetailResponseStruct(
      status: status ?? ApiStatusResponseStruct(),
      data: data ?? ProductCategoryResponseStruct(),
    );
