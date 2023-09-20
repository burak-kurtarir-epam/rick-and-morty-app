import 'package:rick_and_morty_app/shared/domain/entities/problem_output_entity.dart';
import 'package:rick_and_morty_app/shared/exceptions/base_exceptions.dart';

class SafeExecutorManager {
  Future<void> makeAsyncSafeExecution<T>({
    required Future<T> Function() function,
    void Function(T)? onSuccess,
    void Function(ProblemOutputEntity)? onValidationError,
    void Function(ProblemOutputEntity)? onInternalServerError,
    void Function(Exception ex)? onError,
  }) async {
    try {
      final result = await function();
      if (onSuccess != null) {
        onSuccess(result);
      }
    } on ValidationException catch (e) {
      if (onValidationError != null) {
        onValidationError(e.problem);
      }
    } on InternalServerException catch (e) {
      if (onInternalServerError != null) {
        onInternalServerError(e.problem);
      }
    } catch (e) {
      final exception = e is Exception ? e : Exception(e);
      if (onError != null) {
        onError(exception);
      }
    }
  }
}
