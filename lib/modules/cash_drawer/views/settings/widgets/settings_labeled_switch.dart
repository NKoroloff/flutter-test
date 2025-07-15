import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SettingsLabeledSwitch extends StatelessWidget {
  const SettingsLabeledSwitch({required this.label, super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label.tr),
        const Spacer(flex: 1),
        CupertinoSwitch(value: false, onChanged: (value) {}),
        const SizedBox(width: 20),
      ],
    );
  }
}
