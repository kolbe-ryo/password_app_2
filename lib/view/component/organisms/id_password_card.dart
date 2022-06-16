// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import '../../../constants/style.dart';
import '../../../enum/genre_data_enum.dart';
import '../../../enum/id_password_enum.dart';
import '../../../model/id_password_save_model.dart';
import '../../id_password_manager_page.dart';
import '../../selection_page.dart';
import '../atom/copy_button.dart';
import '../atom/title_text.dart';

class IdPasswordCard extends ConsumerWidget {
  const IdPasswordCard(this.idPasswordSaveModel, {Key? key}) : super(key: key);

  final IdPasswordSaveModel idPasswordSaveModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GenreDataEnum genre = idPasswordSaveModel.genre;
    return GestureDetector(
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSpacing),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TitleText(idPasswordSaveModel.name),
                  ),
                  Icon(
                    genre.icon,
                    color: genre.color,
                    size: 40,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CopyButton(
                  title: IdPassword.id.value,
                  idPass: idPasswordSaveModel.id,
                  color: genre.color,
                ),
                CopyButton(
                  title: IdPassword.password.value,
                  idPass: idPasswordSaveModel.password,
                  color: genre.color,
                ),
              ],
            ),
          ],
        ),
        elevation: 0.1,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: kGreyColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(kSpacing / 2)),
        ),
      ),
      onTap: () => {
        // id_password_manager_pageに遷移
        ref.read(isEditIdPasswordProvider.state).update((state) => true),
        ref.read(itemProvider.state).update((state) => idPasswordSaveModel),
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const IdPasswordManagerPage()),
          ),
        ),
      },
    );
  }
}
