import 'package:flutter/material.dart';

class SettingsContainerWrapper extends StatelessWidget {
  const SettingsContainerWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(padding: const EdgeInsets.fromLTRB(20.0, 10, 0, 10), child: child),
    );
  }
}
