import 'package:elancer_lec1/ecommerce_app/data_respositories/auth_helper.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController registerEmail = TextEditingController();
  TextEditingController registerPassword = TextEditingController();
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();
  GlobalKey<FormState> registerKey = GlobalKey();
  GlobalKey<FormState> loginKey = GlobalKey();
  String? requiredValidation(String? value) {
    if (value?.isEmpty ?? true) {
      return 'this field is required';
    }
  }
  String? passwordValidation(String? value) {
    if (value?.isEmpty ?? true) {
      return 'this field is required';
    }else if(value!.length<6){
       return 'password must be at least 6 symbols';
    }
  }

  register() async {
    if (registerKey.currentState!.validate()) {
      String? id = await AuthHelper.authHelper
          .createNewUser(registerEmail.text, registerPassword.text);
    }
  }

  login() async {
    if (loginKey.currentState!.validate()) {
      String? id = await AuthHelper.authHelper
          .login(loginEmail.text, loginPassword.text);
    }
  }
}
