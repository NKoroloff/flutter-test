import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double? height;
  const CustomDivider({this.height = 1, super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: height, color: Color.fromARGB(255, 202, 202, 202));
  }
}
