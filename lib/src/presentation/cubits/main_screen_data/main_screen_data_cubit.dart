import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/main/main.dart';
import 'package:e_polis/src/domain/usecases/main/main_screen_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
part 'main_screen_data_state.dart';
part 'main_screen_data_cubit.freezed.dart';

class MainScreenDataCubit extends Cubit<MainScreenDataState> {
  MainScreenDataCubit(this._mainScreenDataUseCase)
      : super(const MainScreenDataState.initial());
  final GetMainScreenDataUseCase _mainScreenDataUseCase;

  void loadData() async {
    emit(const MainScreenDataState.loading());
    var result = await _mainScreenDataUseCase.call(NoParams());
    result.fold((failure) => emit(MainScreenDataState.error(failure)),
        (response) => emit(MainScreenDataState.loaded(response)));
  }
}
