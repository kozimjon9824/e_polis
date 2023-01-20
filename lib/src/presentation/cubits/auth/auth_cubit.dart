import 'package:e_polis/src/domain/usecases/auth/logout.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/usecase/usecase.dart';
import '../../../domain/usecases/auth/check_user_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._checkUserToAuthUseCase, this._logoutUseCase)
      : super(InitialState());

  final CheckUserAuthUseCase _checkUserToAuthUseCase;
  final LogoutUseCase _logoutUseCase;

  void checkUserToAuth() async {
    emit(UnAuthenticatedState());
    var result = await _checkUserToAuthUseCase.call(NoParams());
    result.fold(
      (failure) => emit(UnAuthenticatedState()),
      (response) =>
          emit(response ? AuthenticatedState() : UnAuthenticatedState()),
    );
  }

  Future<void> logout() async {
    var result = await _logoutUseCase.call(NoParams());
    result.fold((failure) => emit(UnAuthenticatedState()),
        (response) => emit(UnAuthenticatedState()));
  }
}
