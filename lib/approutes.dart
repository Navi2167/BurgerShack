import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newfutterpro/constants/routes.dart';
import 'package:newfutterpro/main.dart';
import 'package:newfutterpro/pickup.dart';

class AppRoutes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case MyRoutes.homePage:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case MyRoutes.pickPage:
        return MaterialPageRoute(builder: (_) => PickUp());
    }
  }
}