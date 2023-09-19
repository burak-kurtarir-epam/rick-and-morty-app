import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:rm_api_services/converter/client_mapping.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class CustomJsonDecoder {
  CustomJsonDecoder(this.factories);

  final Map<Type, JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> value) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is $T included in Map<Type, JsonFactory> ?";
    }

    return jsonFactory(value);
  }

  List<T> _decodeList<T>(Iterable values) {
    return values.where((e) => e != null).map<T>((e) => _decodeMap<T>(e)).toList();
  }
}

final jsonDecoder = CustomJsonDecoder(generatedMapping);

class JsonSerializableConverter extends JsonConverter {
  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    if (response.bodyString.isEmpty) {
      return Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<BodyType>(
        body: jsonDecoder.decode<InnerType>(jsonRes.body) as BodyType);
  }
}
