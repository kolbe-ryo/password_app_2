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
  study,
  @JsonValue(6)
  sports,
  @JsonValue(8)
  music,
  @JsonValue(9)
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
      case GenreDataEnum.study:
        return '勉強';
      case GenreDataEnum.sports:
        return 'スポーツ';
      case GenreDataEnum.music:
        return '音楽';
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
      case GenreDataEnum.study:
        return Icons.mode_edit;
      case GenreDataEnum.sports:
        return Icons.directions_run;
      case GenreDataEnum.music:
        return Icons.music_note;
      case GenreDataEnum.others:
        return Icons.apps;
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
      case GenreDataEnum.entertainment:
        return Colors.orangeAccent;
      case GenreDataEnum.study:
        return Colors.teal;
      case GenreDataEnum.sports:
        return Colors.blueAccent;
      case GenreDataEnum.music:
        return Colors.green;
      case GenreDataEnum.others:
        return Colors.redAccent;
    }
  }
}
