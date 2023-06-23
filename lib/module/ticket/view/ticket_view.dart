import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../list/movie_list.dart';
import '../widget/description.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final heightImage = Get.mediaQuery.size.height * 0.75;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.mediaQuery.size.height * 0.15,
            ),
            SizedBox(
              // height: Get.mediaQuery.size.height * 0.15,
              width: Get.mediaQuery.size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image.network(
                      "${movie_list[3].image}",
                      height: heightImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: (heightImage - 100) / 2,
                    left: (Get.mediaQuery.size.width - 40) / 2,
                    // right: 0,
                    child: Stack(children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      const Positioned(
                        top: -4.5,
                        left: -4.5,
                        child: Icon(
                          Icons.play_circle,
                          color: Color(0xffD98639),
                          size: 49,
                        ),
                      ),
                    ]),
                  ),
                  Positioned(
                      bottom: heightImage,
                      left: (Get.mediaQuery.size.width - 150) / 2,
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffD98639),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.local_play_rounded,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "Get Tickets",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ],
                        )),
                      )),
                  Description(heightImage: heightImage)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
