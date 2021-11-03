import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextFormFieldWdg extends StatelessWidget {
  final String hint;
  final IconData icon;
  final void Function(String?)? onClick;
  String _errorMessage(String str)
  {
    switch(hint){
      case "Enter your name" : return 'Name is empty !';
      case "Enter your email" : return 'email is empty !';
      case "Enter your password" : return 'password is empty !';
    }
    return '';
    
  }
  const CustomTextFormFieldWdg({ required this.icon, required this.hint, this.onClick });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return _errorMessage(hint);
          }
        },
        obscureText: hint=="Enter your password" ? true: false ,
        onSaved: onClick,
        cursorColor: kColorTextMain,
        style: TextStyle(
          color: Colors.red,
          // color: kColorTextFill,
        ),
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon ,
            color: kColorTextMain,
          ),
          filled: true,
          fillColor: kColorTextFill,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: kColorTextMain,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        fontSize: 26,

      ),
    );
  }
}


