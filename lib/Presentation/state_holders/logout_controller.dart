import 'package:get/get.dart';

import 'auth_controller.dart';

class LogOutController extends GetxController{
  final bool _logOutInProgress = false;

  final String _message = '';

  bool get logOutInProgress => _logOutInProgress;
  String get message => _message;

  Future logOut() async {

    AuthController.clear();

  }

}