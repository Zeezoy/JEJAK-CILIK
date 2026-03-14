import 'package:flutter/material.dart';
import 'features/profile/pages/home_page.dart';

void main() {
  runApp(const JejakCilikApp());
}

class JejakCilikApp extends StatelessWidget {
  const JejakCilikApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        name: "User",
      ),
    );
  }
}