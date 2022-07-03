// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
  String name(BuildContext context) {
    switch (this) {
      case GenreDataEnum.money:
        return AppLocalizations.of(context)!.genre_money;
      case GenreDataEnum.shopping:
        return AppLocalizations.of(context)!.genre_shopping;
      case GenreDataEnum.transportation:
        return AppLocalizations.of(context)!.genre_transport;
      case GenreDataEnum.sns:
        return AppLocalizations.of(context)!.genre_social;
      case GenreDataEnum.entertainment:
        return AppLocalizations.of(context)!.genre_entertainment;
      case GenreDataEnum.heart:
        return AppLocalizations.of(context)!.genre_beauty;
      case GenreDataEnum.others:
        return AppLocalizations.of(context)!.genre_others;
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
        return Colors.teal;
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
        return Colors.blueGrey;
    }
  }
}
