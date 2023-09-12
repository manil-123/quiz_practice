import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_state.freezed.dart';

@freezed
class GenericState<T> with _$GenericState<T> {
  const factory GenericState.success(T data) = GenericSuccess<T>;

  const factory GenericState.initial() = _GenericInitial;

  const factory GenericState.error(String message) = _GenericError;

  const factory GenericState.loading() = GenericLoading;
}
