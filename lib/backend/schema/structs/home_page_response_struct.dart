// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomePageResponseStruct extends BaseStruct {
  HomePageResponseStruct({
    ApiStatusResponseStruct? status,
    HomeDataStruct? data,
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
  HomeDataStruct? _data;
  HomeDataStruct get data => _data ?? HomeDataStruct();
  set data(HomeDataStruct? val) => _data = val;

  void updateData(Function(HomeDataStruct) updateFn) {
    updateFn(_data ??= HomeDataStruct());
  }

  bool hasData() => _data != null;

  static HomePageResponseStruct fromMap(Map<String, dynamic> data) =>
      HomePageResponseStruct(
        status: data['status'] is ApiStatusResponseStruct
            ? data['status']
            : ApiStatusResponseStruct.maybeFromMap(data['status']),
        data: data['data'] is HomeDataStruct
            ? data['data']
            : HomeDataStruct.maybeFromMap(data['data']),
      );

  static HomePageResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? HomePageResponseStruct.fromMap(data.cast<String, dynamic>())
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

  static HomePageResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HomePageResponseStruct(
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
          structBuilder: HomeDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HomePageResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HomePageResponseStruct &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([status, data]);
}

HomePageResponseStruct createHomePageResponseStruct({
  ApiStatusResponseStruct? status,
  HomeDataStruct? data,
}) =>
    HomePageResponseStruct(
      status: status ?? ApiStatusResponseStruct(),
      data: data ?? HomeDataStruct(),
    );
