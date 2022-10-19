import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../coree/error/exception.dart';
import '../models/login_model.dart';

abstract class LoginLocalDataSource {

  Future<List<LoginModel>> getCachedLoginPhone();

  Future<Unit> cachedPhoneNumber(List<LoginModel>loginModel);
}

class LoginLocalDataSourceImp implements LoginLocalDataSource {
  final SharedPreferences sharedPreferences;

  LoginLocalDataSourceImp({required this.sharedPreferences});

  @override
  Future<Unit> cachedPhoneNumber(List<LoginModel> loginModel) {
    List loginModelToJson = loginModel.map<Map<String, dynamic>>((loginModel) =>
        loginModel.toJson()).toList();
    sharedPreferences.setString('CACHED_LOGIN', json.encode(loginModelToJson));
    return Future.value(unit);
  }

  @override
  Future<List<LoginModel>> getCachedLoginPhone() {
    final jsonSting = sharedPreferences.getString('CACHED_LOGIN');
    if (jsonSting != null) {
      List decodeJsonData = json.decode(jsonSting);
      List<LoginModel> jsonToLoginModels = decodeJsonData
          .map<LoginModel>((jsonLoginModel) =>
          LoginModel.fromJson(jsonLoginModel))
          .toList();
      return Future.value(jsonToLoginModels);
    } else {
      throw EmptyCacheException();
    }
  }

}