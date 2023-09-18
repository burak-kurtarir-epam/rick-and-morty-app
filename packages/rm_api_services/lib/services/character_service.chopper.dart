// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_string_interpolations, unnecessary_brace_in_string_interps
final class _$CharacterService extends CharacterService {
  _$CharacterService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CharacterService;

  @override
  Future<Response<CharacterListOutput>> _getAll() {
    final Uri $url = Uri.parse('/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CharacterListOutput, CharacterListOutput>($request);
  }
}
