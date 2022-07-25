import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
class UserController{

  storeUserData(userData) async{
    try {
      final prefs = await SharedPreferences.getInstance();
      dynamic user = jsonEncode(userData.toJson());
      await prefs.setString('user', user);
    } catch (error) {
      throw Exception('Wrong user data');
    }
  }

  userExists() async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('user');
  }
}