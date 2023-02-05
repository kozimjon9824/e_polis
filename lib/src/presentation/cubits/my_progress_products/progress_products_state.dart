part of 'progress_products_cubit.dart';

@freezed
class ProgressProductsState with _$ProgressProductsState {
  const factory ProgressProductsState.initial() = _Initial;
  const factory ProgressProductsState.loading() = _Loading;

  const factory ProgressProductsState.loaded(
      {@Default([]) List<ProductModel> productList}) = _Loaded;

  const factory ProgressProductsState.error(Failure failure) = _Error;
}
