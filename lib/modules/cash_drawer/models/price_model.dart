import 'package:purplepass_test_task/modules/cash_drawer/models/price_colors_model.dart';

enum PriceType { general, ase }

abstract class Price {
  int quantity;
  PriceColor priceColor;
  int id;
  String name;
  PriceType type;
  Price({
    required this.priceColor,
    required this.quantity,
    required this.id,
    required this.name,
    required this.type,
  });

  @override
  String toString() => 'Price(quantity: $quantity, id: $id, name: $name)';
}



// class AsePrice extends Price {
//   Color color;
//   String rowName;
//   String seatName;
//   String section;
//   AsePrice({
//     required this.color,
//     required this.rowName,
//     required this.seatName,
//     required this.section,
//   }) : super(priceColor: null, quantity: 0, id: 0, name: '', type: null);

//   AsePrice copyWith({
//     Color? color,
//     String? rowName,
//     String? seatName,
//     String? section,
//   }) {
//     return AsePrice(
//       color: color ?? this.color,
//       rowName: rowName ?? this.rowName,
//       seatName: seatName ?? this.seatName,
//       section: section ?? this.section,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'color': color.value,
//       'rowName': rowName,
//       'seatName': seatName,
//       'section': section,
//     };
//   }

//   factory AsePrice.fromMap(Map<String, dynamic> map) {
//     return AsePrice(
//       color: Color(map['color'] as int),
//       rowName: map['rowName'] as String,
//       seatName: map['seatName'] as String,
//       section: map['section'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory AsePrice.fromJson(String source) => AsePrice.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'AsePrice(color: $color, rowName: $rowName, seatName: $seatName, section: $section)';
//   }

//   @override
//   bool operator ==(covariant AsePrice other) {
//     if (identical(this, other)) return true;
  
//     return 
//       other.color == color &&
//       other.rowName == rowName &&
//       other.seatName == seatName &&
//       other.section == section;
//   }

//   @override
//   int get hashCode {
//     return color.hashCode ^
//       rowName.hashCode ^
//       seatName.hashCode ^
//       section.hashCode;
//   }
// }

// class GeneralPrice extends Price {}
