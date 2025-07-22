import 'package:flutter/material.dart';
import 'package:purplepass_test_task/modules/cash_drawer/models/inventory_button_model.dart';

bool isDark(Color color) {
  final luminance = color.computeLuminance();
  return luminance < 0.5;
}

class InventoryButton extends StatelessWidget {
  const InventoryButton({
    required this.variant,
    required this.color,
    required this.onTap,
    required this.label,
    required this.price,
    this.infoBackgroundColor = const Color.fromARGB(255, 202, 202, 202),
    this.disabled = false,
    this.info,
    super.key,
  });
  final InventoryButtonVariant variant;
  final Color infoBackgroundColor;
  final void Function() onTap;
  final bool disabled;
  final String label;
  final String price;
  final String? info;
  final Color color;

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 8;

    final backgroundColor = disabled
        ? Colors.transparent
        : (variant == InventoryButtonVariant.filled ? color : Colors.transparent);

    final borderColor = disabled
        ? Border.all(color: Colors.grey.shade300)
        : Border.all(
            color: variant == InventoryButtonVariant.outlined ? color : Colors.transparent,
          );

    final textColor = disabled
        ? Colors.grey.shade600
        : (variant == InventoryButtonVariant.filled ? Colors.white : color);

    final infoBg = disabled ? Colors.grey.shade300 : infoBackgroundColor;

    final infoTextColor = disabled
        ? Colors.grey.shade600
        : (isDark(infoBg) ? Colors.white : Colors.black);

    return Material(
      borderRadius: BorderRadius.circular(borderRadius),
      color: backgroundColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: disabled ? null : onTap,
        child: Container(
          height: 79,
          // width: width,
          decoration: BoxDecoration(
            border: borderColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 7),
                child: Column(
                  children: [
                    Text(
                      label,
                      style: TextStyle(color: textColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      price,
                      style: TextStyle(color: textColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              if (info != null)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: infoBg,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius - 1),
                      bottomRight: Radius.circular(borderRadius - 1),
                    ),
                  ),
                  child: Text(
                    info!,
                    style: TextStyle(color: infoTextColor, fontSize: 13),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
