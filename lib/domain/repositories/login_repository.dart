
import 'package:dartz/dartz.dart';

import '../../coree/error/failures.dart';
import '../entities/login.dart';

abstract class LoginRepository{

  Future <Either<Failure,Unit>> setPhoneNumber();
  Future<Either<Failure,Unit>> addPhoneNumber(LoginEntities login);
}


