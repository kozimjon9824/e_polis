import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';
import 'package:e_polis/src/domain/usecases/main/product_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_state.dart';

part 'product_details_cubit.freezed.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductDetailsUseCase _detailsUseCase;

  ProductDetailsCubit(this._detailsUseCase)
      : super(const ProductDetailsState.initial());

  void loadData(String id) async {
    emit(const ProductDetailsState.loading());
    var result = await _detailsUseCase.call(ProductDetailsParams(id));
    result.fold((failure) => emit(ProductDetailsState.error(failure)),
        (data) => emit(ProductDetailsState.loaded(data)));
  }
}
