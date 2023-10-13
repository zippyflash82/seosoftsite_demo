import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:seosoftsite_demo/common/app_bindings.dart';
import 'package:seosoftsite_demo/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppIntialBindings(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter SeoSoftSiteDemo',
      home: const SplashScreen(),
    );
  }
}

