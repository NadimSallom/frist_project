part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}


class AddPhoneNumberEvent extends LoginEvent{
  final LoginEntities login;
  const AddPhoneNumberEvent({required this.login});

  @override
  List<Object> get props => [login];

}