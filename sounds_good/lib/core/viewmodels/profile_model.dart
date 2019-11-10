import 'package:sounds_good/core/models/profile.dart';

import 'base_model.dart';

import 'package:sounds_good/locator.dart';
import 'package:sounds_good/core/services/api.dart';

class ProfileModel extends BaseModel {
  Api _api = locator<Api>();

  Profile profile;

  Future getProfile() async {
    setState(ViewState.Busy);
    profile = await _api.getProfile();
    setState(ViewState.Idle);
  }

  Future updateProfile() async {
    setState(ViewState.Busy);
    profile = await _api.updateProfile();
    setState(ViewState.Idle);
  }
}