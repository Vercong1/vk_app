import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vk_app/widgets/autf/autf_login_widgets.dart';
import 'package:vk_app/widgets/autf/autf_pass_widgets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  )); // прозрачный статус бар
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(backgroundColor: Color.fromARGB(250, 250, 250, 250)),
      ),
      routes: {
        '/': (context) => AutfLoginWidget(),
        '/password_screen': (context) => AutfPasswordWidget(),
      },
      initialRoute: '/',
    );
  }
}
