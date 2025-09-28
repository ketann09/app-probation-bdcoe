import 'package:flutter/material.dart';
import 'screens/login.dart'; // Import the new login screen file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Inter',
      ),
      // Set the home to our imported LoginScreen widget
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
