/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields

import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class AuthenticationResponse extends SerializableEntity {
  @override
  String get className => 'AuthenticationResponse';

  int? id;
  late bool success;
  String? key;
  int? keyId;
  UserInfo? user;
  AuthenticationFailReason? failReason;

  AuthenticationResponse({
    this.id,
    required this.success,
    this.key,
    this.keyId,
    this.user,
    this.failReason,
  });

  AuthenticationResponse.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    success = _data['success']!;
    key = _data['key'];
    keyId = _data['keyId'];
    user = _data['user'] != null
        ? UserInfo?.fromSerialization(_data['user'])
        : null;
    failReason = _data['failReason'] != null
        ? AuthenticationFailReason?.fromSerialization(_data['failReason'])
        : null;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'success': success,
      'key': key,
      'keyId': keyId,
      'user': user?.serialize(),
      'failReason': failReason?.serialize(),
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'success': success,
      'key': key,
      'keyId': keyId,
      'user': user?.serialize(),
      'failReason': failReason?.serialize(),
    });
  }
}
