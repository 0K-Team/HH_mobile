import 'package:eco_hero_mobile/common/app/app.dart';
import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupDependencyInjection();

  initializeDateFormatting();
  Intl.defaultLocale = 'pl_PL';

  runApp(const EcoHero());
}

