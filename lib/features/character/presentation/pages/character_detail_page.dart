import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/features/character/domain/entities/character_entity.dart';

class CharacterDetailPage extends ConsumerWidget {
  final CharacterEntity character;

  const CharacterDetailPage({super.key, required this.character});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final manager = ref.read(characterDetailPageManagerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(character.image),
            Text(character.name),
            Text(character.species),
          ],
        ),
      ),
    );
  }
}
