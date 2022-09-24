import 'package:flutter/material.dart';
import 'package:login/utils/globalColors.dart';

class ButtonP extends StatelessWidget {
  const ButtonP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        print('LOGIN');
        Navigator.pushNamed(context, '/email');
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
        child: InkWell(
           onTap:() {
        Navigator.pushNamed(context, '/email');
      },
          child: const Text(
            'Submit',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
