import 'package:flutter/material.dart';
import 'package:http_and_provider/home_app.dart';
void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
      theme: ThemeData.light(),
    );
  }
}