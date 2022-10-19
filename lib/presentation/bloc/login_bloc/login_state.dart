part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {
  const LoginState ();
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class ErrorPhoneNumberState extends LoginState{
  final String message;

  const ErrorPhoneNumberState({required this.message});
  @override
  List<Object> get props => [message];

}
class LoadingPhoneNumberState extends LoginState{}

class AddPhoneNumberState extends LoginState{
  final String message;

   const AddPhoneNumberState({required this.message});
  @override
  List<Object> get props => [message];

}
