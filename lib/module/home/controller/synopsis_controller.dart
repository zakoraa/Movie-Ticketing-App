import 'package:get/get.dart';

class SynopsisController extends GetxController {
  var completeSynopsis = false.obs;

  void completedSynopsis() {
    completeSynopsis.value = !completeSynopsis.value;
  }

}
