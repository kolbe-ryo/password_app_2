// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import '../model/id_password_manager_item_model.dart';

enum IdPasswordManagerItems {
  name,
  id,
  password,
  genre,
  memo,
}

extension IdPasswordManagerItemsExt on IdPasswordManagerItems {
  IdPasswordManagerItem itemModel(BuildContext context) {
    switch (this) {
      case IdPasswordManagerItems.name:
        return IdPasswordManagerItem(
          caption: AppLocalizations.of(context)!.name,
          hintText: AppLocalizations.of(context)!.name_example,
        );
      case IdPasswordManagerItems.id:
        return IdPasswordManagerItem(
          caption: AppLocalizations.of(context)!.id,
          hintText: AppLocalizations.of(context)!.id_example,
        );
      case IdPasswordManagerItems.password:
        return IdPasswordManagerItem(
          caption: AppLocalizations.of(context)!.passcode,
          hintText: AppLocalizations.of(context)!.password_example,
        );
      case IdPasswordManagerItems.genre:
        return IdPasswordManagerItem(
          caption: AppLocalizations.of(context)!.genre,
          hintText: '',
        );
      case IdPasswordManagerItems.memo:
        return IdPasswordManagerItem(
          caption: AppLocalizations.of(context)!.memo,
          hintText: AppLocalizations.of(context)!.memo_example,
        );
    }
  }
}
