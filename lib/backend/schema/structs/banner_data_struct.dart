// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannerDataStruct extends BaseStruct {
  BannerDataStruct({
    String? category,
    String? title,
    String? description,
    String? image,
  })  : _category = category,
        _title = title,
        _description = description,
        _image = image;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static BannerDataStruct fromMap(Map<String, dynamic> data) =>
      BannerDataStruct(
        category: data['category'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
      );

  static BannerDataStruct? maybeFromMap(dynamic data) => data is Map
      ? BannerDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category': _category,
        'title': _title,
        'description': _description,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static BannerDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      BannerDataStruct(
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BannerDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BannerDataStruct &&
        category == other.category &&
        title == other.title &&
        description == other.description &&
        image == other.image;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([category, title, description, image]);
}

BannerDataStruct createBannerDataStruct({
  String? category,
  String? title,
  String? description,
  String? image,
}) =>
    BannerDataStruct(
      category: category,
      title: title,
      description: description,
      image: image,
    );
