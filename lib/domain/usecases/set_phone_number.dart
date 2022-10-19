import 'package:dartz/dartz.dart';

import '../../coree/error/failures.dart';
import '../../presentation/pages/login/login_screen.dart';
import '../repositories/login_repository.dart';

class SetPhoneNumberUseCase{
   final LoginRepository repository;
   SetPhoneNumberUseCase(this.repository);
   Future <Either<Failure,Unit>> call() async{
     return await repository.setPhoneNumber();
   }
}

