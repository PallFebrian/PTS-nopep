import 'package:flutter/material.dart';

class TextForm1 extends StatefulWidget {
  const TextForm1(
      {Key? key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure})
      : super(key: key);

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  State<TextForm1> createState() => _TextForm1State();
}

class _TextForm1State extends State<TextForm1> {
  bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 12, left: 15),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 17, right: 15),
          child: TextFormField(
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
            controller: widget.controller,
            keyboardType: widget.textInputType,
            obscureText: _isSecurePassword,
            decoration: InputDecoration(
              hintText: widget.text,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(0),
              // hintStyle: const TextStyle(height: 1),
              // prefixIcon: Icon(Icons.lock),
              suffixIcon: togglePassword(),
            ),
          ),
        ));
  }

  Widget togglePassword(){
    return IconButton(onPressed: (){
      setState((){
           _isSecurePassword = !_isSecurePassword;
      });
    }, icon: _isSecurePassword ? Icon(Icons.visibility) :  Icon(Icons.visibility_off),
    color: Colors.grey,);
  }
}