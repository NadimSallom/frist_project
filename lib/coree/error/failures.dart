import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

// no internet
class OfLineFailure extends Failure{
  @override
  List<Object?> get props => [];

}

// Api Error
class ServerFailure extends Failure{
  @override
  List<Object?> get props => [];

}
// EmptyCache Error
class EmptyCacheFailure extends Failure{
  @override
  List<Object?> get props => [];

}

// Phone Number Error
class WrongPhoneFailure extends Failure{
  @override
  List<Object?> get props => [];
}