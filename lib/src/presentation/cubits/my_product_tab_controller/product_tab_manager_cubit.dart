import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_tab_manager_state.dart';

part 'product_tab_manager_cubit.freezed.dart';

class ProductTabManagerCubit extends Cubit<ProductTabManagerState> {
  ProductTabManagerCubit() : super(const ProductTabManagerState.load(0));

  void changeTab(int index) {
    emit(ProductTabManagerState.load(index));
  }
}
