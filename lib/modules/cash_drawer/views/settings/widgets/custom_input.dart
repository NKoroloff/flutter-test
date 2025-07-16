import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({required this.onChanged, this.initialValue = '', this.suffix, super.key});
  final void Function(String) onChanged;
  final String initialValue;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        onChanged: onChanged,
        initialValue: initialValue,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: 'Enter...',
          suffix: suffix,
          border: InputBorder.none,
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: true,
        ),
      ),
    );
  }
}
