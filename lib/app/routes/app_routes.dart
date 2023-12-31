// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const FORGOT = _Paths.FORGOT;
}

abstract class _Paths {
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const FORGOT = '/forgot';
}
