import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class SettingsSectionTitle extends StatelessWidget {
  const SettingsSectionTitle({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.tr,
      style: TextStyle(fontSize: 14, color: Colors.grey[700], fontWeight: FontWeight.w600),
    );
  }
}
