import 'package:get/get.dart';

class SelectedController extends GetxController {
  var activeTab = 0.obs;
  var genre = 0.obs;

  void activedTabBar(int index) {
    activeTab.value = index;
  }

  void selectedGenre(int index) {
    genre.value = index;
  }
}
