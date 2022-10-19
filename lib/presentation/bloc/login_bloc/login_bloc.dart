

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../coree/error/failures.dart';
import '../../../domain/entities/login.dart';
import '../../../domain/usecases/add_phone_number_usecase.dart';


part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AddPhoneNumberUseCase addPhoneNumberUseCase;

  LoginBloc({required this.addPhoneNumberUseCase }) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
    if(event is AddPhoneNumberEvent) {
      emit(LoadingPhoneNumberState());
      final failureOrDoneMessage = await addPhoneNumberUseCase(event.login);
      failureOrDoneMessage.fold(
            (failure) => {
          emit(ErrorPhoneNumberState(message: _mapFailureMessage(failure))),
        },
            (_) => {
          //هنا ارجاع قيمه كود للدخول
          emit(AddPhoneNumberState(message: 'Login Success')),
        });
    }});
  }
  String _mapFailureMessage(Failure failure){
    switch (failure.runtimeType){
      case ServerFailure:
        return 'Please try again later';
      case OfLineFailure:
        return 'Please Check your Internet Connection';
      default:
        return 'Unexpected Error ,Please try again later';
    }
  }
}
