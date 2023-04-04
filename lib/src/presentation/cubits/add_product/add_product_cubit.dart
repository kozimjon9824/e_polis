import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/models/add_product/add_product.dart';
import 'package:e_polis/src/domain/usecases/product/add_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_state.dart';

part 'add_product_cubit.freezed.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this._addProductUseCase)
      : super(const AddProductState.initial());
  final AddProductUseCase _addProductUseCase;

  void addProduct({
    required String insuranceNumber,
    required String carNumber,
  }) async {
    emit(const AddProductState.loading());
    var result = await _addProductUseCase.call(AddProductParams(
      AddProductRequest(
        vehicleNumber: carNumber,
        policy: PolicyFields(
            series: insuranceNumber.replaceAll(' ', '').substring(0, 4),
            number: insuranceNumber.replaceAll(' ', '').substring(4)),
      ),
    ));
    result.fold(
      (failure) => emit(AddProductState.error(failure)),
      (response) => emit(const AddProductState.loaded()),
    );
  }
}
