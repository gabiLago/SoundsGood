import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sounds_good/locator.dart';
import 'package:sounds_good/models/login_model.dart';
import 'package:sounds_good/screens/widgets/login_header.dart';
import 'package:sounds_good/services/store.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _handleLogin(LoginModel model) async {
    var loginSuccess = await model.login(emailController.text, passwordController.text);

    if (loginSuccess) {
      Navigator.pushNamed(context, '/');
    }

    return;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginModel>(
      builder: (context) => locator<LoginModel>(),
      child: Consumer<LoginModel>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LoginHeader(emailController, passwordController),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              FlatButton(
                color: Colors.teal,
                child: Text('Login'),
                onPressed: () => _handleLogin(model),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
