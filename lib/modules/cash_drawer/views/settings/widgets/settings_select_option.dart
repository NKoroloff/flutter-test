import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsSelectOption extends StatelessWidget {
  const SettingsSelectOption({
    required this.label,
    required this.isSelected,
    required this.onTap,
    super.key,
  });
  final String label;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(label.tr),
              const Spacer(),
              if (isSelected) const Icon(Icons.check, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
