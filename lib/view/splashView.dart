// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:login/utils/globalColors.dart';
import 'package:login/view/login.dart';

// ignore: use_key_in_widget_constructors
class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(Login());
    });
    return Scaffold(
      backgroundColor: Color(0xff5b3e31),
      // ignore: prefer_const_constructors
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Center(
                // ignore: prefer_const_constructors
                child: Text(
              "HALOO",
              // ignore: prefer_const_constructors
              style: TextStyle(
                  color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
            )),
            Center (
                // ignore: prefer_const_constructors
                child: Text(
              "Welcomeback!!",
              // ignore: prefer_const_constructors
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300,),
            )),
          ],
        ),
      ),
    );
  }
}
