// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/utils/globalColors.dart';

class Sosmed extends StatelessWidget {
  const Sosmed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
              height: 10,
            ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Dont have an account?',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/register');
            },
            child: Text(
              'Create account',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
          ),
        ),
         const SizedBox(
              height: 15,
            ),
         Container(
          alignment: Alignment.center,
          child: Text(
            '-Or Sign In With-',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 65,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/aFWiT2lTa9CYBpyPjfgfNHd0r5puwKRGj2rHpdPTNrz2N9LXgN_MbLjePd1OTc0E8Rl1"),
                )
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 65,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Facebook_icon.svg/2048px-Facebook_icon.svg.png"),
                )
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 65,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/LM9vBt64KdRxLFRPMpNM6OvnGTGoUFSXYV-w-cGVeUxhgFWkCsfsPSJ5GYh7x9qKqw"),
                )
              ),
            )
          ],
        )
      ],
    );
  }
}
