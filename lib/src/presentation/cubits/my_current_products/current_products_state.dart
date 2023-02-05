part of 'current_products_cubit.dart';

@freezed
class CurrentProductsState with _$CurrentProductsState {
  const factory CurrentProductsState.initial() = _Initial;
  const factory CurrentProductsState.loading() = _Loading;

  const factory CurrentProductsState.loaded(
      {@Default([]) List<ProductModel> productList}) = _Loaded;

  const factory CurrentProductsState.error(Failure failure) = _Error;
}
