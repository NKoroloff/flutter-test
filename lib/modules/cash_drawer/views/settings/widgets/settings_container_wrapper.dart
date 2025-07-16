import 'package:flutter/material.dart';

class SettingsContainerWrapper extends StatelessWidget {
  const SettingsContainerWrapper({
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(20, 10, 0, 10),
    super.key,
  });
  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(padding: padding, child: child),
    );
  }
}
