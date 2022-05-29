import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum IconDataEnum {
  @JsonValue(0)
  money,
  @JsonValue(1)
  shopping,
  @JsonValue(2)
  transportation,
  @JsonValue(3)
  sns,
}

extension IconDataEnumExt on IconDataEnum {
  IconData get value {
    switch (this) {
      case IconDataEnum.money:
        return Icons.money;
      case IconDataEnum.shopping:
        return Icons.shopping_basket;
      case IconDataEnum.transportation:
        return Icons.car_rental;
      case IconDataEnum.sns:
        return Icons.account_box_rounded;
    }
  }

  Color get color {
    switch (this) {
      case IconDataEnum.money:
        return Colors.pink;
      case IconDataEnum.shopping:
        return Colors.lightGreen;
      case IconDataEnum.transportation:
        return Colors.cyan;
      case IconDataEnum.sns:
        return Colors.purpleAccent;
    }
  }
}
