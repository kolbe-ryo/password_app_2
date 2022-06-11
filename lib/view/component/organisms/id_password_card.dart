import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:password_app_2/constants/style.dart';
import 'package:password_app_2/enum/genre_data_enum.dart';
import 'package:password_app_2/enum/id_password_enum.dart';
import 'package:password_app_2/model/id_password_save_model.dart';
import 'package:password_app_2/view/component/atom/title_text.dart';
import 'package:password_app_2/view/component/atom/copy_button.dart';
import 'package:password_app_2/view/id_password_manager_page.dart';
import 'package:password_app_2/view/selection_page.dart';

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
