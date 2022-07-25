import 'package:firebase_auth/firebase_auth.dart';
import 'package:zemira/src/controllers/user_controller.dart';
import 'package:zemira/src/models/user.model.dart';

class LoginController {
  final String username, password;
  late UserModel _user;
  final userController = UserController();
  LoginController(this.username, this.password);
  proced() async {
    try {
      await _getCredential();
      await _storeUser();
    } catch (_) {
      rethrow;
    }
  }

  _getCredential() async {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: username, password: password);
    _user = UserModel(
        displayName: credential.user?.displayName ?? '',
        email: username,
        image: credential.user?.photoURL ?? '');
  }

  Future<void> _storeUser() async {
    try {
      await userController.storeUserData(_user);
    } catch (_) {
      rethrow;
    }
  }
}
