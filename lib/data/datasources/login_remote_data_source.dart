import 'package:dartz/dartz.dart';

import '../../coree/error/exception.dart';
import '../models/login_model.dart';
import 'package:http/http.dart'as http;


abstract class LoginRemoteDataSource{
  Future<Unit> addPhoneNumber(LoginModel loginModel);
  Future<Unit> setPhoneNumber(LoginModel loginModel);

}
// ignore: constant_identifier_names
const BASE_URL='https://tr.hungry-app.com/api';

class LoginRemoteDataSourceImp implements LoginRemoteDataSource{
  final http.Client client;

  LoginRemoteDataSourceImp({required this.client});

  @override
  Future<Unit> addPhoneNumber(LoginModel loginModel) async {
  final body = {
    'smsResponse':loginModel.smsResponse,
    'message' : loginModel.message,
  };
  final response = await client.post(Uri.parse('$BASE_URL/auth/v2/enter_phone_number'),body: body);
  if(response.statusCode==201){
    return Future.value(unit);

  }else{
    throw ServerException();
  }
  }

  @override
  Future<Unit> setPhoneNumber(LoginModel loginModel) {
    // TODO: implement setPhoneNumber
    throw UnimplementedError();
  }
}