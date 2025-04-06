// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DescriptionItemStruct extends BaseStruct {
  DescriptionItemStruct({
    String? title,
    String? desc,
  })  : _title = title,
        _desc = desc;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  static DescriptionItemStruct fromMap(Map<String, dynamic> data) =>
      DescriptionItemStruct(
        title: data['title'] as String?,
        desc: data['desc'] as String?,
      );

  static DescriptionItemStruct? maybeFromMap(dynamic data) => data is Map
      ? DescriptionItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'desc': _desc,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
      }.withoutNulls;

  static DescriptionItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      DescriptionItemStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DescriptionItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DescriptionItemStruct &&
        title == other.title &&
        desc == other.desc;
  }

  @override
  int get hashCode => const ListEquality().hash([title, desc]);
}

DescriptionItemStruct createDescriptionItemStruct({
  String? title,
  String? desc,
}) =>
    DescriptionItemStruct(
      title: title,
      desc: desc,
    );
