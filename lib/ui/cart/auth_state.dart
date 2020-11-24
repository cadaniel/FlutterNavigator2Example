part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState.loggedOut() = _LoggedOut;
  factory AuthState.loggedIn() = _LoggedIn;
  factory AuthState.loading() = _Loading;
}
