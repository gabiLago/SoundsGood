import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  LoginHeader(this.emailController, this.passwordController);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text('Email'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LoginTextField(emailController, 'johnandyoko@soundsgood.jp', false),
          ),
          Text('Password'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LoginTextField(passwordController, '******', true),
          )
        ],
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isSensitive;

  LoginTextField(this.controller, this.hintText, this.isSensitive);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: isSensitive,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          hintText: hintText
        ),
        controller: controller,
      ),
    );
  }

}