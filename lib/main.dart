import 'package:eco_hero_mobile/common/app/app.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencyInjection();

  runApp(const EcoHero());
}

