import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:purplepass_test_task/modules/cash_drawer/controllers/cash_drawer_controller.dart';

class CashDrawerView extends GetView<CashDrawerController> {
  const CashDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => debugPrint('No way back=)')),
        title: const Text('Manage Cash Drawer'),
      ),
      body: const Text('Test here'),
    );
  }
}
