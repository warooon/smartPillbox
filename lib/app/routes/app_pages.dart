// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import '../modules/forgot/bindings/forgot_binding.dart';
import '../modules/Home/Views/home_view.dart';
import '../modules/Home/Bindings/home_binding.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/Views/login_view.dart';
import '../modules/forgot/views/forgot_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        transition: Transition.downToUp),
    GetPage(
        name: _Paths.LOGIN,
        page: () => const LoginView(),
        binding: LoginBinding(),
        transition: Transition.downToUp),
    GetPage(
        name: _Paths.FORGOT,
        page: () => const ForgotView(),
        binding: ForgotBinding(),
        transition: Transition.downToUp),
  ];
}
