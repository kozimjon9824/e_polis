import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/usecases/setting/faq.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/help_data/help_data.dart';

part 'faq_state.dart';

part 'faq_cubit.freezed.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit(this._faqUseCase) : super(const FaqState.loading());
  final FaqUseCase _faqUseCase;

  void loadData() async {
    emit(const FaqState.loading());
    var result = await _faqUseCase.call(NoParams());
    result.fold((failure) => emit(FaqState.error(failure)),
        (data) => emit(FaqState.loaded(data.data ?? [])));
  }
}
