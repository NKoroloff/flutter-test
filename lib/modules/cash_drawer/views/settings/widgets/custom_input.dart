import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    required this.onChanged,
    this.initialValue = '',
    this.onClear,
    this.suffix,
    this.label,
    super.key,
  });
  final void Function(String) onChanged;
  final void Function()? onClear;
  final String initialValue;
  final Widget? suffix;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: TextFormField(
        onChanged: onChanged,

        initialValue: initialValue,
        decoration: InputDecoration(
          label: label != null ? Text(label!.tr) : null,
          contentPadding: EdgeInsets.all(10),
          hintText: 'Enter...',
          suffixIcon:
              onClear != null
                  ? IconButton(icon: const Icon(Icons.clear), onPressed: onClear, iconSize: 20)
                  : null,
          border: InputBorder.none,
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: true,
        ),
      ),
    );
  }
}
