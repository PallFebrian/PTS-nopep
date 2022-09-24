// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/utils/globalColors.dart';
import 'package:login/view/widget/button.dart';
import 'package:login/view/widget/buttonP.dart';
import 'package:login/view/widget/sosmed.dart';
import 'package:login/view/widget/textField.dart';
import 'package:login/view/widget/textForm.dart';

class FirstView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
            alignment: Alignment.center,
             height: 400,
             
             
                // child: CircleAvatar(
                //    radius: 80,
                //   backgroundImage: NetworkImage("https://toppng.com/uploads/preview/mail-icon-white-on-grey-transparent-background-email-logos-11562922127br9wlekuvf.png"),
                // )
            ),
              Container(
              alignment: Alignment.center,
              child: Text(
                "E-mails",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 58,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Dont worry it happens. Please enter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              "the address associated with your account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
            Text(
              "your account.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
            
            const SizedBox(
              height: 40,
            ),
            ButtonP(),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ))),
    );
  }
}
