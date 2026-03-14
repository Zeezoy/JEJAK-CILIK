import 'package:flutter/material.dart';
import '../../features/profile/pages/home_page.dart';
import '../../features/module/pages/module_page.dart';
import '../../features/submodule/pages/submodul_page.dart';
import '../../features/reward/pages/reward_page.dart';

class AppRouter {

  static Map<String, WidgetBuilder> routes = {

    "/home": (context) => const HomePage(name: "User"),

    "/module": (context) => const ModulePage(),

    "/reward": (context) => const RewardPage(),

  };

}