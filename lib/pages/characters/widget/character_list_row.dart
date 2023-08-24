import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/core/extensions/context_extension.dart';
import 'package:rick_and_morty_app/pages/characters/model/character_model.dart';
import 'package:rick_and_morty_app/pages/characters/widget/character_location_column.dart';

class CharacterListRow extends StatelessWidget {
  final CharacterModel characterModel;
  const CharacterListRow({
    Key? key,
    required this.characterModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              characterModel.image ?? "",
              width: 120,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(characterModel.name ?? ""),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: context.primary,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                            "${characterModel.species} - ${characterModel.status}"),
                      ),
                    ],
                  ),
                  CharacterLocationColumn(
                    characterLocationModel: characterModel.location,
                    title: "Last known location",
                  ),
                  CharacterLocationColumn(
                    characterLocationModel: characterModel.origin,
                    title: "Origin",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
