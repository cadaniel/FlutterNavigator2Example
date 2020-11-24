import 'package:injectable/injectable.dart';

import 'model/user.dart';

@singleton
class AuthService {
  User _user;

  void login(String name) {
    _user = User(name);
  }

  bool isLoggedIn() => _user != null;
}
