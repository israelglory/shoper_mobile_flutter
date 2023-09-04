import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void changePasswordVisibility() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}
