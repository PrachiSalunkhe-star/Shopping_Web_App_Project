import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCurousel extends StatelessWidget {
  const HomeCurousel({super.key});

  @override
  Widget build(BuildContext context) {
    final images=["https://plus.unsplash.com/premium_photo-1664392147011-2a720f214e01?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
    'https://plus.unsplash.com/premium_photo-1679913792906-13ccc5c84d44?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
    "https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/file-1715714113747-b8b0561c490eimage?w=416&dpr=2&auto=format&fit=crop&q=60",
    "https://plus.unsplash.com/premium_photo-1728759436968-db4b52249ffa?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ];
    return CarouselSlider(
 
      options: CarouselOptions(height: 180,
      autoPlay: true,
      enlargeCenterPage: true,
      autoPlayCurve: Curves.bounceInOut,
      ),//animation
      items: images.map((image)
      {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(image,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
        );
      }).toList(),
      );
  }
}