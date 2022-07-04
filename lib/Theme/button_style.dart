import 'package:flutter/material.dart';

abstract class AppTextFieldLoginStyle {
  static final InputDecoration LinkButton = InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    isCollapsed: true,
    hintText: "Email или телефон",
    filled: true,
    fillColor: Color.fromARGB(255, 236, 236, 236),
    hintStyle:
        TextStyle(fontSize: 15, color: Color.fromARGB(255, 145, 144, 144)),
  );
} 

abstract class AppTextFieldPasswordStyle {
  static final InputDecoration LinkButton = InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    isCollapsed: true,
    hintText: "Введите пароль",
    filled: true,
    fillColor: Color.fromARGB(255, 236, 236, 236),
    hintStyle:
        TextStyle(fontSize: 15, color: Color.fromARGB(255, 145, 144, 144)),
  );
} 


abstract class AppAuthTitleStyle {
  static final TextStyle LinkButton = TextStyle(
  color: Colors.black, fontSize: 21);
} 

abstract class AppDescribeTittleStyle {
  static final TextStyle LinkButton = TextStyle(
  color:  Colors.grey, fontSize: 15);
} 



// стиль для авторизации TextField

// abstract class AppElevatedButtonStyle {
//   static final ButtonStyle LinkButton =  ButtonStyle(
//                     backgroundColor: isValid ? successColor : errorColor,
//                     minimumSize: MaterialStateProperty.all(Size.fromHeight(1)),
//                     foregroundColor: MaterialStateProperty.all(Colors.white),
//                     textStyle: MaterialStateProperty.all(
//                         TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//                     padding: MaterialStateProperty.all(
//                         EdgeInsets.symmetric(horizontal: 10, vertical: 10)));
// }