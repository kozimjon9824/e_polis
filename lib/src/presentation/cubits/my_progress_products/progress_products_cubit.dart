import 'package:e_polis/src/domain/usecases/product/progress_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../../data/models/my_products/product_data.dart';

part 'progress_products_state.dart';

part 'progress_products_cubit.freezed.dart';

class ProgressProductsCubit extends Cubit<ProgressProductsState> {
  ProgressProductsCubit(this._useCase)
      : super(const ProgressProductsState.initial());
  final MyInProgressProductsUseCase _useCase;

  Future<void> loadData([bool isRefresh = false]) async {
    if (!isRefresh) {
      emit(const ProgressProductsState.loading());
    }
    var result = await _useCase.call(NoParams());
    result.fold(
        (failure) => emit(ProgressProductsState.error(failure)),
        (data) =>
            emit(ProgressProductsState.loaded(productList: data.data ?? [])));
  }
}
