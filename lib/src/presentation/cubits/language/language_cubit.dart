import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/usecase/usecase.dart';
import '../../../domain/usecases/setting/get_app_lang.dart';
import '../../../domain/usecases/setting/set_app_lang.dart';

part 'language_state.dart';

part 'language_cubit.freezed.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit(this._getAppLangUseCase, this._setAppLangUseCase)
      : super(const LanguageState());
  final GetAppLangUseCase _getAppLangUseCase;
  final SetAppLangUseCase _setAppLangUseCase;

  void loadAppLang() async {
    var result = await _getAppLangUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (language) => emit(
            state.copyWith(status: StateStatus.unknown, language: language)));
  }

  void saveAppLang(String lang) async {
    var result = await _setAppLangUseCase.call(AppLangParam(lang));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (language) => emit(
            state.copyWith(status: StateStatus.unknown, language: language)));
  }
}
