// To parse this JSON data, do
//
//     final numbers = numbersFromJson(jsonString);

import 'dart:convert';

Numbers numbersFromJson(String str) => Numbers.fromJson(json.decode(str));

String numbersToJson(Numbers data) => json.encode(data.toJson());

class Numbers {
  Numbers({
    required this.text,
    required this.number,
  });

  String text;
  int number;

  factory Numbers.fromJson(Map<String, dynamic> json) => Numbers(
        text: json["text"],
        number: (json["number"] as num).toInt(),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "number": number,
      };
}
