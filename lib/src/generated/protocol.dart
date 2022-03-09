/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import

library protocol;

// ignore: unused_import
import 'dart:typed_data';
import 'package:serverpod/serverpod.dart';

import 'authentication_fail_reason.dart';
import 'authentication_response.dart';
import 'email_auth.dart';
import 'example_class.dart';
import 'project_class.dart';
import 'user_image.dart';
import 'user_info_class.dart';
import 'user_role.dart';
import 'user_settings.dart';

export 'authentication_fail_reason.dart';
export 'authentication_response.dart';
export 'email_auth.dart';
export 'example_class.dart';
export 'project_class.dart';
export 'user_image.dart';
export 'user_info_class.dart';
export 'user_role.dart';
export 'user_settings.dart';

class Protocol extends SerializationManagerServer {
  static final Protocol instance = Protocol();

  final Map<String, constructor> _constructors = {};
  @override
  Map<String, constructor> get constructors => _constructors;

  final Map<String, String> _tableClassMapping = {};
  @override
  Map<String, String> get tableClassMapping => _tableClassMapping;

  final Map<Type, Table> _typeTableMapping = {};
  @override
  Map<Type, Table> get typeTableMapping => _typeTableMapping;

  Protocol() {
    constructors['AuthenticationFailReason'] =
        (Map<String, dynamic> serialization) =>
            AuthenticationFailReason.fromSerialization(serialization);
    constructors['AuthenticationResponse'] =
        (Map<String, dynamic> serialization) =>
            AuthenticationResponse.fromSerialization(serialization);
    constructors['EmailAuth'] = (Map<String, dynamic> serialization) =>
        EmailAuth.fromSerialization(serialization);
    constructors['Example'] = (Map<String, dynamic> serialization) =>
        Example.fromSerialization(serialization);
    constructors['Project'] = (Map<String, dynamic> serialization) =>
        Project.fromSerialization(serialization);
    constructors['UserImage'] = (Map<String, dynamic> serialization) =>
        UserImage.fromSerialization(serialization);
    constructors['UserInfo'] = (Map<String, dynamic> serialization) =>
        UserInfo.fromSerialization(serialization);
    constructors['UserRole'] = (Map<String, dynamic> serialization) =>
        UserRole.fromSerialization(serialization);
    constructors['UserSettingsConfig'] = (Map<String, dynamic> serialization) =>
        UserSettingsConfig.fromSerialization(serialization);

    tableClassMapping['serverpod_email_auth'] = 'EmailAuth';
    typeTableMapping[EmailAuth] = EmailAuth.t;
    tableClassMapping['serverpod_user_image'] = 'UserImage';
    typeTableMapping[UserImage] = UserImage.t;
    tableClassMapping['serverpod_user_info'] = 'UserInfo';
    typeTableMapping[UserInfo] = UserInfo.t;
  }
}
