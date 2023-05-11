import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/my_products/product_data.dart';
import 'package:e_polis/src/domain/usecases/product/current_product.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_products_state.dart';

part 'current_products_cubit.freezed.dart';

class CurrentProductsCubit extends Cubit<CurrentProductsState> {
  CurrentProductsCubit(this._useCase)
      : super(const CurrentProductsState.initial());
  final MyCurrentProductsUseCase _useCase;

  Future<void> loadData([bool isRefresh = false]) async {
    if (!isRefresh) {
      emit(const CurrentProductsState.loading());
    }
    var result = await _useCase.call(NoParams());
    result.fold(
      (failure) => emit(CurrentProductsState.error(failure)),
      (data) => emit(CurrentProductsState.loaded(productList: data.data ?? [])),
    );
  }
}
