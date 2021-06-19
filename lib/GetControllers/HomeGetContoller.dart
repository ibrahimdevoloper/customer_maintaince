import 'package:get/get.dart';

class HomeGetController extends GetxController {
  int pageCount = 0;

  updateIndicator(int indicator) {
    pageCount = indicator;
    update();
  }
}
