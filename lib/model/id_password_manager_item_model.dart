import 'package:password_app_2/enum/id_password_manager_item_enum.dart';

class IdPasswordManagerItem {
  final String caption;
  final String hintText;
  final IdPasswordManagerItems attribute;

  IdPasswordManagerItem({
    required this.caption,
    required this.hintText,
    required this.attribute,
  });
}
