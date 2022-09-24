import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:login/utils/globalColors.dart';
import 'package:login/view/widget/button.dart';
import 'package:login/view/widget/buttonR.dart';
// ignore: unused_import
import 'package:login/view/widget/sosmed.dart';
import 'package:login/view/widget/sosmedR.dart';
import 'package:login/view/widget/textField.dart';
import 'package:login/view/widget/textForm.dart';

// ignore: use_key_in_widget_constructors
class Register extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userController = TextEditingController();

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
              child: const Text(
                "SIGN UP-",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 65,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Create an account so you can manage your personal finances",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
            // const Text(
            //   "your personal finances",
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 30,
            //       fontWeight: FontWeight.w200),
            // ),
            const SizedBox(
              height: 15,
            ),
            TextForm(
              controller: userController,
              text: 'Username',
              obscure: false,
              textInputType: TextInputType.multiline,
              // decoration: InputDecoration(),
            ),
            const SizedBox(
              height: 10,
            ),
            TextForm(
              controller: emailController,
              text: 'Email',
              obscure: false,
              textInputType: TextInputType.emailAddress,
              // decoration: InputDecoration(),
            ),
            const SizedBox(
              height: 10,
            ),
            TextForm1(
              controller: passwordController,
              text: "Password",
              textInputType: TextInputType.text,
              obscure: true,
              // decoration: InputDecoration(
              //   iconColor: Colors.black,
              // prefixIcon: Icon(Icons.lock),
              // suffixIcon: Icon(Icons.remove_red_eye)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              textAlign: TextAlign.end,
              "By signing up,you're agree to our Terms & Conditional",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
            const Text(
              textAlign: TextAlign.end,
              "and Privacy",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            const ButtonR(),
            const SizedBox(
              height: 25,
            ),
            const SosmedR(),
          ],
        ),
      ))),
    );
  }
}
