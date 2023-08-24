import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/core/extensions/context_extension.dart';
import 'package:rick_and_morty_app/pages/characters/model/character_location_model.dart';

class CharacterLocationColumn extends StatelessWidget {
  final CharacterLocationModel? characterLocationModel;
  final String title;

  const CharacterLocationColumn({
    Key? key,
    required this.characterLocationModel,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.secondary,
          ),
        ),
        Text(
          characterLocationModel?.name ?? "",
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
