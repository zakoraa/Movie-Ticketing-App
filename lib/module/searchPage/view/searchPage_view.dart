import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/recommended_place.dart';
import '../widget/text_field_widget.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: Get.mediaQuery.size.width * 0.85,
            child: Padding(
              padding: EdgeInsets.only(top: Get.mediaQuery.size.height * 0.10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Select Branch",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TextFieldWidget(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    "Nearby",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        wordSpacing: 10),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const RecommendedPlace(
                    img:
                        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/25/ce/ea/kingsford-hotel-manila.jpg?w=1200&h=-1&s=1",
                    place_name: "SM City Marikina",
                    tickets: "PHP 279",
                    cinemas: "8 Cinemas",
                    rating: "4.9",
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    "Recommended",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        wordSpacing: 10),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const RecommendedPlace(
                      img:
                          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/261345900.jpg?k=e2e77ca61ee3d105a811ce785b691e0202f067c825c36b056fd93f7e45f9866e&o=&hp=1",
                      place_name: "Glorietta 4 - Makati",
                      tickets: "PHP 249",
                      cinemas: "3 Cinemas",
                      rating: "4.6"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const RecommendedPlace(
                      img:
                          "https://www.kayak.co.id/rimg/himg/44/fe/90/leonardo-61545-147068318-531165.jpg?width=1366&height=768&crop=true",
                      place_name: "Hamilton",
                      tickets: "PHP 300",
                      cinemas: "7 Cinemas",
                      rating: "4.8"),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
