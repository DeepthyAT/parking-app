import '../models/user.dart';

abstract class UserManager {
  /// Current User
  User? get currentUser;

  /// Sign in with Email
  Future<void> signInWithEmail(String email, String password);

  /// Signout
  Future<void> signOut();
}

class AppUserManager implements UserManager {
  User? _user;

  @override
  User? get currentUser => _user;

  @override
  Future<void> signInWithEmail(String email, String password) {
    // TODO: implement signInWithEmail
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
