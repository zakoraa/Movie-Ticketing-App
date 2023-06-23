import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/selected_controller.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    SelectedController selectedController = Get.find<SelectedController>();
    List tabBar = ["All Movies", "Explore", "Trending Now"];
    return Container(
      height: Get.mediaQuery.size.height * 0.15,
      width: Get.mediaQuery.size.width,
      color: const Color(0xff1E1F27),
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SizedBox(
          width: Get.mediaQuery.size.width,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(tabBar.length, (index) {
              return Obx(() => GestureDetector(
                    onTap: () {
                      selectedController.activedTabBar(index);
                    },
                    child: Text(
                      tabBar[index],
                      style: TextStyle(
                        color: (selectedController.activeTab.value == index)
                            ? const Color(0xffD98639)
                            : Colors.white,
                      ),
                    ),
                  ));
            }),
          ),
        ),
      ),
    );
  }
}
