import 'package:get_it/get_it.dart';
import 'package:sounds_good/models/login_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => LoginModel());
}