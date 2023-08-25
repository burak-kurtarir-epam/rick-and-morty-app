/// Defines different response states for network operations<br>
/// Enables efficient management of user interface updates based on the current network operation status.
sealed class ResponseState {
  const ResponseState();
}

final class SuccessState extends ResponseState {
  const SuccessState();
}

final class LoadingState extends ResponseState {
  const LoadingState();
}

final class ErrorState extends ResponseState {
  const ErrorState({String? message}) : _message = message;

  final String? _message;
  String get message => _message ?? "Unknown error";
}

final class InitialState extends ResponseState {
  const InitialState();
}
