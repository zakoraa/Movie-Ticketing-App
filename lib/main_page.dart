import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp2/core.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Stack(
        children: [
          _buildPage(),
          const MyTabBar(),
        ],
      ),
    ));
  }
}

Widget _buildPage() {
  SelectedController selectedController = Get.put(SelectedController());
  switch (selectedController.activeTab.value) {
    case 0:
      return const HomeView();
    case 1:
      return const SearchPageView();
    case 2:
      return const TicketView();
    default:
      return const MainPage();
  }
}
