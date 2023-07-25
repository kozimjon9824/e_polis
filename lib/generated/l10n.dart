// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `О Нас`
  String get about {
    return Intl.message(
      'О Нас',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Наш миссия`
  String get ourMission {
    return Intl.message(
      'Наш миссия',
      name: 'ourMission',
      desc: '',
      args: [],
    );
  }

  /// `Epolis входит в ТОП-5 страховых компаний Узбекистана, являясь второй крупнейшей страховой компанией страны по объемам активов. Динамичный рост рыночной доли по сборам, капиталу и инвестициям!\nEpolis экспортно-импортная акциядорлик жамияти суғурта компанииси умий суғурта бозорида ўз фаолиятини олиб боради ва суғурта фаолияти классификаторига кўра мавжуд 17 турдаги суғуртанинг барчаси билан шуғулланади`
  String get aboutUs {
    return Intl.message(
      'Epolis входит в ТОП-5 страховых компаний Узбекистана, являясь второй крупнейшей страховой компанией страны по объемам активов. Динамичный рост рыночной доли по сборам, капиталу и инвестициям!\nEpolis экспортно-импортная акциядорлик жамияти суғурта компанииси умий суғурта бозорида ўз фаолиятини олиб боради ва суғурта фаолияти классификаторига кўра мавжуд 17 турдаги суғуртанинг барчаси билан шуғулланади',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Вы можете добавить полис `
  String get youCanAddPolis {
    return Intl.message(
      'Вы можете добавить полис ',
      name: 'youCanAddPolis',
      desc: '',
      args: [],
    );
  }

  /// `Тип полиса`
  String get typePolis {
    return Intl.message(
      'Тип полиса',
      name: 'typePolis',
      desc: '',
      args: [],
    );
  }

  /// `Серия и номер полиса`
  String get seriesNumberPolis {
    return Intl.message(
      'Серия и номер полиса',
      name: 'seriesNumberPolis',
      desc: '',
      args: [],
    );
  }

  /// `Не должно быть пустым`
  String get notDoEmpty {
    return Intl.message(
      'Не должно быть пустым',
      name: 'notDoEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Номер транспорта`
  String get vehicleNumber {
    return Intl.message(
      'Номер транспорта',
      name: 'vehicleNumber',
      desc: '',
      args: [],
    );
  }

  /// `полис успешно добавлена`
  String get successfullyAdded {
    return Intl.message(
      'полис успешно добавлена',
      name: 'successfullyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Добавить полис`
  String get addPolis {
    return Intl.message(
      'Добавить полис',
      name: 'addPolis',
      desc: '',
      args: [],
    );
  }

  /// `Результаты расчета`
  String get calculationResults {
    return Intl.message(
      'Результаты расчета',
      name: 'calculationResults',
      desc: '',
      args: [],
    );
  }

  /// `Мы нашли несколько предложений от страховых компаний`
  String get weFoundSeveralOffers {
    return Intl.message(
      'Мы нашли несколько предложений от страховых компаний',
      name: 'weFoundSeveralOffers',
      desc: '',
      args: [],
    );
  }

  /// `Цена полиса`
  String get polisPrice {
    return Intl.message(
      'Цена полиса',
      name: 'polisPrice',
      desc: '',
      args: [],
    );
  }

  /// `сум`
  String get sum {
    return Intl.message(
      'сум',
      name: 'sum',
      desc: '',
      args: [],
    );
  }

  /// `Страховая сумма`
  String get insurancePrice {
    return Intl.message(
      'Страховая сумма',
      name: 'insurancePrice',
      desc: '',
      args: [],
    );
  }

  /// `Подробно`
  String get inDetail {
    return Intl.message(
      'Подробно',
      name: 'inDetail',
      desc: '',
      args: [],
    );
  }

  /// `КУПИТЬ`
  String get buy {
    return Intl.message(
      'КУПИТЬ',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Мы нашли 0 страховых компаний`
  String get weFoundZero {
    return Intl.message(
      'Мы нашли 0 страховых компаний',
      name: 'weFoundZero',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть`
  String get close {
    return Intl.message(
      'Закрыть',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Оплата`
  String get payment {
    return Intl.message(
      'Оплата',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, введите данные карты для оплаты`
  String get enterCardDetails {
    return Intl.message(
      'Пожалуйста, введите данные карты для оплаты',
      name: 'enterCardDetails',
      desc: '',
      args: [],
    );
  }

  /// `Номер карты`
  String get cardNumber {
    return Intl.message(
      'Номер карты',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Срок действия карты`
  String get cardDate {
    return Intl.message(
      'Срок действия карты',
      name: 'cardDate',
      desc: '',
      args: [],
    );
  }

  /// `ММ/ГГ`
  String get mm_YY {
    return Intl.message(
      'ММ/ГГ',
      name: 'mm_YY',
      desc: '',
      args: [],
    );
  }

  /// `Имя владельца`
  String get holderName {
    return Intl.message(
      'Имя владельца',
      name: 'holderName',
      desc: '',
      args: [],
    );
  }

  /// `Сумма оплаты`
  String get paymentAmount {
    return Intl.message(
      'Сумма оплаты',
      name: 'paymentAmount',
      desc: '',
      args: [],
    );
  }

  /// `ОПЛАТИТЬ`
  String get pay {
    return Intl.message(
      'ОПЛАТИТЬ',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Язык приложения`
  String get appLang {
    return Intl.message(
      'Язык приложения',
      name: 'appLang',
      desc: '',
      args: [],
    );
  }

  /// `Узбекский язык`
  String get uzbekLang {
    return Intl.message(
      'Узбекский язык',
      name: 'uzbekLang',
      desc: '',
      args: [],
    );
  }

  /// `Русский язык`
  String get russianLang {
    return Intl.message(
      'Русский язык',
      name: 'russianLang',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить изменения`
  String get saveChanges {
    return Intl.message(
      'Сохранить изменения',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Центр помощи`
  String get helpCenter {
    return Intl.message(
      'Центр помощи',
      name: 'helpCenter',
      desc: '',
      args: [],
    );
  }

  /// `Повторить попытку`
  String get retry {
    return Intl.message(
      'Повторить попытку',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Как мы можем помочь?`
  String get howCanWeHelp {
    return Intl.message(
      'Как мы можем помочь?',
      name: 'howCanWeHelp',
      desc: '',
      args: [],
    );
  }

  /// `Не нашли ответ, который искали? Свяжитесь с нашим центром поддержки!`
  String get helpMainText {
    return Intl.message(
      'Не нашли ответ, который искали? Свяжитесь с нашим центром поддержки!',
      name: 'helpMainText',
      desc: '',
      args: [],
    );
  }

  /// `Популярные вопросы`
  String get popularQuestions {
    return Intl.message(
      'Популярные вопросы',
      name: 'popularQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Регион регистрации автомобиля`
  String get vehicleRegistrationRegion {
    return Intl.message(
      'Регион регистрации автомобиля',
      name: 'vehicleRegistrationRegion',
      desc: '',
      args: [],
    );
  }

  /// `Выберите регион`
  String get selectRegion {
    return Intl.message(
      'Выберите регион',
      name: 'selectRegion',
      desc: '',
      args: [],
    );
  }

  /// `Тип автомобиля`
  String get typeVehicle {
    return Intl.message(
      'Тип автомобиля',
      name: 'typeVehicle',
      desc: '',
      args: [],
    );
  }

  /// `Выберите тип автомобиля`
  String get selectTypeVehicle {
    return Intl.message(
      'Выберите тип автомобиля',
      name: 'selectTypeVehicle',
      desc: '',
      args: [],
    );
  }

  /// `Расчет цены`
  String get priceCalculation {
    return Intl.message(
      'Расчет цены',
      name: 'priceCalculation',
      desc: '',
      args: [],
    );
  }

  /// `Выберите основные поля!`
  String get selectBasicFields {
    return Intl.message(
      'Выберите основные поля!',
      name: 'selectBasicFields',
      desc: '',
      args: [],
    );
  }

  /// `Скрывать`
  String get hide {
    return Intl.message(
      'Скрывать',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Количество водителей`
  String get numberOfDrivers {
    return Intl.message(
      'Количество водителей',
      name: 'numberOfDrivers',
      desc: '',
      args: [],
    );
  }

  /// `До 5 человек`
  String get upTo5Human {
    return Intl.message(
      'До 5 человек',
      name: 'upTo5Human',
      desc: '',
      args: [],
    );
  }

  /// `Не ограничен`
  String get limitless {
    return Intl.message(
      'Не ограничен',
      name: 'limitless',
      desc: '',
      args: [],
    );
  }

  /// `Срок действия страхового полиса`
  String get termsOfInsurance {
    return Intl.message(
      'Срок действия страхового полиса',
      name: 'termsOfInsurance',
      desc: '',
      args: [],
    );
  }

  /// `6 месяцев`
  String get sixMonth {
    return Intl.message(
      '6 месяцев',
      name: 'sixMonth',
      desc: '',
      args: [],
    );
  }

  /// `1 год`
  String get oneYear {
    return Intl.message(
      '1 год',
      name: 'oneYear',
      desc: '',
      args: [],
    );
  }

  /// `20 дней`
  String get twentyDays {
    return Intl.message(
      '20 дней',
      name: 'twentyDays',
      desc: '',
      args: [],
    );
  }

  /// `Страхование вреда, причиненного жизни и здоровью пострадавшей стороны`
  String get insuranceDamagePriceTitle {
    return Intl.message(
      'Страхование вреда, причиненного жизни и здоровью пострадавшей стороны',
      name: 'insuranceDamagePriceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Возмещение ущерба имуществу потерпевшего`
  String get compensationPriceTitle {
    return Intl.message(
      'Возмещение ущерба имуществу потерпевшего',
      name: 'compensationPriceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрируйтесь сначала, чтобы купить страховой полис`
  String get registerFirstToBuy {
    return Intl.message(
      'Зарегистрируйтесь сначала, чтобы купить страховой полис',
      name: 'registerFirstToBuy',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get registration {
    return Intl.message(
      'Регистрация',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Выберите язык`
  String get chooseLanguage {
    return Intl.message(
      'Выберите язык',
      name: 'chooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Добро пожаловать в epolis Выберите язык приложения`
  String get languagePageMainText {
    return Intl.message(
      'Добро пожаловать в epolis Выберите язык приложения',
      name: 'languagePageMainText',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get next {
    return Intl.message(
      'Продолжить',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Я полностью согласен с условиями Пользователкого соглашения`
  String get iAmAgree {
    return Intl.message(
      'Я полностью согласен с условиями Пользователкого соглашения',
      name: 'iAmAgree',
      desc: '',
      args: [],
    );
  }

  /// `Лицензионное соглашение`
  String get licenseAgreement {
    return Intl.message(
      'Лицензионное соглашение',
      name: 'licenseAgreement',
      desc: '',
      args: [],
    );
  }

  /// `ЛИЦЕНЗИОННОЕ  СОГЛАШЕНИЕ`
  String get licenseAgreementMain {
    return Intl.message(
      'ЛИЦЕНЗИОННОЕ  СОГЛАШЕНИЕ',
      name: 'licenseAgreementMain',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона`
  String get phoneNumber {
    return Intl.message(
      'Номер телефона',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Введите свой номер телефона, мы отправим код подтверждения на вашу телефон`
  String get loginMainText {
    return Intl.message(
      'Введите свой номер телефона, мы отправим код подтверждения на вашу телефон',
      name: 'loginMainText',
      desc: '',
      args: [],
    );
  }

  /// `Отправить СМС`
  String get sendSms {
    return Intl.message(
      'Отправить СМС',
      name: 'sendSms',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить код`
  String get confirmCode {
    return Intl.message(
      'Подтвердить код',
      name: 'confirmCode',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, введите код, который вы отправили на`
  String get verifyPageMainText {
    return Intl.message(
      'Пожалуйста, введите код, который вы отправили на',
      name: 'verifyPageMainText',
      desc: '',
      args: [],
    );
  }

  /// `Повторно отправить код через`
  String get resendCodeAfterSomeTime {
    return Intl.message(
      'Повторно отправить код через',
      name: 'resendCodeAfterSomeTime',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить`
  String get confirm {
    return Intl.message(
      'Подтвердить',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get home {
    return Intl.message(
      'Главная',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Мои полисы`
  String get myPolicies {
    return Intl.message(
      'Мои полисы',
      name: 'myPolicies',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Имя Фамилия`
  String get nameSurname {
    return Intl.message(
      'Имя Фамилия',
      name: 'nameSurname',
      desc: '',
      args: [],
    );
  }

  /// `Все`
  String get all {
    return Intl.message(
      'Все',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Сначала зарегистрируйтесь, чтобы добавить или приобрести страховой полис`
  String get anAuthText {
    return Intl.message(
      'Сначала зарегистрируйтесь, чтобы добавить или приобрести страховой полис',
      name: 'anAuthText',
      desc: '',
      args: [],
    );
  }

  /// `Купить полис`
  String get buyPolis {
    return Intl.message(
      'Купить полис',
      name: 'buyPolis',
      desc: '',
      args: [],
    );
  }

  /// `Действующие`
  String get operating {
    return Intl.message(
      'Действующие',
      name: 'operating',
      desc: '',
      args: [],
    );
  }

  /// `В оформлении`
  String get inDesign {
    return Intl.message(
      'В оформлении',
      name: 'inDesign',
      desc: '',
      args: [],
    );
  }

  /// `Архивные`
  String get archived {
    return Intl.message(
      'Архивные',
      name: 'archived',
      desc: '',
      args: [],
    );
  }

  /// `У вас еще нет страховки. Купите или добавить страховку`
  String get emptyPolis {
    return Intl.message(
      'У вас еще нет страховки. Купите или добавить страховку',
      name: 'emptyPolis',
      desc: '',
      args: [],
    );
  }

  /// `Информация профиля`
  String get profileInfo {
    return Intl.message(
      'Информация профиля',
      name: 'profileInfo',
      desc: '',
      args: [],
    );
  }

  /// `Напоминания`
  String get notifications {
    return Intl.message(
      'Напоминания',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get exit {
    return Intl.message(
      'Выйти',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Вы хотите выйти из приложения`
  String get doYouWantExit {
    return Intl.message(
      'Вы хотите выйти из приложения',
      name: 'doYouWantExit',
      desc: '',
      args: [],
    );
  }

  /// `Нет`
  String get no {
    return Intl.message(
      'Нет',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message(
      'Да',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Всплывающие напоминания`
  String get notificationSetting {
    return Intl.message(
      'Всплывающие напоминания',
      name: 'notificationSetting',
      desc: '',
      args: [],
    );
  }

  /// `Получайте рекомендации на основе вашей деятельности`
  String get notificationOnOffText {
    return Intl.message(
      'Получайте рекомендации на основе вашей деятельности',
      name: 'notificationOnOffText',
      desc: '',
      args: [],
    );
  }

  /// `Получайте оповещения на свою телефону`
  String get notificationOnPhone {
    return Intl.message(
      'Получайте оповещения на свою телефону',
      name: 'notificationOnPhone',
      desc: '',
      args: [],
    );
  }

  /// `Оповещение  и советы `
  String get alertAndTips {
    return Intl.message(
      'Оповещение  и советы ',
      name: 'alertAndTips',
      desc: '',
      args: [],
    );
  }

  /// `Новостная рассылка`
  String get newsLatter {
    return Intl.message(
      'Новостная рассылка',
      name: 'newsLatter',
      desc: '',
      args: [],
    );
  }

  /// `Новости и рекламная информация`
  String get newAndPromotionalInformation {
    return Intl.message(
      'Новости и рекламная информация',
      name: 'newAndPromotionalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления`
  String get notification {
    return Intl.message(
      'Уведомления',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Нет уведомления`
  String get noNotification {
    return Intl.message(
      'Нет уведомления',
      name: 'noNotification',
      desc: '',
      args: [],
    );
  }

  /// `Купить страховку`
  String get buyInsurance {
    return Intl.message(
      'Купить страховку',
      name: 'buyInsurance',
      desc: '',
      args: [],
    );
  }

  /// `Получить страховой полис онлайн за 5 минут`
  String get onBoardingTitle1 {
    return Intl.message(
      'Получить страховой полис онлайн за 5 минут',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Автоматически заполним данные`
  String get onBoardingTitle2 {
    return Intl.message(
      'Автоматически заполним данные',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Живая и дружелюбная 24/7 техническая поддержка`
  String get onBoardingTitle3 {
    return Intl.message(
      'Живая и дружелюбная 24/7 техническая поддержка',
      name: 'onBoardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Сравним цены от 20 разных страховых и поможем выбрать самую низкую`
  String get onBoardingText1 {
    return Intl.message(
      'Сравним цены от 20 разных страховых и поможем выбрать самую низкую',
      name: 'onBoardingText1',
      desc: '',
      args: [],
    );
  }

  /// `Погрузим информацию из баз. Данные не нужно будет вводить вручную`
  String get onBoardingText2 {
    return Intl.message(
      'Погрузим информацию из баз. Данные не нужно будет вводить вручную',
      name: 'onBoardingText2',
      desc: '',
      args: [],
    );
  }

  /// `Оперативно придём на помощь и поможем решить все проблемы`
  String get onBoardingText3 {
    return Intl.message(
      'Оперативно придём на помощь и поможем решить все проблемы',
      name: 'onBoardingText3',
      desc: '',
      args: [],
    );
  }

  /// `Пропустить`
  String get skip {
    return Intl.message(
      'Пропустить',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Начать пользоваться`
  String get startUsing {
    return Intl.message(
      'Начать пользоваться',
      name: 'startUsing',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get firstName {
    return Intl.message(
      'Имя',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get lastName {
    return Intl.message(
      'Фамилия',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Профиль успешно обновлен!`
  String get profileUpdated {
    return Intl.message(
      'Профиль успешно обновлен!',
      name: 'profileUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Добавить изображение`
  String get pickImage {
    return Intl.message(
      'Добавить изображение',
      name: 'pickImage',
      desc: '',
      args: [],
    );
  }

  /// `Учетная запись подтверждена`
  String get accountVerified {
    return Intl.message(
      'Учетная запись подтверждена',
      name: 'accountVerified',
      desc: '',
      args: [],
    );
  }

  /// `Ваша учетная запись успешно подтверждена, теперь давайте наслаждаться функциями Epolis`
  String get accountVerifiedDescription {
    return Intl.message(
      'Ваша учетная запись успешно подтверждена, теперь давайте наслаждаться функциями Epolis',
      name: 'accountVerifiedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Оформление страховки`
  String get bookInsurance {
    return Intl.message(
      'Оформление страховки',
      name: 'bookInsurance',
      desc: '',
      args: [],
    );
  }

  /// `Общая информация`
  String get generalInfo {
    return Intl.message(
      'Общая информация',
      name: 'generalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Информация об автомобиле`
  String get infoAboutCar {
    return Intl.message(
      'Информация об автомобиле',
      name: 'infoAboutCar',
      desc: '',
      args: [],
    );
  }

  /// `Очистить информацию`
  String get clearData {
    return Intl.message(
      'Очистить информацию',
      name: 'clearData',
      desc: '',
      args: [],
    );
  }

  /// `Номер авто`
  String get autoNumber {
    return Intl.message(
      'Номер авто',
      name: 'autoNumber',
      desc: '',
      args: [],
    );
  }

  /// `Техпаспорт`
  String get techPassport {
    return Intl.message(
      'Техпаспорт',
      name: 'techPassport',
      desc: '',
      args: [],
    );
  }

  /// `Серия`
  String get series {
    return Intl.message(
      'Серия',
      name: 'series',
      desc: '',
      args: [],
    );
  }

  /// `Номер`
  String get number {
    return Intl.message(
      'Номер',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Марка и модель`
  String get model {
    return Intl.message(
      'Марка и модель',
      name: 'model',
      desc: '',
      args: [],
    );
  }

  /// `Год выпуска автомобиля`
  String get carMadeDate {
    return Intl.message(
      'Год выпуска автомобиля',
      name: 'carMadeDate',
      desc: '',
      args: [],
    );
  }

  /// `Информация о владельце`
  String get driverInfo {
    return Intl.message(
      'Информация о владельце',
      name: 'driverInfo',
      desc: '',
      args: [],
    );
  }

  /// `Ф.И.О`
  String get fio {
    return Intl.message(
      'Ф.И.О',
      name: 'fio',
      desc: '',
      args: [],
    );
  }

  /// `Паспорта/ID карта`
  String get passport {
    return Intl.message(
      'Паспорта/ID карта',
      name: 'passport',
      desc: '',
      args: [],
    );
  }

  /// `ЖШШИР`
  String get pinFl {
    return Intl.message(
      'ЖШШИР',
      name: 'pinFl',
      desc: '',
      args: [],
    );
  }

  /// `Водитель`
  String get driver {
    return Intl.message(
      'Водитель',
      name: 'driver',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Добавить водителя`
  String get addDriver {
    return Intl.message(
      'Добавить водителя',
      name: 'addDriver',
      desc: '',
      args: [],
    );
  }

  /// `Дата рождения`
  String get dateOfBirth {
    return Intl.message(
      'Дата рождения',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `ДД/ММ/ГГГГ`
  String get ddMMYY {
    return Intl.message(
      'ДД/ММ/ГГГГ',
      name: 'ddMMYY',
      desc: '',
      args: [],
    );
  }

  /// `Родство`
  String get relationShip {
    return Intl.message(
      'Родство',
      name: 'relationShip',
      desc: '',
      args: [],
    );
  }

  /// `Водительские права`
  String get driverLicense {
    return Intl.message(
      'Водительские права',
      name: 'driverLicense',
      desc: '',
      args: [],
    );
  }

  /// `Дата`
  String get date {
    return Intl.message(
      'Дата',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Информация о контракте`
  String get contractInfo {
    return Intl.message(
      'Информация о контракте',
      name: 'contractInfo',
      desc: '',
      args: [],
    );
  }

  /// `Дата начало контракта`
  String get contractStartDate {
    return Intl.message(
      'Дата начало контракта',
      name: 'contractStartDate',
      desc: '',
      args: [],
    );
  }

  /// `Введите дату`
  String get enterDate {
    return Intl.message(
      'Введите дату',
      name: 'enterDate',
      desc: '',
      args: [],
    );
  }

  /// `Дата окончания срока действия контракта`
  String get contractExpirationDate {
    return Intl.message(
      'Дата окончания срока действия контракта',
      name: 'contractExpirationDate',
      desc: '',
      args: [],
    );
  }

  /// `Иметь привилегию`
  String get haveThePrivilege {
    return Intl.message(
      'Иметь привилегию',
      name: 'haveThePrivilege',
      desc: '',
      args: [],
    );
  }

  /// `Не привилегированный`
  String get notPrivileged {
    return Intl.message(
      'Не привилегированный',
      name: 'notPrivileged',
      desc: '',
      args: [],
    );
  }

  /// `Инфомация Водителя`
  String get driverDetails {
    return Intl.message(
      'Инфомация Водителя',
      name: 'driverDetails',
      desc: '',
      args: [],
    );
  }

  /// `Информация о контракте`
  String get contractDetails {
    return Intl.message(
      'Информация о контракте',
      name: 'contractDetails',
      desc: '',
      args: [],
    );
  }

  /// `Способ оплаты`
  String get paymentType {
    return Intl.message(
      'Способ оплаты',
      name: 'paymentType',
      desc: '',
      args: [],
    );
  }

  /// `Продлить`
  String get expend {
    return Intl.message(
      'Продлить',
      name: 'expend',
      desc: '',
      args: [],
    );
  }

  /// `Купить снова`
  String get buyNow {
    return Intl.message(
      'Купить снова',
      name: 'buyNow',
      desc: '',
      args: [],
    );
  }

  /// `Обновить`
  String get update {
    return Intl.message(
      'Обновить',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `От`
  String get from {
    return Intl.message(
      'От',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `До`
  String get toDate {
    return Intl.message(
      'До',
      name: 'toDate',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка сервера`
  String get serverError {
    return Intl.message(
      'Ошибка сервера',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте интернет-соединение`
  String get checkInternetConnection {
    return Intl.message(
      'Проверьте интернет-соединение',
      name: 'checkInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестный сбой`
  String get unknownFailure {
    return Intl.message(
      'Неизвестный сбой',
      name: 'unknownFailure',
      desc: '',
      args: [],
    );
  }

  /// `Недействительный паспорт водителя`
  String get invalidDriverPassport {
    return Intl.message(
      'Недействительный паспорт водителя',
      name: 'invalidDriverPassport',
      desc: '',
      args: [],
    );
  }

  /// `Вы ввели неверные данные!`
  String get enteredWrongData {
    return Intl.message(
      'Вы ввели неверные данные!',
      name: 'enteredWrongData',
      desc: '',
      args: [],
    );
  }

  /// `Поля не должны быть пустыми`
  String get mustNotEmptyFailure {
    return Intl.message(
      'Поля не должны быть пустыми',
      name: 'mustNotEmptyFailure',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка неавторизации`
  String get unAuthFailure {
    return Intl.message(
      'Ошибка неавторизации',
      name: 'unAuthFailure',
      desc: '',
      args: [],
    );
  }

  /// `Неверный код, введите правильный код`
  String get WrongCode {
    return Intl.message(
      'Неверный код, введите правильный код',
      name: 'WrongCode',
      desc: '',
      args: [],
    );
  }

  /// `Сбой кеша`
  String get cacheError {
    return Intl.message(
      'Сбой кеша',
      name: 'cacheError',
      desc: '',
      args: [],
    );
  }

  /// `Повторно отправить код`
  String get reSendCode {
    return Intl.message(
      'Повторно отправить код',
      name: 'reSendCode',
      desc: '',
      args: [],
    );
  }

  /// `Выбирать`
  String get select {
    return Intl.message(
      'Выбирать',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Выберите дату`
  String get selectDate {
    return Intl.message(
      'Выберите дату',
      name: 'selectDate',
      desc: '',
      args: [],
    );
  }

  /// `Текст недействителен`
  String get invalidLength {
    return Intl.message(
      'Текст недействителен',
      name: 'invalidLength',
      desc: '',
      args: [],
    );
  }

  /// `Мы нашли`
  String get foundQuantity {
    return Intl.message(
      'Мы нашли',
      name: 'foundQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Успешно`
  String get success {
    return Intl.message(
      'Успешно',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Поздравляем, оплата прошла успешно Обязательное Э-ОСАГО страхование`
  String get SuccessDes {
    return Intl.message(
      'Поздравляем, оплата прошла успешно Обязательное Э-ОСАГО страхование',
      name: 'SuccessDes',
      desc: '',
      args: [],
    );
  }

  /// `Статус`
  String get status {
    return Intl.message(
      'Статус',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Оплачен`
  String get payed {
    return Intl.message(
      'Оплачен',
      name: 'payed',
      desc: '',
      args: [],
    );
  }

  /// `Метод оплаты`
  String get payType {
    return Intl.message(
      'Метод оплаты',
      name: 'payType',
      desc: '',
      args: [],
    );
  }

  /// `с картой`
  String get byCard {
    return Intl.message(
      'с картой',
      name: 'byCard',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Коммисия`
  String get commission {
    return Intl.message(
      'Коммисия',
      name: 'commission',
      desc: '',
      args: [],
    );
  }

  /// `Общая сумма`
  String get totalAmount {
    return Intl.message(
      'Общая сумма',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Скачать квитацию`
  String get downloadPayDoc {
    return Intl.message(
      'Скачать квитацию',
      name: 'downloadPayDoc',
      desc: '',
      args: [],
    );
  }

  /// `Заполнить все входные данные водителей`
  String get enterAllDriversInputs {
    return Intl.message(
      'Заполнить все входные данные водителей',
      name: 'enterAllDriversInputs',
      desc: '',
      args: [],
    );
  }

  /// `Счет для оплаты был отправлен на Ваш номер {phone} через СLICK.`
  String paymentInstruction(Object phone) {
    return Intl.message(
      'Счет для оплаты был отправлен на Ваш номер $phone через СLICK.',
      name: 'paymentInstruction',
      desc: '',
      args: [phone],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get expired {
    return Intl.message(
      'Expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Ширкат номи`
  String get company {
    return Intl.message(
      'Ширкат номи',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `ИНН`
  String get inn {
    return Intl.message(
      'ИНН',
      name: 'inn',
      desc: '',
      args: [],
    );
  }

  /// `See`
  String get show {
    return Intl.message(
      'See',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get delete_account {
    return Intl.message(
      'Delete account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete account?`
  String get delete_account_des {
    return Intl.message(
      'Do you want to delete account?',
      name: 'delete_account_des',
      desc: '',
      args: [],
    );
  }

  /// `Онлайн саёҳат суғуртаси`
  String get onlineInsuranceTravel {
    return Intl.message(
      'Онлайн саёҳат суғуртаси',
      name: 'onlineInsuranceTravel',
      desc: '',
      args: [],
    );
  }

  /// `Перед использованием Решения (см. определение ниже) внимательно ознакомьтесь с условиями данного Лицензионного соглашения с конечным пользователем (далее — «Соглашение»). Данный текст является юридически обязывающим договором. Давая согласие в электронной форме, устанавливая Решение или используя Решение, вы принимаете все условия настоящего Соглашения от своего лица и любой организации и физического лица, которое вы представляете или для чьего Устройства вы приобретаете Решение (в совокупности «вы»).`
  String get travelInsDesc {
    return Intl.message(
      'Перед использованием Решения (см. определение ниже) внимательно ознакомьтесь с условиями данного Лицензионного соглашения с конечным пользователем (далее — «Соглашение»). Данный текст является юридически обязывающим договором. Давая согласие в электронной форме, устанавливая Решение или используя Решение, вы принимаете все условия настоящего Соглашения от своего лица и любой организации и физического лица, которое вы представляете или для чьего Устройства вы приобретаете Решение (в совокупности «вы»).',
      name: 'travelInsDesc',
      desc: '',
      args: [],
    );
  }

  /// `Дни прибытия`
  String get travelDays {
    return Intl.message(
      'Дни прибытия',
      name: 'travelDays',
      desc: '',
      args: [],
    );
  }

  /// `Дата начала путешествия`
  String get travelStartDate {
    return Intl.message(
      'Дата начала путешествия',
      name: 'travelStartDate',
      desc: '',
      args: [],
    );
  }

  /// `Дата окончания путешествия`
  String get travelEndDate {
    return Intl.message(
      'Дата окончания путешествия',
      name: 'travelEndDate',
      desc: '',
      args: [],
    );
  }

  /// `Где вы хотите путешествовать?`
  String get travelCountry {
    return Intl.message(
      'Где вы хотите путешествовать?',
      name: 'travelCountry',
      desc: '',
      args: [],
    );
  }

  /// `Программа`
  String get travelProgram {
    return Intl.message(
      'Программа',
      name: 'travelProgram',
      desc: '',
      args: [],
    );
  }

  /// `Цель поездки`
  String get travelPurpose {
    return Intl.message(
      'Цель поездки',
      name: 'travelPurpose',
      desc: '',
      args: [],
    );
  }

  /// `Путешественники`
  String get traveller {
    return Intl.message(
      'Путешественники',
      name: 'traveller',
      desc: '',
      args: [],
    );
  }

  /// `Добавить путешественника`
  String get addTraveller {
    return Intl.message(
      'Добавить путешественника',
      name: 'addTraveller',
      desc: '',
      args: [],
    );
  }

  /// `Путешественник`
  String get singleTraveller {
    return Intl.message(
      'Путешественник',
      name: 'singleTraveller',
      desc: '',
      args: [],
    );
  }

  /// `Страна`
  String get travelCountries {
    return Intl.message(
      'Страна',
      name: 'travelCountries',
      desc: '',
      args: [],
    );
  }

  /// `Заявителе`
  String get travelApplicant {
    return Intl.message(
      'Заявителе',
      name: 'travelApplicant',
      desc: '',
      args: [],
    );
  }

  /// `Загранпаспорт`
  String get worldPassport {
    return Intl.message(
      'Загранпаспорт',
      name: 'worldPassport',
      desc: '',
      args: [],
    );
  }

  /// `ЖШШИР`
  String get jshshr {
    return Intl.message(
      'ЖШШИР',
      name: 'jshshr',
      desc: '',
      args: [],
    );
  }

  /// `Адрес`
  String get address {
    return Intl.message(
      'Адрес',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Ул. Амира темура, Ташкент`
  String get addressHint {
    return Intl.message(
      'Ул. Амира темура, Ташкент',
      name: 'addressHint',
      desc: '',
      args: [],
    );
  }

  /// `Цена полиса на USD`
  String get priceInUsd {
    return Intl.message(
      'Цена полиса на USD',
      name: 'priceInUsd',
      desc: '',
      args: [],
    );
  }

  /// `В семейной поездке количество путешественников должно быть от 3 до 6.`
  String get travelCountFailure {
    return Intl.message(
      'В семейной поездке количество путешественников должно быть от 3 до 6.',
      name: 'travelCountFailure',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uz', scriptCode: 'Cyrl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
