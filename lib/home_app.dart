import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('....')),
      body: Column(
        children: [
          Swiper(
            itemCount: 10,
            autoplay: true,
            itemHeight: size.height * 0.5,
            itemWidth: 200,
            layout: SwiperLayout.STACK,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/200/300?random=$index',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
