import 'package:eco_hero_mobile/common/router/go_router.dart';
import 'package:eco_hero_mobile/common/util/color_util.dart';
import 'package:flutter/material.dart';

void error(String description) {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.red,
    content: Text(
      description,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );

  ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(snackBar);
}

void success(String description) {
  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: accent,
    content: Text(
      description,
      style: TextStyle(
        color: element,
      ),
    ),
  );

  ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(snackBar);
}