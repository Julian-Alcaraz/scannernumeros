import 'package:flutter/material.dart';
import 'package:scannernumeros/pages/home/home.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> get routes => {
        "/Home": (_) => HomePage(),
      };
}
