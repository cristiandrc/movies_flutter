import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        width: double.infinity,
        height: size.height * .5,
        child: Swiper(
          itemCount: 10,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * .6,
          itemHeight: size.height * .9,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: 'Movie'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: const FadeInImage(
                  image: NetworkImage('https://via.placeholder.com/300x400'),
                  placeholder:
                      NetworkImage('https://via.placeholder.com/300x400'),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
