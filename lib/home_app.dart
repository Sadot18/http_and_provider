import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Card Swiper')),
      body: Center(child: Text('Hola mundo')),
    );
  }
}
