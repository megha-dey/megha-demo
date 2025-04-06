// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryInfoStruct extends BaseStruct {
  DeliveryInfoStruct({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? mobileNumber,
    String? firstAddress,
    String? secondAddress,
    String? state,
    String? city,
    String? zipCode,
  })  : _firstName = firstName,
        _lastName = lastName,
        _emailAddress = emailAddress,
        _mobileNumber = mobileNumber,
        _firstAddress = firstAddress,
        _secondAddress = secondAddress,
        _state = state,
        _city = city,
        _zipCode = zipCode;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  set emailAddress(String? val) => _emailAddress = val;

  bool hasEmailAddress() => _emailAddress != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "firstAddress" field.
  String? _firstAddress;
  String get firstAddress => _firstAddress ?? '';
  set firstAddress(String? val) => _firstAddress = val;

  bool hasFirstAddress() => _firstAddress != null;

  // "secondAddress" field.
  String? _secondAddress;
  String get secondAddress => _secondAddress ?? '';
  set secondAddress(String? val) => _secondAddress = val;

  bool hasSecondAddress() => _secondAddress != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "zipCode" field.
  String? _zipCode;
  String get zipCode => _zipCode ?? '';
  set zipCode(String? val) => _zipCode = val;

  bool hasZipCode() => _zipCode != null;

  static DeliveryInfoStruct fromMap(Map<String, dynamic> data) =>
      DeliveryInfoStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        emailAddress: data['emailAddress'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
        firstAddress: data['firstAddress'] as String?,
        secondAddress: data['secondAddress'] as String?,
        state: data['state'] as String?,
        city: data['city'] as String?,
        zipCode: data['zipCode'] as String?,
      );

  static DeliveryInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? DeliveryInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'emailAddress': _emailAddress,
        'mobileNumber': _mobileNumber,
        'firstAddress': _firstAddress,
        'secondAddress': _secondAddress,
        'state': _state,
        'city': _city,
        'zipCode': _zipCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'emailAddress': serializeParam(
          _emailAddress,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'firstAddress': serializeParam(
          _firstAddress,
          ParamType.String,
        ),
        'secondAddress': serializeParam(
          _secondAddress,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'zipCode': serializeParam(
          _zipCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeliveryInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeliveryInfoStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        emailAddress: deserializeParam(
          data['emailAddress'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
        firstAddress: deserializeParam(
          data['firstAddress'],
          ParamType.String,
          false,
        ),
        secondAddress: deserializeParam(
          data['secondAddress'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        zipCode: deserializeParam(
          data['zipCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeliveryInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeliveryInfoStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        emailAddress == other.emailAddress &&
        mobileNumber == other.mobileNumber &&
        firstAddress == other.firstAddress &&
        secondAddress == other.secondAddress &&
        state == other.state &&
        city == other.city &&
        zipCode == other.zipCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstName,
        lastName,
        emailAddress,
        mobileNumber,
        firstAddress,
        secondAddress,
        state,
        city,
        zipCode
      ]);
}

DeliveryInfoStruct createDeliveryInfoStruct({
  String? firstName,
  String? lastName,
  String? emailAddress,
  String? mobileNumber,
  String? firstAddress,
  String? secondAddress,
  String? state,
  String? city,
  String? zipCode,
}) =>
    DeliveryInfoStruct(
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      mobileNumber: mobileNumber,
      firstAddress: firstAddress,
      secondAddress: secondAddress,
      state: state,
      city: city,
      zipCode: zipCode,
    );
