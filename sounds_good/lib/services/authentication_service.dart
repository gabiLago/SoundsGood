import 'dart:async';

import 'package:sounds_good/locator.dart';
import 'package:sounds_good/services/api.dart';

class AuthenticationService {
  Api _api = locator<Api>();

  Future<bool> login(String email, String password) async {
    var hasLoggedIn = await _api.login(email, password);

    return hasLoggedIn;
  }
}