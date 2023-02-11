import 'package:elancer_lec1/ecommerce_app/providers/auth_provider.dart';
import 'package:elancer_lec1/ecommerce_app/ui/auth/components/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Consumer<AuthProvider>(builder: (context, provider, x) {
        return Form(
          key: provider.loginKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomTextField(
                'Email', provider.loginEmail, provider.requiredValidation),
            CustomTextField('Password', provider.loginPassword,
                provider.passwordValidation),
            ElevatedButton(
                onPressed: () {
                  provider.login();
                },
                child: Text('Login'))
          ]),
        );
      }),
    );
  }
}
