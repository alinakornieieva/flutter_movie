import 'package:flutter/material.dart';

class ImgHeader extends StatelessWidget {
  const ImgHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
            'https://media.themoviedb.org/t/p/w1000_and_h450_multi_faces/bWIIWhnaoWx3FTVXv6GkYDv3djL.jpg'),
        Positioned(
          left: 15,
          top: 15,
          bottom: 15,
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Image.network(
              'https://image.tmdb.org/t/p/w116_and_h174_face/hkxxMIGaiCTmrEArK7J56JTKUlB.jpg',
            ),
          ),
        )
      ],
    );
  }
}
