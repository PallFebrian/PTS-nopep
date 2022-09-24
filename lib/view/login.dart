// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:login/utils/globalColors.dart';
import 'package:login/view/widget/button.dart';
import 'package:login/view/widget/sosmed.dart';
import 'package:login/view/widget/textField.dart';
import 'package:login/view/widget/textForm.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool paket1 = false;
  String? dataBonus;

  void _kirimData() {
    if (paket1 == true) {
      setState(() {
        dataBonus = 'Remember me';
      });
    }
  }

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
              const SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "LOGIN-",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome back.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w200),
              ),
              Text(
                "You've been missed!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 15,
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
              Row(
                children: [
                  Checkbox(
                      value: paket1,
                      onChanged: ((bool? value) {
                        setState(() {
                          paket1 = value!;
                        });
                      })),
                  // Text('Remember me',   style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 15,
                  //         fontWeight: FontWeight.w300),),
                  Expanded(
                    // child: Checkbox(value: isChecked, onChanged: (value){
                    //   setState:(()=>isChecked = value!);
                    // },);

                    child: Text(
                      "Remember me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgotPass');
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Button(),
              const SizedBox(
                height: 25,
              ),
              Sosmed(),
            ],
          ),
        ))),
      );
    }
  }
