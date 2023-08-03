import 'package:get/get.dart';

import '../controllers/boarding_screen_2_controller.dart';

class BoardingScreen2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BoardingScreen2Controller>(
      () => BoardingScreen2Controller(),
    );
  }
}
