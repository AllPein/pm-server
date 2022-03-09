/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: unused_import

import 'dart:typed_data' as typed_data;
import 'package:serverpod/serverpod.dart';

import 'protocol.dart';

import '../endpoints/example_endpoint.dart';
import '../endpoints/user.dart';

class Endpoints extends EndpointDispatch {
  @override
  void initializeEndpoints(Server server) {
    var endpoints = <String, Endpoint>{
      'example': ExampleEndpoint()..initialize(server, 'example', null),
      'user': User()..initialize(server, 'user', null),
    };

    connectors['example'] = EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': MethodConnector(
          name: 'hello',
          params: {
            'name': ParameterDescription(
                name: 'name', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['example'] as ExampleEndpoint).hello(
              session,
              params['name'],
            );
          },
        ),
      },
    );

    connectors['user'] = EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'authenticate': MethodConnector(
          name: 'authenticate',
          params: {
            'email': ParameterDescription(
                name: 'email', type: String, nullable: false),
            'password': ParameterDescription(
                name: 'password', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['user'] as User).authenticate(
              session,
              params['email'],
              params['password'],
            );
          },
        ),
        'createAccount': MethodConnector(
          name: 'createAccount',
          params: {
            'email': ParameterDescription(
                name: 'email', type: String, nullable: false),
            'userName': ParameterDescription(
                name: 'userName', type: String, nullable: false),
            'password': ParameterDescription(
                name: 'password', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['user'] as User).createAccount(
              session,
              params['email'],
              params['userName'],
              params['password'],
            );
          },
        ),
      },
    );
  }

  @override
  void registerModules(Serverpod pod) {}
}
