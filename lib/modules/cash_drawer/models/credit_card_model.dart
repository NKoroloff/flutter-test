// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreditCardModel {
  String number;
  String expDate;
  String cvv;
  String zip;
  CreditCardModel({
    required this.number,
    required this.expDate,
    required this.cvv,
    required this.zip,
  });

  CreditCardModel copyWith({String? number, String? expDate, String? cvv, String? zip}) {
    return CreditCardModel(
      number: number ?? this.number,
      expDate: expDate ?? this.expDate,
      cvv: cvv ?? this.cvv,
      zip: zip ?? this.zip,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'number': number, 'expDate': expDate, 'cvv': cvv, 'zip': zip};
  }

  factory CreditCardModel.fromMap(Map<String, dynamic> map) {
    return CreditCardModel(
      number: map['number'] as String,
      expDate: map['expDate'] as String,
      cvv: map['cvv'] as String,
      zip: map['zip'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreditCardModel.fromJson(String source) =>
      CreditCardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CreditCardModel(number: $number, expDate: $expDate, cvv: $cvv, zip: $zip)';
  }

  @override
  bool operator ==(covariant CreditCardModel other) {
    if (identical(this, other)) return true;

    return other.number == number &&
        other.expDate == expDate &&
        other.cvv == cvv &&
        other.zip == zip;
  }

  @override
  int get hashCode {
    return number.hashCode ^ expDate.hashCode ^ cvv.hashCode ^ zip.hashCode;
  }
}
