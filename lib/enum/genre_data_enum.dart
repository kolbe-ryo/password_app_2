import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum GenreDataEnum {
  @JsonValue(0)
  money,
  @JsonValue(1)
  shopping,
  @JsonValue(2)
  transportation,
  @JsonValue(3)
  sns,
}

extension GenreDataEnumExt on GenreDataEnum {
  IconData get value {
    switch (this) {
      case GenreDataEnum.money:
        return Icons.payment;
      case GenreDataEnum.shopping:
        return Icons.shopping_cart;
      case GenreDataEnum.transportation:
        return Icons.commute;
      case GenreDataEnum.sns:
        return Icons.account_box_rounded;
    }
  }

  Color get color {
    switch (this) {
      case GenreDataEnum.money:
        return Colors.pink;
      case GenreDataEnum.shopping:
        return Colors.lightGreen;
      case GenreDataEnum.transportation:
        return Colors.cyan;
      case GenreDataEnum.sns:
        return Colors.purpleAccent;
    }
  }
}
