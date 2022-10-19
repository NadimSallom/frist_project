import 'package:equatable/equatable.dart';
import '../../data/models/login_model.dart';
class LoginEntities extends Equatable {

   final bool smsResponse;
   final String message;
   final Data data;
   final Errors errors;


   const LoginEntities({required this.smsResponse,required this.message,required this.data,required this.errors});
  @override
  List<Object?> get props => [smsResponse, message, data,errors];
}