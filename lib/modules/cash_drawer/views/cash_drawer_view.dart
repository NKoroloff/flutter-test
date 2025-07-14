import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/cash_drawer_controller.dart';
import 'package:purplepass_test_task/modules/translations/app_translation.dart';

class CashDrawerView extends GetView<CashDrawerController> {
  const CashDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final translationController = Get.find<TranslationController>();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => debugPrint('No way back=)')),
        title: const Text('Manage Cash Drawer'),
      ),
      body: Column(
        children: [
          Text('hello'.tr),
          Text('current'.tr),
          TextButton(
            onPressed: () => translationController.changeLanguage(language: 'en'),
            child: const Text('Press to set English'),
          ),
          TextButton(
            onPressed: () => translationController.changeLanguage(language: 'es'),
            child: const Text('Press to set Spanish'),
          ),
        ],
      ),
    );
  }
}
