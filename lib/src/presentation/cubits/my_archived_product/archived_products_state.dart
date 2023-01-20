part of 'archived_products_cubit.dart';

@freezed
class ArchivedProductsState with _$ArchivedProductsState {
  const factory ArchivedProductsState.loading() = _Loading;

  const factory ArchivedProductsState.loaded(
      {@Default([]) List<ProductModel> productList}) = _Loaded;

  const factory ArchivedProductsState.error(Failure failure) = _Error;
}
