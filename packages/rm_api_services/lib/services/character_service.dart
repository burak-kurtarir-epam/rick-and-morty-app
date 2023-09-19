import 'package:chopper/chopper.dart';
import 'package:rm_api_services/converter/client_mapping.dart';
import 'package:rm_api_services/converter/custom_json_decoder.dart';
import 'package:rm_api_services/models/character_list_output.dart';

part "character_service.chopper.dart";

@ChopperApi()
abstract class CharacterService extends ChopperService {
  static CharacterService create({
    ChopperClient? client,
    Uri? baseUrl,
  }) {
    if (client != null) {
      return _$CharacterService(client);
    }

    final newClient = ChopperClient(
      converter: JsonSerializableConverter(),
      baseUrl: baseUrl,
    );

    return _$CharacterService(newClient);
  }

  @Get(path: '/')
  Future<Response<CharacterListOutput>> _getAll();

  Future<Response<CharacterListOutput>> getAll() async {
    generatedMapping.putIfAbsent(CharacterListOutput, () => CharacterListOutput.fromJson);

    return _getAll();
  }
}
