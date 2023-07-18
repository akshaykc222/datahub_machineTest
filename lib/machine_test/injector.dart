import 'package:datahub_machine_test/machine_test/data/data_sources/local_data_source.dart';
import 'package:datahub_machine_test/machine_test/data/repositories/auth_repository.dart';
import 'package:datahub_machine_test/machine_test/domain/repositories/auth_repository_impl.dart';
import 'package:datahub_machine_test/machine_test/domain/use_cases/get_login_info.dart';
import 'package:datahub_machine_test/machine_test/domain/use_cases/save_login_use_case.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  ///getStorage

  getIt.registerLazySingleton<GetStorage>(() => GetStorage());

  ///datasource
  getIt.registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(getIt()));

  ///repository
  getIt
      .registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));

  ///use case
  getIt
      .registerLazySingleton<SaveLoginUseCase>(() => SaveLoginUseCase(getIt()));
  getIt.registerLazySingleton<GetLoginInfoUseCase>(
      () => GetLoginInfoUseCase(getIt()));
}
