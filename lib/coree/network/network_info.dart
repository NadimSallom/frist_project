import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetWorkInfo{
  Future<bool> get isConnected;
}
class NetWorkInfoImpl implements NetWorkInfo{
  late final InternetConnectionChecker connectionChecker;
  NetWorkInfoImpl (this.connectionChecker);
  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;

}