import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/travel_booking/travel_booking_request.dart';
import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../repository/travel.dart';

class TravelBookingUseCase extends UseCase<bool, TravelBookingParams> {
  final ITravelRepository _travelRepository;

  TravelBookingUseCase(this._travelRepository);

  @override
  Future<Either<Failure, bool>> call(TravelBookingParams params) =>
      _travelRepository.travelBooking(params.id, params.request);
}

class TravelBookingParams {
  final TravelBookingRequest request;
  final String id;

  TravelBookingParams({
    required this.request,
    required this.id,
  });
}
