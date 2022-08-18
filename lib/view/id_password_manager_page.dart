// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/view/component/input_text/input_text_id.dart';
import 'package:password_app_2/view/component/input_text/input_text_memo.dart';
import 'package:password_app_2/view/component/input_text/input_text_name.dart';
import 'package:password_app_2/view/component/input_text/input_text_password.dart';

// Project imports:
import '../constants/style.dart';
import '../enum/id_password_manager_item_enum.dart';
import '../model/id_password_save_model.dart';
import 'component/atom/data_delete_button.dart';
import 'component/atom/data_register_button.dart';
import 'component/atom/logo_image.dart';
import 'component/molecules/genre_select_tile.dart';
import 'selection_page.dart';

final itemProvider = StateProvider((ref) => IdPasswordSaveModel(time: DateTime.now()));

class IdPasswordManagerPage extends ConsumerWidget {
  const IdPasswordManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoImage(),
        centerTitle: true,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kSpacing),
          child: Column(
            children: const [
              InputTextName(),
              InputTextId(),
              InputTextPassword(),
              GenreSelectTile(IdPasswordManagerItems.genre),
              InputTextMemo(),
              RegistChangeDeleteButton(),
              SizedBox(height: kSpacing),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistChangeDeleteButton extends ConsumerWidget {
  const RegistChangeDeleteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const DataRegisterButton(),
        if (ref.watch(isEditIdPasswordProvider.state).state) const DataDeleteButton(),
      ],
    );
  }
}
