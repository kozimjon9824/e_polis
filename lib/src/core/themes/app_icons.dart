class AppIcons {
  AppIcons._();

  static final activeHome = getPath('ic_active_home');
  static final home = getPath('ic_home');
  static final briefcase = getPath('ic_briefcase');
  static final activeBriefcase = getPath('ic_active_briefcase');
  static final profile = getPath('ic_profile');
  static final activeProfile = getPath('ic_active_profile');
  static final check = getPath('ic_check');
  static final en = getPath('ic_en');
  static final ru = getPath('ic_ru');
  static final uz = getPath('ic_uz');
  static final about = getPath('ic_about');
  static final avatar = getPath('ic_avatar');
  static final changeLang = getPath('ic_change_lang');
  static final notification = getPath('ic_notification');
  static final profileInfo = getPath('ic_profile_info');
  static final questionMark = getPath('ic_question_mark');
  static final rightArrow = getPath('ic_right_arrow');
  static final bigAvatar = getPath('ic_big_avatar');
  static final linearStatus = getPath('ic_linear_status');
  static final docs = getPath('ic_docs');
  static final car = getPath('ic_car');
  static final airplane = getPath('ic_airplane');
  static final bell = getPath('ic_bell');
  static final activeBell = getPath('ic_active_bell');
  static final search = getPath('ic_search');
  static final nothingFound = getPath('ic_nothing_found');
  static final active = getPath('ic_active');
  static final delete = getPath('ic_delete');
  static final add = getPath('ic_add');
  static final payMe = getPath('ic_payme');
  static final click = getPath('ic_click');
  static final apelsin = getPath('ic_apelsin');
  static final card = getPath('ic_card');
  static final success = getPath('ic_success');
  static final error = getPath('ic_error');
  static final info = getPath('ic_info');
  static final web = getPath('ic_web');
  static final email = getPath('ic_email');
  static final phone = getPath('ic_phone');
  static final archiveLiner = getPath('ic_archive');
  static final calendar = getPath('ic_calendar');

  // images
  static final appLogo = getImagePath('app_logo');
  static final successDoc = getImagePath('success_doc');
  static final paymentSuccess = getImagePath('payment_success');
  static final onBoarding1 = getImagePath('onboarding1');
  static final onBoarding2 = getImagePath('onboarding2');
  static final onBoarding3 = getImagePath('onboarding3');

  static String getPath(String iconName) => 'assets/icons/$iconName.svg';

  static String getImagePath(String iconName) => 'assets/images/$iconName.svg';
}
