import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/connectivity_controller.dart';
import 'package:purplepass_test_task/modules/translations/app_translation.dart';
import 'package:purplepass_test_task/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ConnectivityController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVC_test',
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      translations: AppTranslation(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
