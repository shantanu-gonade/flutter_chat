import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import './screens/splash_screen.dart';
import './screens/auth_screen.dart';
import './screens/chat_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.blueGrey,
        accentColor: Colors.lightBlueAccent,
        accentColorBrightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.blueAccent,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (ctx, userSanpshot) {
          if (userSanpshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          }
          if (userSanpshot.hasData) {
            return ChatListScreen();
          }
          return AuthScreen();
        },
      ),
    );
  }
}

