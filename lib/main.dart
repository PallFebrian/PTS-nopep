import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/view/email.dart';
import 'package:login/view/forgotPass.dart';
import 'package:login/view/login.dart';
import 'package:login/view/register.dart';
import 'package:login/view/splashView.dart';

void main() {
    runApp(App());
}

// ignore: use_key_in_widget_constructors
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       theme: new ThemeData(scaffoldBackgroundColor: const Color(0xff5b3e31)),
      // home: SplashView(),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashView(),
        '/register': (context) => Register(),
        '/login': (context) => Login(),
        '/forgotPass': (context) => ForgotPass(),
        '/email': (context) => Email(),
        
      }
    ); 
  }
}