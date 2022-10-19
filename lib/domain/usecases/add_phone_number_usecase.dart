import 'package:dartz/dartz.dart';

import '../../coree/error/failures.dart';
import '../entities/login.dart';
import '../repositories/login_repository.dart';

class AddPhoneNumberUseCase{
  final LoginRepository repository;
  AddPhoneNumberUseCase(this.repository);
  Future <Either<Failure,Unit>> call(LoginEntities login) async{
    return await repository.addPhoneNumber(login);
  }
}