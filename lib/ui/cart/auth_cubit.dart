import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:navigator_example/data/auth_service.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthService authService;

  AuthCubit(this.authService) : super(AuthState.loading()) {
    if (authService.isLoggedIn()) {
      emit(AuthState.loggedIn());
    } else {
      emit(AuthState.loggedOut());
    }
  }

  void login(String name) {
    authService.login(name);
    emit(AuthState.loggedIn());
  }
}
