part of 'user_product_details_cubit.dart';

@freezed
class UserProductDetailsState with _$UserProductDetailsState {
  const factory UserProductDetailsState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    UserProduct? userProduct,
    String? filePath,
    @Default(false) bool fileDownloading,
  }) = _UserProductDetailsState;
}
