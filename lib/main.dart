import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_logindemo/constants/constants.dart';
import 'package:flutter_logindemo/ui/seconnecter.dart';
import 'package:flutter_logindemo/ui/inscrire.dart';
import 'package:flutter_logindemo/ui/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.green),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        SIGN_IN: (BuildContext context) => SignInPage(),
        SIGN_UP: (BuildContext context) => SignUpScreen(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}
