import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zemira/src/pages/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Fullscreen config
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  //No rotate screan config
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      title: 'Zemira',
      home: LoginPage(),
    );
  }
}
