import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComingSoonImage extends StatelessWidget {
  const ComingSoonImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 225,
        width: Get.mediaQuery.size.width * 0.85,
        child: Stack(
          // fit: StackFit.expand,
          children: [
            SizedBox(
                height: 225,
                width: Get.mediaQuery.size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://www.lifehacker.com.au/wp-content/uploads/sites/4/2022/11/30/the-batman-streaming.jpg",
                    fit: BoxFit.cover,
                  ),
                )),
            const Positioned(top: 10, left: 20, child: Text("The Batman")),
            const Positioned(
                top: 15,
                right: 20,
                child: Icon(
                  Icons.share_outlined,
                  size: 23,
                )),
            Center(
              child: Stack(children: [
                Center(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
                const Center(
                  child: Icon(
                    Icons.play_circle,
                    color: Color(0xffD98639),
                    size: 60,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
