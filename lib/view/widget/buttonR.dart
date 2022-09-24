import 'package:flutter/material.dart';
import 'package:login/utils/globalColors.dart';

class ButtonR extends StatelessWidget {
  const ButtonR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        print('LOGIN');
      },
      child: Container(
        alignment: Alignment.center,
        height: 60 ,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              )
            ]),
        child: const Text(
          'Continue',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
