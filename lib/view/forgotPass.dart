// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/utils/globalColors.dart';
import 'package:login/view/widget/button.dart';
import 'package:login/view/widget/buttonP.dart';
import 'package:login/view/widget/sosmed.dart';
import 'package:login/view/widget/textField.dart';
import 'package:login/view/widget/textForm.dart';

class ForgotPass extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                 onTap: () {
              Navigator.pushNamed(context, '/login');
            },
                child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,))
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "FORGOT",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 58,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "PASSWORD?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 58,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
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
              height: 30,
            ),
            TextForm(
              controller: emailController,
              text: 'Email ID / Mobile Number',
              obscure: false,
              textInputType: TextInputType.emailAddress,
              // decoration: InputDecoration(),
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
