import 'package:diet_maker/core/error/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_data_state.freezed.dart';

@freezed
class GetDataState<T> with _$GetDataState<T> {
  const factory GetDataState.initial() = _Initial<T>;

  const factory GetDataState.inProgress() = _InProgress<T>;

  const factory GetDataState.success(T data) = Success<T>;

  const factory GetDataState.failure(Failure failure) = _Failure<T>;
}
