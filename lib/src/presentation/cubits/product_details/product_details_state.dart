part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.loading() = _Loading;
  const factory ProductDetailsState.loaded(ProductDetailsResponse response) =
      _Loaded;
  const factory ProductDetailsState.error(Failure failure) = _Error;
}
