import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({required this.value, required this.onChanged, this.label, super.key});
  final RxString value;
  final void Function(String) onChanged;
  final String? label;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value.value);

    // Слушаем внешние изменения
    ever(widget.value, (val) {
      if (_controller.text != val) {
        _controller.text = val;
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleClear() {
    _controller.clear();
    widget.onChanged('');
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: TextFormField(
          controller: _controller,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            label: widget.label != null ? Text(widget.label!.tr) : null,
            contentPadding: const EdgeInsets.all(10),
            hintText: 'Enter...',
            suffixIcon: widget.value.value.isNotEmpty
                ? IconButton(icon: const Icon(Icons.clear), onPressed: _handleClear, iconSize: 20)
                : null,
            border: InputBorder.none,
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            filled: true,
          ),
        ),
      ),
    );
  }
}
