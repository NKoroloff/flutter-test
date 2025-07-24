import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomLabeledSwitch extends StatelessWidget {
  const CustomLabeledSwitch({
    required this.onChanged,
    required this.label,
    required this.value,
    this.disabled = false,
    super.key,
  });
  final void Function(bool) onChanged;
  final String label;
  final bool value;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label.tr, style: TextStyle(color: disabled ? Colors.grey : Colors.black)),
        const Spacer(),
        CupertinoSwitch(value: value, onChanged: disabled == true ? null : onChanged),
        const SizedBox(width: 20),
      ],
    );
  }
}
