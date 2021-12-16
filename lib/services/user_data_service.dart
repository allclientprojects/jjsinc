
class UserDataService {
  String? _userId;
  String? _token;
  String? _language;

  bool get hasUserId => _userId != null && _userId!.isNotEmpty;
  bool get hasToken => _token != null && _token!.isNotEmpty;
  bool get hasLanguage => _language != null && _language!.isNotEmpty;
  String? get language => _language;

  setUserId(String userId) {
    if (_userId == userId) return;
    _userId = userId;
    checkValues();
  }

  setToken(String token) {
    if (_token == token) return;
    _token = token;
    checkValues();
  }

  setLanguage(String language) {
    if (_language == language) return;
    _language = language;
    // FirebaseAuth.instance.setLanguageCode(language);
    checkValues();
  }

  checkValues() async {
    if (hasLanguage && hasToken && hasUserId)
      // await PushNotificationsApi().saveToken(_token!, _userId!, _language!);

    print(
        "-------------------User: $_userId Language $_language Token $_token ");
  }

  bool isSameUser(String id) {
    // if (id == null) return false;
    return id == _userId;
  }
}
