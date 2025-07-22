import 'package:flutter/material.dart';

enum InventoryButtonVariant { outlined, filled }

class InventoryItem {
  final InventoryButtonVariant variant;
  final Color color;
  final VoidCallback onTap;
  final String label;
  final String price;
  final String? info;
  final Color? infoBackgroundColor;
  final bool disabled;

  InventoryItem({
    required this.variant,
    required this.color,
    required this.onTap,
    required this.label,
    required this.price,
    this.info,
    this.infoBackgroundColor,
    this.disabled = false,
  });
}
