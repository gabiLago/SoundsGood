import 'package:sounds_good/core/models/profile.dart';
import 'base_model.dart';
import 'package:sounds_good/locator.dart';
import 'package:sounds_good/core/services/api.dart';

class ProfileModel extends BaseModel {
  Api _api = locator<Api>();

  Profile profile;
  Set<String> instrumentsToRemoveList = {};

  Future getProfile() async {
    setState(ViewState.Busy);
    profile = await _api.getProfile();
    setState(ViewState.Idle);
  }

  instrumentsToRemove({instrumentsSelected}) {
    setState(ViewState.Busy);
    instrumentsToRemoveList = instrumentsSelected;
    setState(ViewState.Idle);
  }

  updateInstrumentsList() {
    setState(ViewState.Busy);
    instrumentsToRemoveList.map( (String instrument) =>  profile.instruments.remove(instrument)).toList();
    print(profile.instruments);
    setState(ViewState.Idle);
  }
}
