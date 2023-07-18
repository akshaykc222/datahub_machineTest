import 'package:datahub_machine_test/machine_test/data/repositories/auth_repository.dart';

class SaveLoginUseCase {
  final AuthRepository repository;

  SaveLoginUseCase(this.repository);

  call() {
    return repository.saveLoginInfo();
  }
}
