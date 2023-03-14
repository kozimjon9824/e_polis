import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/models/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/usecases/auth/login.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase) : super(const LoginState.initial());
  final LoginUseCase _loginUseCase;

  void login(String phone) async {
    emit(const LoginState.loading());
    var result =
        await _loginUseCase.call(LoginParams(LoginRequest(phone: '998$phone')));
    result.fold(
      (failure) => emit(LoginState.error(failure)),
      (r) => emit(LoginState.success(phone)),
    );
  }
}
