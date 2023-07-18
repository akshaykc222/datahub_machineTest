import 'package:datahub_machine_test/machine_test/data/repositories/auth_repository.dart';

class GetLoginInfoUseCase {
  final AuthRepository repository;

  GetLoginInfoUseCase(this.repository);

  bool call() {
    return repository.getLoginInfo();
  }
}
