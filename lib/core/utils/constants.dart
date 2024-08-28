import 'package:flutter/material.dart';

class ScreenUtilSize {
  const ScreenUtilSize._();
  static const double width = 390;
  static const double height = 844;
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

enum MessageType {
  info,
  warning,
  success,
  danger,
}

class ConstantValue {
  const ConstantValue._();
  static const url = 'https://swapi.dev/api';
  static const apiKey = 'AIzaSyDVXcRR4g0TlRjD6BHN_6VuobkwsOj4lIg';
}
