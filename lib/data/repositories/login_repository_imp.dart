import 'package:dartz/dartz.dart';
import 'package:flutter_project/coree/error/failures.dart';
import 'package:flutter_project/data/models/login_model.dart';
import 'package:flutter_project/domain/repositories/login_repository.dart';
import '../../coree/error/exception.dart';
import '../../coree/network/network_info.dart';
import '../../domain/entities/login.dart';
import '../datasources/login_local_data_source.dart';
import '../datasources/login_remote_data_source.dart';

class LoginRepositoryImp implements LoginRepository{
  final LoginRemoteDataSource remoteDataSource;
  final LoginLocalDataSource localDataSource;
  final NetWorkInfo netWorkInfo;

  LoginRepositoryImp({ required this.netWorkInfo, required this.remoteDataSource, required this.localDataSource});
  @override
  Future<Either<Failure, Unit>> addPhoneNumber(LoginEntities login)async  {
    final LoginModel loginModel=
    LoginModel(smsResponse: login.smsResponse,message: login.message,data: login.data,errors: login.errors);
    if(await netWorkInfo.isConnected){
      try{
      await  remoteDataSource.addPhoneNumber(loginModel);
        return Right(unit);
      } on ServerException{
        return Left(ServerFailure());
      }
      // no internet
    }else{
      return Left(OfLineFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> setPhoneNumber()  {
    throw UnimplementedError();
    // final LoginModel loginModel=
    // LoginModel(smsResponse: login.smsResponse,message: login.message,data: login.data,errors: login.errors);
    //
    // if(await netWorkInfo.isConnected){
    //   try{
    //     await  remoteDataSource.setPhoneNumber(loginModel);
    //     return Right(unit);
    //   } on ServerException{
    //     return Left(ServerFailure());
    //   }
    //   // no internet
    // }else{
    //   return Left(OfLineFailure());
    // }
  }

}


