import 'package:e_polis/src/domain/usecases/auth/logout.dart';
import 'package:e_polis/src/domain/usecases/setting/get_app_lang.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/usecase/usecase.dart';
import '../../../domain/usecases/auth/check_user_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
      this._checkUserToAuthUseCase, this._logoutUseCase, this._appLangUseCase)
      : super(InitialState());

  final CheckUserAuthUseCase _checkUserToAuthUseCase;
  final LogoutUseCase _logoutUseCase;
  final GetAppLangUseCase _appLangUseCase;

  void checkUserToAuth() async {
    var result = await _checkUserToAuthUseCase.call(NoParams());
    result.fold((failure) => emit(UnAuthenticatedState('')), (response) async {
      var lang = await getAppLang();
      emit(response ? AuthenticatedState() : UnAuthenticatedState(lang));
    });
  }

  Future<String> getAppLang() async {
    var result = await _appLangUseCase.call(NoParams());
    return result.fold((err) => '', (lang) => lang);
  }

  Future<void> logout() async {
    var result = await _logoutUseCase.call(NoParams());
    result.fold((failure) => emit(UnAuthenticatedState('uz')),
        (response) => emit(UnAuthenticatedState('uz')));
  }
}
