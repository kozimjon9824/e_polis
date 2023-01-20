import 'package:e_polis/src/domain/usecases/setting/get_app_lang.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../../domain/usecases/setting/set_app_lang.dart';

part 'language_setting_state.dart';

part 'language_setting_cubit.freezed.dart';

class LanguageSettingCubit extends Cubit<LanguageSettingState> {
  LanguageSettingCubit(this._appLangUseCase, this._setAppLangUseCase)
      : super(const LanguageSettingState.load(''));
  final GetAppLangUseCase _appLangUseCase;
  final SetAppLangUseCase _setAppLangUseCase;

  void loadLang() async {
    var result = await _appLangUseCase.call(NoParams());
    result.fold((failure) => emit(LanguageSettingState.error(failure)),
        (language) => emit(LanguageSettingState.load(language)));
  }

  void selectAppLang(String language) {
    emit(LanguageSettingState.load(language));
  }

  void saveAppLang(String language) async {
    var result = await _setAppLangUseCase.call(AppLangParam(language));
    result.fold((failure) => emit(LanguageSettingState.error(failure)),
        (language) => emit(const LanguageSettingState.success()));
  }
}
