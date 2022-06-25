// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
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
  heart,
  @JsonValue(6)
  others,
}

extension GenreDataEnumExt on GenreDataEnum {
  String get name {
    switch (this) {
      case GenreDataEnum.money:
        return 'お金';
      case GenreDataEnum.shopping:
        return '買物';
      case GenreDataEnum.transportation:
        return '交通';
      case GenreDataEnum.sns:
        return 'SNS';
      case GenreDataEnum.entertainment:
        return '遊び';
      case GenreDataEnum.heart:
        return '美容';
      case GenreDataEnum.others:
        return 'その他';
    }
  }

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
      case GenreDataEnum.heart:
        return Icons.favorite;
      case GenreDataEnum.others:
        return Icons.apps;
    }
  }

  Color get color {
    switch (this) {
      case GenreDataEnum.money:
        return Colors.yellow;
      case GenreDataEnum.shopping:
        return Colors.lightGreen;
      case GenreDataEnum.transportation:
        return Colors.cyan;
      case GenreDataEnum.sns:
        return Colors.purpleAccent;
      case GenreDataEnum.entertainment:
        return Colors.orangeAccent;
      case GenreDataEnum.heart:
        return Colors.pinkAccent;
      case GenreDataEnum.others:
        return Colors.brown;
    }
  }
}
