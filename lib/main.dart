import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zemira/src/bloc/authentication/authentication_bloc.dart';
import 'package:zemira/src/pages/home/home_page.dart';
import 'package:zemira/src/pages/login/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Fullscreen config
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  //No rotate screan config
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
   //Firebase initialize
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(context)..add(AutoLoginEvent()),
      child: MaterialApp(
        theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
        debugShowCheckedModeBanner: false,
        title: 'Zemira',
        home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            if (state is UnauthenticatedState) {
              return LoginPage();
            }
            if (state is AuthenticatedState) {
              return HomePage();
            }
            return LoginPage();
          },
        ),
      ),
    );
  }
}
