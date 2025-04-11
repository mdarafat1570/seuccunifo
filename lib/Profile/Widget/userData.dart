class UserData {
  static final UserData _instance = UserData._internal();

  String name = '';
  String age = '';
  String email = '';
  String gender = 'man';

  factory UserData() {
    return _instance;
  }

  UserData._internal();
}
