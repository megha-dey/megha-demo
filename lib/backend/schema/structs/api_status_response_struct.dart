// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiStatusResponseStruct extends BaseStruct {
  ApiStatusResponseStruct({
    String? code,
    String? message,
  })  : _code = code,
        _message = message;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static ApiStatusResponseStruct fromMap(Map<String, dynamic> data) =>
      ApiStatusResponseStruct(
        code: data['code'] as String?,
        message: data['message'] as String?,
      );

  static ApiStatusResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ApiStatusResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static ApiStatusResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ApiStatusResponseStruct(
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ApiStatusResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApiStatusResponseStruct &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([code, message]);
}

ApiStatusResponseStruct createApiStatusResponseStruct({
  String? code,
  String? message,
}) =>
    ApiStatusResponseStruct(
      code: code,
      message: message,
    );
