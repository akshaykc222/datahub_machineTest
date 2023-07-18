import 'package:datahub_machine_test/machine_test/data/routes.dart';
import 'package:get_storage/get_storage.dart';

abstract class LocalDataSource {
  ///  to get the login status from getStorage ///

  bool getLoginInfo();

  /// to save the login status to getStorage ///

  saveLoginInfo();
}

class LocalDataSourceImpl extends LocalDataSource {
  final GetStorage getStorage;

  LocalDataSourceImpl(this.getStorage);

  @override
  bool getLoginInfo() {
    final loginData = getStorage.read(AppLocalDataBase.login);
    print(" login data : $loginData");
    if (loginData == true) {
      return true;
    }
    return false;
  }

  @override
  saveLoginInfo() {
    getStorage.write(AppLocalDataBase.login, true);
  }
}
