import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/features/character/character_providers.di.dart';
import 'package:rick_and_morty_app/features/character/domain/entities/character_entity.dart';
import 'package:rick_and_morty_app/shared/presentation/managers/base_response_state.dart';

class CharacterListPage extends ConsumerWidget {
  const CharacterListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(characterListPageManagerProvider);
    final manager = ref.read(characterListPageManagerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        actions: [
          IconButton(onPressed: manager.getAllCharacters, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: _DetailsBody(
        characters: state.characterListEntity.results,
        responseState: state.responseState,
      ),
    );
  }
}

class _DetailsBody extends StatelessWidget {
  final List<CharacterEntity> characters;
  final ResponseState responseState;

  const _DetailsBody({
    Key? key,
    required this.characters,
    required this.responseState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (responseState.isLoading()) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (responseState.isError()) {
      return Center(child: Text(responseState.errorText));
    }
    if (responseState.isSuccess()) {
      return ListView.builder(
        itemCount: characters.length,
        itemBuilder: (BuildContext context, int index) {
          final data = characters[index];

          return ListTile(
            title: Text(data.name),
            subtitle: Text(data.species),
            leading: Image.network(data.image),
          );
        },
      );
    }
    return const SizedBox.shrink();
  }
}
