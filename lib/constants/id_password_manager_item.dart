import 'package:password_app_2/enum/id_password_manager_item_enum.dart';

final kIdPasswordManagerItem = [
  IdPasswordManagerItem(
    caption: '名称',
    hintText: '登録名',
    attribute: IdPasswordManagerItems.name,
  ),
  IdPasswordManagerItem(
    caption: 'ID',
    hintText: 'ID',
    attribute: IdPasswordManagerItems.id,
  ),
  IdPasswordManagerItem(
    caption: 'PASSWORD',
    hintText: 'PASSWORD',
    attribute: IdPasswordManagerItems.password,
  ),
  IdPasswordManagerItem(
    caption: 'ジャンル',
    hintText: '',
    attribute: IdPasswordManagerItems.genre,
    isGenre: true,
  ),
  IdPasswordManagerItem(
    caption: 'メモ',
    hintText: 'メモを入力',
    attribute: IdPasswordManagerItems.memo,
  ),
];

class IdPasswordManagerItem {
  final String caption;
  final String hintText;
  final IdPasswordManagerItems attribute;
  final bool isGenre;

  IdPasswordManagerItem({
    required this.caption,
    required this.hintText,
    required this.attribute,
    this.isGenre = false,
  });
}
