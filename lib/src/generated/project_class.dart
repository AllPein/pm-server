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

class Project extends SerializableEntity {
  @override
  String get className => 'Project';

  int? id;
  late String name;
  late UserInfo owner;
  late UserInfo teamLead;
  late List<UserInfo> participants;

  Project({
    this.id,
    required this.name,
    required this.owner,
    required this.teamLead,
    required this.participants,
  });

  Project.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    name = _data['name']!;
    owner = UserInfo.fromSerialization(_data['owner']);
    teamLead = UserInfo.fromSerialization(_data['teamLead']);
    participants = _data['participants']!
        .map<UserInfo>((a) => UserInfo.fromSerialization(a))
        ?.toList();
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'owner': owner.serialize(),
      'teamLead': teamLead.serialize(),
      'participants': participants.map((UserInfo a) => a.serialize()).toList(),
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'owner': owner.serialize(),
      'teamLead': teamLead.serialize(),
      'participants': participants.map((UserInfo a) => a.serialize()).toList(),
    });
  }
}
