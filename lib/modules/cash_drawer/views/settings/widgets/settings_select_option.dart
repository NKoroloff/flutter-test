import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsSelectOption extends StatelessWidget {
  const SettingsSelectOption({
    required this.isSelected,
    required this.label,
    required this.onTap,
    this.disabled = false,
    super.key,
  });
  final void Function() onTap;
  final bool isSelected;
  final String label;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: disabled ? null : onTap,
        child: Container(
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(label.tr, style: TextStyle(color: disabled ? Colors.grey : Colors.black)),
              const Spacer(),
              if (isSelected) Icon(Icons.check, color: disabled ? Colors.grey : Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
