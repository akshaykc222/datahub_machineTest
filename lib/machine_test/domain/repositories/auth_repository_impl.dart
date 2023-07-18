import 'package:datahub_machine_test/machine_test/data/data_sources/local_data_source.dart';
import 'package:datahub_machine_test/machine_test/data/repositories/auth_repository.dart';

class AuthRepositoryImpl  extends AuthRepository{
  final LocalDataSource dataSource;

  AuthRepositoryImpl(this.dataSource);
  @override
  bool getLoginInfo() {
    return dataSource.getLoginInfo();
  }

  @override
  saveLoginInfo() {
   dataSource.saveLoginInfo();
  }

}