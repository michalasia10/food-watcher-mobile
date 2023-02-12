part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.failed(Failure failure) = _Failed;

  const factory LoginState.success(String token) = _Success;

}
