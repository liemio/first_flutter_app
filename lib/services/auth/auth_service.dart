import 'package:first_app/services/auth/auth_provider.dart';
import 'package:first_app/services/auth/auth_user.dart';
import 'package:first_app/services/auth/firebase_auth_provider.dart';

//Kết nối service với interface AuthProvider
class AuthService implements AuthProvider {
  final AuthProvider provider;
  //contructor, gán giá trị cho provider ở dòng 6
  const AuthService(this.provider);

  factory AuthService.firebase() => AuthService(FirebaseAuthProvider());

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

  @override
  Future<void> initialize() => provider.initialize();
}
