import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/data/models/vehicle_information/request/vehicle_info_request.dart';
import 'package:e_polis/src/domain/usecases/main/book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/contract_information/response/contract_info_response.dart';

part 'book_state.dart';

part 'book_cubit.freezed.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this._bookInsuranceUseCase) : super(const BookState());
  final BookInsuranceUseCase _bookInsuranceUseCase;

  void bookInsurance({required String id}) async {
    emit(state.copyWith(status: StateStatus.loading));
    var result =
        await _bookInsuranceUseCase.call(BookParams(id, state.requestModel));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (response) => emit(state.copyWith(status: StateStatus.success)));
  }

  void onApplicantData(ApplicantModel model) {
    BookModel bookModel = state.requestModel;
    var newModel = bookModel.copyWith(applicant: model);
    emit(state.copyWith(status: StateStatus.unknown, requestModel: newModel));
  }

  void onPaymentType(String paymentProvider) {
    BookModel bookModel = state.requestModel;
    var newModel = bookModel.copyWith(paymentProvider: paymentProvider);
    emit(state.copyWith(status: StateStatus.unknown, requestModel: newModel));
  }

  void onVehicleNumberData({
    String? vehicleNumber,
    String? series,
    String? number,
  }) {
    BookModel bookModel = state.requestModel;
    var newModel = bookModel.copyWith(
      vehicle: VehicleNumber(
          plateNumber: vehicleNumber,
          technicalPassport: DriverPassport(series: series, number: number)),
    );
    emit(state.copyWith(status: StateStatus.unknown, requestModel: newModel));
  }

  void onDriverListData(List<DriverModel>? drivers) {
    BookModel bookModel = state.requestModel;
    var newModel = bookModel.copyWith(drivers: drivers);
    emit(state.copyWith(status: StateStatus.unknown, requestModel: newModel));
  }

  void onCalculationData(CalculationModel calculation) {
    BookModel bookModel = state.requestModel;
    var newModel = bookModel.copyWith(calculation: calculation);
    emit(state.copyWith(status: StateStatus.unknown, requestModel: newModel));
  }

  void onStartDate(String date) {
    BookModel bookModel = state.requestModel;
    var newDate = bookModel.copyWith(startDate: date);
    emit(state.copyWith(status: StateStatus.unknown, requestModel: newDate));
  }

  void contractInfoData(ContractInfoResponse? contract) {
    emit(state.copyWith(status: StateStatus.unknown, contract: contract));
  }

  void onPaymentHolder(String name) {
    emit(state.copyWith(status: StateStatus.unknown, paymentHolder: name));
  }
}
