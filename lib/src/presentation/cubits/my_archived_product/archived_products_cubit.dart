import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../../data/models/my_products/product_data.dart';
import '../../../domain/usecases/product/archived_product.dart';

part 'archived_products_state.dart';

part 'archived_products_cubit.freezed.dart';

class ArchivedProductsCubit extends Cubit<ArchivedProductsState> {
  ArchivedProductsCubit(this._useCase)
      : super(const ArchivedProductsState.initial());

  final MyArchivedProductsUseCase _useCase;

  Future<void> loadData([bool isRefresh = false]) async {
    if (!isRefresh) {
      emit(const ArchivedProductsState.loading());
    }
    var result = await _useCase.call(NoParams());
    result.fold(
      (failure) => emit(ArchivedProductsState.error(failure)),
      (data) =>
          emit(ArchivedProductsState.loaded(productList: data.data ?? [])),
    );
  }
}
