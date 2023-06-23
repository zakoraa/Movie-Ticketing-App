import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/selected_controller.dart';

class CarouselSliderNowShowing extends StatelessWidget {
  const CarouselSliderNowShowing({super.key, required this.genres});

  final Map genres;

  @override
  Widget build(BuildContext context) {
    SelectedController selectedController = Get.find<SelectedController>();
    return Obx(() => CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            animateToClosest: false,
            height: 230,
            scrollDirection: Axis.horizontal,
            enlargeCenterPage: true,
            autoPlayAnimationDuration: const Duration(seconds: 5),
            viewportFraction: 0.45),
        items: List.generate(
            genres.values.elementAt(selectedController.genre.value).length,
            (index) {
          return SizedBox(
            height: 230,
            width: 160,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "${genres.values.elementAt(selectedController.genre.value)[index].image}",
                fit: BoxFit.cover,
              ),
            ),
          );
        })));
  }
}
