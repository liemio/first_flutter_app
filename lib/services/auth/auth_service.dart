import 'package:first_app/services/auth/auth_provider.dart';
import 'package:first_app/services/auth/auth_user.dart';

//Kết nối serviice với interface AuthProvider
class AuthService implements AuthProvider {
  final AuthProvider provider;
  //contructor, gán giá trị cho provider ở dòng 6
  const AuthService(this.provider);

  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) =>
      provider.createUser(
        email: email,
        password: password,
      );

  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser> logIn({
    required String email,
    required String password,
  }) =>
      provider.logIn(
        email: email,
        password: password,
      );

  @override
  Future<void> logOut() => provider.logOut();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();
}
