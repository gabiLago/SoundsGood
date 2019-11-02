import 'package:sounds_good/models/base_mode.dart';

import 'package:sounds_good/locator.dart';
import 'package:sounds_good/services/authentication_service.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService = locator<AuthenticationService>();

  String errorMessage;

  Future<bool> login(String email, String password) async {
    setState(ViewState.Busy);

    if (email == '' || password == '') {
      errorMessage = 'Cannot leave fields in blank';
      setState(ViewState.Idle);

      return false;
    }

    var success = await _authenticationService.login(email, password);

    setState(ViewState.Idle);

    return success;
  }
}