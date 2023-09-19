import 'package:chopper/chopper.dart';
import 'package:rick_and_morty_app/shared/domain/entities/problem_output_entity.dart';

class RepositoryException implements Exception {
  final String message;

  RepositoryException({this.message = ''});

  @override
  String toString() {
    return '$RepositoryException: $message';
  }
}

class BaseRepositoryException extends RepositoryException {
  final Response? response;

  BaseRepositoryException({this.response, super.message});
}

class ValidationException extends RepositoryException {
  final ProblemOutputEntity problem;

  ValidationException(this.problem) : super(message: problem.error);
}

class InternalServerException extends RepositoryException {
  final ProblemOutputEntity problem;

  InternalServerException(this.problem) : super(message: problem.error);
}
