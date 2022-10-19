import 'package:flutter_project/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'coree/network/network_info.dart';
import 'data/datasources/login_local_data_source.dart';
import 'data/datasources/login_remote_data_source.dart';
import 'data/repositories/login_repository_imp.dart';
import 'domain/repositories/login_repository.dart';
import 'domain/usecases/add_phone_number_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Login
// Bloc
  sl.registerFactory(() => LoginBloc(addPhoneNumberUseCase: sl()));

//UseCase
  sl.registerLazySingleton(() => AddPhoneNumberUseCase(sl()));

//Repository
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImp(
      netWorkInfo: sl(), remoteDataSource: sl(), localDataSource: sl()));

// DataSources
  sl.registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImp(client: sl()));
  sl.registerLazySingleton<LoginLocalDataSource>(
      () => LoginLocalDataSourceImp(sharedPreferences: sl()));

  //! Core
  sl.registerLazySingleton<NetWorkInfo>(() => NetWorkInfoImpl(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
