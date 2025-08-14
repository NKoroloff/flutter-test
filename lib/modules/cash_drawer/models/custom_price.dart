class CustomPrice {
  bool isActive;
  String value;
  int quantity;
  CustomPrice({required this.value, required this.quantity, this.isActive = false});

  CustomPrice clone() {
    return CustomPrice(value: value, quantity: quantity, isActive: isActive);
  }
}
