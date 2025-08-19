import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/translations/app_translation.dart';
import 'package:purplepass_test_task/routes/app_pages.dart';

Future<void> checkConnectivityStatus() async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  print(connectivityResult);
  if (connectivityResult.contains(ConnectivityResult.mobile)) {
    // Connected to a mobile network
    print('Connected to mobile network');
  } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
    // Connected to a Wi-Fi network
    print('Connected to Wi-Fi');
  } else if (connectivityResult.contains(ConnectivityResult.none)) {
    // Not connected to any network
    print('No network connection');
  }
}

void main() {
  runApp(const MyApp());
  checkConnectivityStatus();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
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
