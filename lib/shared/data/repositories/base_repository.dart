import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:rick_and_morty_app/shared/data/repositories/base_mapper.dart';
import 'package:rick_and_morty_app/shared/domain/entities/problem_output_entity.dart';
import 'package:rick_and_morty_app/shared/exceptions/base_exceptions.dart';
import 'package:rm_api_services/models/problem_output.dart';

abstract class BaseRepository {
  Future<T> executeApiCall<T, TSource>({
    required Future<Response<TSource>> Function() invoker,
    T Function(TSource)? mapper,
  }) async {
    try {
      final response = await invoker();

      final statusCode = response.statusCode;
      final problem = response.error != null
          ? ProblemOutput.fromJson(response.error as Map<String, dynamic>).toEntity()
          : const ProblemOutputEntity();

      if (statusCode == HttpStatus.badRequest) {
        throw ValidationException(problem);
      } else if (statusCode == HttpStatus.internalServerError ||
          statusCode == HttpStatus.badGateway) {
        throw InternalServerException(problem);
      }

      final body = response.body;

      if (response.isSuccessful && mapper != null && body != null) {
        return mapper(body);
      } else {
        throw BaseRepositoryException(
          response: response,
          message: 'Status code is $statusCode'
              ' \nBody info: ${response.body?.toString()}',
        );
      }
    } on RepositoryException {
      rethrow;
    } catch (e) {
      throw RepositoryException(message: e.toString());
    }
  }
}
