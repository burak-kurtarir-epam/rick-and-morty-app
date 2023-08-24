import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/core/extensions/context_extension.dart';
import 'package:rick_and_morty_app/pages/characters/model/character_model.dart';
import 'package:rick_and_morty_app/pages/characters/widget/character_list_row.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(
            left: 12, right: 12, bottom: context.paddingOf.bottom),
        itemCount: CharacterModel.sampleList.length,
        itemBuilder: (BuildContext context, int index) {
          final data = CharacterModel.sampleList[index];

          return CharacterListRow(characterModel: data);
        },
      ),
    );
  }
}
