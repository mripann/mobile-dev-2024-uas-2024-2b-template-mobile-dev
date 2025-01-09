import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/messages_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Rute awal aplikasi
      routes: {
        '/': (context) => HomeScreen(), // Halaman Home
        '/sign-in': (context) => SignInScreen(), // Halaman Sign In
        '/sign-up': (context) => SignUpScreen(), // Halaman Sign Up
        '/dashboard': (context) => DashboardScreen(), // Halaman Dashboard
        '/messages': (context) => MessagesScreen(), // Halaman Messages
      },
    );
  }
}