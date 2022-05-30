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
  @JsonValue(4)
  entertainment,
  @JsonValue(5)
  others,
}

extension GenreDataEnumExt on GenreDataEnum {
  IconData get icon {
    switch (this) {
      case GenreDataEnum.money:
        return Icons.attach_money;
      case GenreDataEnum.shopping:
        return Icons.shopping_cart;
      case GenreDataEnum.transportation:
        return Icons.commute;
      case GenreDataEnum.sns:
        return Icons.account_box;
      case GenreDataEnum.entertainment:
        return Icons.sports_esports;
      case GenreDataEnum.others:
        return Icons.apps;
    }
  }

  Color get color {
    switch (this) {
      case GenreDataEnum.money:
        return Colors.teal;
      case GenreDataEnum.shopping:
        return Colors.lightGreen;
      case GenreDataEnum.transportation:
        return Colors.cyan;
      case GenreDataEnum.sns:
        return Colors.purpleAccent;
      case GenreDataEnum.entertainment:
        return Colors.orangeAccent;
      case GenreDataEnum.others:
        return Colors.yellow;
    }
  }
}
