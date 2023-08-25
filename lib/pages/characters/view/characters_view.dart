import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/core/extensions/context_extension.dart';
import 'package:rick_and_morty_app/core/networking/response_state.dart';
import 'package:rick_and_morty_app/pages/characters/view_model/characters_state.dart';
import 'package:rick_and_morty_app/pages/characters/view_model/characters_view_model.dart';
import 'package:rick_and_morty_app/pages/characters/widget/character_list_row.dart';

final charactersViewModel =
    StateNotifierProvider<CharactersViewModel, CharactersState>(
        (ref) => CharactersViewModel());

class CharactersView extends StatelessWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final state = ref.watch(charactersViewModel);

          if (state.responseState is SuccessState) {
            return ListView.builder(
              padding: EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: context.paddingOf.bottom,
              ),
              itemCount: state.characters.length,
              itemBuilder: (BuildContext context, int index) {
                final data = state.characters[index];

                return CharacterListRow(characterModel: data);
              },
            );
          }
          if (state.responseState is LoadingState) {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
          if (state.responseState is ErrorState) {
            return const Center(child: Text("Error happened"));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
