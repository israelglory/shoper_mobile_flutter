import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpViewModel extends BaseViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void changePasswordVisibility() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}
