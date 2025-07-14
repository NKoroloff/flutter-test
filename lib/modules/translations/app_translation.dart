import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en.dart';
import 'es.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': en, 'es_ES': es};
}

class TranslationController extends GetxController {
  void changeLanguage({required String language}) {
    Locale locale;
    if (language == 'en') {
      locale = const Locale('en', 'US');
    } else {
      locale = const Locale('es', 'ES');
    }
    Get.updateLocale(locale);
  }
}
