import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_state.freezed.dart';

const _kDefaultErrorMessage = 'Couldnt perform the request, please try again';

@freezed
sealed class ResponseState with _$ResponseState {
  const ResponseState._();

  const factory ResponseState.initial() = InitialState;

  const factory ResponseState.loading() = LoadingState;

  const factory ResponseState.success() = SuccessState;

  const factory ResponseState.error({
    @Default(_kDefaultErrorMessage) String message,
  }) = ErrorState;

  String get errorText {
    if (isError()) {
      return (this as ErrorState).message;
    }

    return '';
  }
}

extension ResponseStateExt on ResponseState {
  bool isInitial() {
    return this is InitialState;
  }

  bool isLoading() {
    return this is LoadingState;
  }

  bool isSuccess() {
    return this is SuccessState;
  }

  bool isError() {
    return this is ErrorState;
  }
}
