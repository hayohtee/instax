import '../user_repository.dart';

abstract class UserRepository {
  Future<void> signIn(String email, String password);
  Future<MyUser> signUp(MyUser user, String password);
  Future<void> logOut();
  Future<void> resetPassword(String email);
  Future<void> setUserData(MyUser myUser);
  Future<MyUser> getMyUser(String myUserId);
}
