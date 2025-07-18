import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    required this.onChanged,
    this.initialValue = '',
    this.onClear,
    this.suffix,
    super.key,
  });
  final void Function(String) onChanged;
  final void Function()? onClear;
  final String initialValue;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: TextFormField(
        onChanged: onChanged,
        initialValue: initialValue,
        decoration: InputDecoration(
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
