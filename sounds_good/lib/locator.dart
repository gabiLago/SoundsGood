import 'package:get_it/get_it.dart';
import 'package:sounds_good/core/viewmodels/login_model.dart';
import 'package:sounds_good/core/services/api.dart';
import 'package:sounds_good/core/services/authentication_service.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => AuthenticationService());

  locator.registerLazySingleton(() => LoginModel());
  locator.registerLazySingleton(() => ProfileModel());
}