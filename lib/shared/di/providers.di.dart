import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/shared/constants/api_urls.dart';
import 'package:rm_api_services/rm_api_services.dart';

// Api Services

final apiUrlsProvider = Provider((ref) {
  return const ApiUrls();
});

final chopperClientProvider = Provider.family<ChopperClient, Uri>((ref, baseUrl) {
  return ChopperClient(
    baseUrl: baseUrl,
    converter: JsonSerializableConverter(),
  );
});

final characterServiceProvider = Provider<CharacterService>((ref) {
  final characterUrl = ref.read(apiUrlsProvider).character.url;

  return CharacterService.create(
    client: ref.read(chopperClientProvider(characterUrl)),
  );
});
