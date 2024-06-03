import '../../models/user.dart';

abstract class UserService {
  /// Sign in with email
  Future<User> signInWithEmail(String email, String password);

  /// Get User
  Future<User> getUser();

  /// Update User
  Future<void> updateUser(User user);

  /// Change Password
  Future<void> changePassword(String email, String password);

  /// Reset Password
  Future<void> resetPassword(String email);

  /// Signout user
  Future<void> signOut();

  /// Deactivate account
  Future<void> deleteAccount();
}
