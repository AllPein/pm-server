/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import

import 'package:serverpod_serialization/serverpod_serialization.dart';

class UserRole extends SerializableEntity {
  @override
  String get className => 'UserRole';

  late final int _index;
  int get index => _index;

  UserRole._internal(this._index);

  UserRole.fromSerialization(Map<String, dynamic> serialization) {
    var data = unwrapSerializationData(serialization);
    _index = data['index'];
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'index': _index,
    });
  }

  static final student = UserRole._internal(0);
  static final projectManager = UserRole._internal(1);
  static final admin = UserRole._internal(2);

  @override
  int get hashCode => _index.hashCode;
  @override
  bool operator ==(other) => other is UserRole && other._index == _index;

  static final values = <UserRole>[
    student,
    projectManager,
    admin,
  ];

  String get name {
    if (this == student) return 'student';
    if (this == projectManager) return 'projectManager';
    if (this == admin) return 'admin';
    throw const FormatException();
  }
}
