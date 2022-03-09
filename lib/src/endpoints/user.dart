import 'package:pm_server/src/business/email_auth.dart';
import 'package:pm_server/src/business/users.dart';
import 'package:pm_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class User extends Endpoint {
  
  Future<AuthenticationResponse> authenticate(
    Session session,
    String email,
    String password,
  ) async {
    email = email.toLowerCase();
    password = password.trim();

    session.log('authenticate $email / $password', level: LogLevel.debug);

    // Fetch password entry
    var entry = await session.db.findSingleRow<EmailAuth>(
      where: EmailAuth.t.email.equals(email),
    );
    // var entry = await EmailAuth
    if (entry == null) {
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.invalidCredentials,
      );
    }

    session.log(' - found entry ', level: LogLevel.debug);

    // Check that password is correct
    if (entry.hash != Emails.generatePasswordHash(password, email)) {
      session.log(
          ' - ${Emails.generatePasswordHash(password, email)} saved: ${entry.hash}',
          level: LogLevel.debug);
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.invalidCredentials,
      );
    }

    session.log(' - password is correct, userId: ${entry.userId})',
        level: LogLevel.debug);

    var userInfo = await Users.findUserByUserId(session, entry.userId);
    if (userInfo == null) {
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.invalidCredentials,
      );
    }

    session.log(' - user found', level: LogLevel.debug);

    // Sign in user and return user info
    var auth = await session.auth.signInUser(
      entry.userId,
      'email',
      scopes: userInfo.scopes,
    );

    session.log(' - user signed in', level: LogLevel.debug);

    return AuthenticationResponse(
      success: true,
      user: userInfo,
      key: auth.key,
      keyId: auth.id,
    );
  }

  /// Creates a new account using a verification code.
  Future<UserInfo?> createAccount(
    Session session,
    String email,
    String userName,
    String password,
  ) async {
    // Email is verified, create a new user
    return await Emails.createUser(
      session,
      userName,
      email,
      password,
    );
  }
}
