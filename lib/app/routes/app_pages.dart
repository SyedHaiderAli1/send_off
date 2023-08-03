import 'package:get/get.dart';

import '../modules/boarding_screen/bindings/boarding_screen_binding.dart';
import '../modules/boarding_screen/views/boarding_screen_view.dart';
import '../modules/boarding_screen_2/bindings/boarding_screen_2_binding.dart';
import '../modules/boarding_screen_2/views/boarding_screen_2_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOARDING_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.BOARDING_SCREEN,
      page: () => const BoardingScreenView(),
      binding: BoardingScreenBinding(),
    ),
    GetPage(
      name: _Paths.BOARDING_SCREEN_2,
      page: () => const BoardingScreen2View(),
      binding: BoardingScreen2Binding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
