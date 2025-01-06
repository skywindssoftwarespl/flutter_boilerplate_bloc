import 'package:get_it/get_it.dart';

import '../network/repository/user_repository.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerLazySingleton<UserRepository>(() => UserRepository());
}
