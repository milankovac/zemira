import 'package:zemira/src/controllers/user_controller.dart';

class AutoLoginController {
  final userController = UserController();
  proced() async {
    try {
      await _checkStoredUser();
    } catch (_) {
      rethrow;
    }
  }

  _checkStoredUser() async {
    final exists = await userController.userExists();
    if (!exists) {
      throw Exception('User is not logged in');
    }
    return true;
  }
}
