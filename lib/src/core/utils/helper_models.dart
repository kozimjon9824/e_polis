import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/book/book_model.dart';
import '../../data/models/countries/countries.dart';
import '../../data/models/multi_days/multi_days.dart';
import '../../data/models/policy_type/policy_type.dart';
import '../../data/models/programms/programms.dart';
import '../../data/models/travel_calculator/calculator_response/calculator_response.dart';
import '../../data/models/travelers_type/travelers_type.dart';
import '../../data/models/trip_purpose/trip_purpose.dart';

//payment
enum PaymentType { payMe, click, uzum, byCard }

class PaymentModel {
  final PaymentType? paymentType;
  final String icon;
  final String? cashBack;
  final String name;

  PaymentModel({
    this.paymentType,
    this.icon = '',
    this.cashBack,
    required this.name,
  });
}

final shengenCountries = [
  226,
  273,
  229,
  234,
  76,
  237,
  282,
  277,
  54,
  78,
  160,
  19,
  38,
  65,
  66,
  80,
  18,
  63,
  70,
  71,
  27,
  169,
  119,
  199,
  175,
  280,
  143
];

final shengenPrograms = [
  5,
  3,
  2,
  6,
];

String getTravelDays(int? id) {
  switch (id) {
    case 1:
      return '30';
    case 2:
      return '90';
    case 3:
      return '90';
    case 4:
      return '180';
    case 5:
      return '30';
    case 6:
      return '366';
    case 7:
      return '366';
    default:
      return '';
  }
}

String getTravelDaysName(int? id) {
  switch (id) {
    case 1:
      return 'Multi I';
    case 2:
      return 'Multi II';
    case 3:
      return 'Multi III';
    case 4:
      return 'Multi IV';
    case 5:
      return 'Multi V';
    case 6:
      return 'Worker';
    case 7:
      return 'Student';
    default:
      return '';
  }
}

final paymentTypeList = [
  PaymentModel(
      paymentType: PaymentType.click, icon: AppIcons.click, name: 'CLICK'),
  PaymentModel(
      paymentType: PaymentType.payMe, icon: AppIcons.payMe, name: 'CLICK'),
  PaymentModel(
      paymentType: PaymentType.uzum, icon: AppIcons.uzum, name: 'CLICK'),
  PaymentModel(
      paymentType: PaymentType.byCard, icon: AppIcons.card, name: 'CLICK'),
];

class IndexedDriverModel {
  DriverModel? driverModel;
  bool? isSuccess;
  bool relativeSelected;
  int relativeKey;

  IndexedDriverModel({
    this.driverModel,
    this.isSuccess,
    this.relativeSelected = false,
    this.relativeKey = 0,
  });
}

class TravelAttModel extends Equatable {
  final List<CountryModel>? countries;
  final ProgramModel? programs;
  final TripModel? tripPurpose;
  final TravelTypeModel? travelersType;
  final MultiDayModel? multiDays;
  final PolicyTypeModel? policyType;
  final String? startDate;
  final String? endDate;
  final List<String> travellers;
  final List<TextEditingController>? textControllers;
  final TravelCalResponse? calResponse;
  final String? productId;
  final int? selectedTraveller;

  TravelAttModel({
    this.countries,
    this.programs,
    this.tripPurpose,
    this.travelersType,
    this.multiDays,
    this.policyType,
    this.startDate,
    this.endDate,
    this.travellers = const [''],
    this.textControllers,
    this.calResponse,
    this.productId,
    this.selectedTraveller,
  });

  TravelAttModel copyWith({
    List<CountryModel>? countries,
    ProgramModel? programs,
    TripModel? tripPurpose,
    TravelTypeModel? travelersType,
    MultiDayModel? multiDays,
    PolicyTypeModel? policyType,
    String? startDate,
    String? endDate,
    List<String>? travellers,
    TravelCalResponse? calResponse,
    String? productId,
    List<TextEditingController>? textControllers,
    int? selectedTraveller,
  }) {
    return TravelAttModel(
      countries: countries ?? this.countries,
      programs: programs ?? this.programs,
      tripPurpose: tripPurpose ?? this.tripPurpose,
      travelersType: travelersType ?? this.travelersType,
      multiDays: multiDays ?? this.multiDays,
      policyType: policyType ?? this.policyType,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      travellers: travellers ?? this.travellers,
      calResponse: calResponse ?? this.calResponse,
      productId: productId ?? this.productId,
      textControllers: textControllers ?? this.textControllers,
      selectedTraveller: selectedTraveller ?? this.selectedTraveller,
    );
  }

  @override
  List<Object?> get props => [
        countries,
        programs,
        tripPurpose,
        travelersType,
        multiDays,
        policyType,
        startDate,
        endDate,
        travellers,
        calResponse,
        productId,
        textControllers,
        selectedTraveller,
      ];
}

class TravellerMainInputs extends Equatable {
  String? birth;
  String? idSeries;
  String? idNumber;
  String? inn;
  String? firstName;
  String? lastName;
  bool isDisable;
  bool isHide;

  TravellerMainInputs({
    this.birth,
    this.idSeries,
    this.idNumber,
    this.inn,
    this.firstName,
    this.lastName,
    this.isDisable = false,
    this.isHide = false,
  });

  TravellerMainInputs copyWith({
    String? birth,
    String? idSeries,
    String? idNumber,
    String? inn,
    String? lastName,
    String? firstName,
    bool? isDisable,
    bool? isHide,
  }) {
    return TravellerMainInputs(
      birth: birth ?? this.birth,
      idSeries: idSeries ?? this.idSeries,
      idNumber: idNumber ?? this.idNumber,
      inn: inn ?? this.inn,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      isDisable: isDisable ?? this.isDisable,
      isHide: isHide ?? this.isHide,
    );
  }

  @override
  List<Object?> get props => [
        birth,
        idSeries,
        idNumber,
        inn,
        firstName,
        lastName,
        isDisable,
        isHide,
      ];
}
