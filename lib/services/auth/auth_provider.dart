import 'package:first_app/services/auth/auth_user.dart';

//đây là interface, giả sử sau này nếu phát triển chương trình có thêm chức năng
//đăng nhập bằng tài khoản apple, facebook, goole, ... thì cũng tuân theo
//interface này
abstract class AuthProvider {
  AuthUser? get currentUser;
  //Không cần dấu chấm hỏi trong Future<AuthUser?> logIn() vì nếu sai email,
  //password thì sẽ trả về error chứ không trả về AuthUser
  Future<AuthUser> logIn({
    required String email,
    required String password,
  });
  Future<AuthUser> createUser({
    required String email,
    required String password,
  });
  Future<void> logOut();
  Future<void> sendEmailVerification();
}
