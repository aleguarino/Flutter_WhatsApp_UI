import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF075e54),
        accentColor: Color(0xFF128c7e),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
