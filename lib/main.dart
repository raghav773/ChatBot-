import 'package:chatbot/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: cardColor,
        ),
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(),
    );
  }
}
