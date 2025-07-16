import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SettingsLabeledSwitch extends StatelessWidget {
  const SettingsLabeledSwitch({
    required this.onChanged,
    required this.label,
    required this.value,
    super.key,
  });
  final void Function(bool) onChanged;
  final String label;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label.tr),
        const Spacer(),
        CupertinoSwitch(value: value, onChanged: onChanged),
        const SizedBox(width: 20),
      ],
    );
  }
}
