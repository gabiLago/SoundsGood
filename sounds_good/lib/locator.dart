import 'package:get_it/get_it.dart';
import 'package:sounds_good/models/login_model.dart';
import 'package:sounds_good/services/api.dart';
import 'package:sounds_good/services/authentication_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => AuthenticationService());

  locator.registerLazySingleton(() => LoginModel());
}