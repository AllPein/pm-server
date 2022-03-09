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

class User extends SerializableEntity {
  @override
  String get className => 'User';

  int? id;
  late String email;
  late String name;
  late String password;
  late List<Project> projects;

  User({
    this.id,
    required this.email,
    required this.name,
    required this.password,
    required this.projects,
  });

  User.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    email = _data['email']!;
    name = _data['name']!;
    password = _data['password']!;
    projects = _data['projects']!
        .map<Project>((a) => Project.fromSerialization(a))
        ?.toList();
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'email': email,
      'name': name,
      'projects': projects.map((Project a) => a.serialize()).toList(),
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'email': email,
      'name': name,
      'password': password,
      'projects': projects.map((Project a) => a.serialize()).toList(),
    });
  }
}
