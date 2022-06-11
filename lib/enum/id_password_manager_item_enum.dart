import 'package:password_app_2/model/id_password_manager_item_model.dart';

enum IdPasswordManagerItems {
  name,
  id,
  password,
  genre,
  memo,
}

extension IdPasswordManagerItemsExt on IdPasswordManagerItems {
  IdPasswordManagerItem get itemModel {
    switch (this) {
      case IdPasswordManagerItems.name:
        return IdPasswordManagerItem(
          caption: '名称',
          hintText: '例：〇〇銀行',
        );
      case IdPasswordManagerItems.id:
        return IdPasswordManagerItem(
          caption: 'ID',
          hintText: '例：abcde',
        );
      case IdPasswordManagerItems.password:
        return IdPasswordManagerItem(
          caption: 'PASSWORD',
          hintText: '例：12345',
        );
      case IdPasswordManagerItems.genre:
        return IdPasswordManagerItem(
          caption: 'ジャンル',
          hintText: '',
        );
      case IdPasswordManagerItems.memo:
        return IdPasswordManagerItem(
          caption: 'メモ',
          hintText: '例：メモを入力',
        );
    }
  }
}
