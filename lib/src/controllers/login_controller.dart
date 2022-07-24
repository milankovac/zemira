import 'package:firebase_auth/firebase_auth.dart';

class LoginController {
  final String username, password;
  LoginController(this.username, this.password);
  proced() async {
    try{
     await _getCredential();
    }catch(_){
      rethrow;
    }
  }

  _getCredential() async {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: username, password: password);
      print(credential);
  }
}
