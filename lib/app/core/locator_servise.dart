import 'package:get_it/get_it.dart';

import '../data/repositories/user_repo_impl.dart';
import '../data/services/remote_services/user_remote_services.dart';
import '../domain/repositories/user_repo.dart';
import '../domain/usecases/get_all_users.dart';
import '../presentation/bloc/all_users_cubit/all_users_bloc.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

init() {
  //Bloc
  sl.registerFactory(
    () => AllUsersCubit(
      getAllUsers: sl<GetAllUsers>(),
    ),
  );

  //Usecases
  sl.registerLazySingleton(() => GetAllUsers(sl()));

  //Repositories
  sl.registerLazySingleton<UserRepo>(
    () => UserRepoImpl(
      userRemoteServices: sl(),
    ),
  );

  //services
  sl.registerLazySingleton<UserRemoteServices>(
    () => UserRemoteServicesImpl(
      client: http.Client(),
    ),
  );

  //Core
}
