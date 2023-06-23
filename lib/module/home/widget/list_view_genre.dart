import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/selected_controller.dart';

class ListViewGenre extends StatelessWidget {
  const ListViewGenre({super.key, required this.genres});
  final Map genres;

  @override
  Widget build(BuildContext context) {
    SelectedController selectedController = Get.put(SelectedController());

    return SizedBox(
      height: 30,
      width: Get.mediaQuery.size.width,
      child: ListView.builder(
        itemCount: genres.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Obx(
          () => Padding(
            padding: const EdgeInsets.only(left: 30),
            child: GestureDetector(
              onTap: () {
                selectedController.selectedGenre(index);
              },
              child: Container(
                  height: 10,
                  // width: 80,
                  decoration: BoxDecoration(
                      color: (selectedController.genre.value == index)
                          ? const Color(0xffD98639)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                    ),
                    child: Text(
                      genres.keys.elementAt(index),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ))),
            ),
          ),
        ),
      ),
    );
  }
}
