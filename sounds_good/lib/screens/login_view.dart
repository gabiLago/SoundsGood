import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sounds_good/locator.dart';
import 'package:sounds_good/models/login_model.dart';
import 'package:sounds_good/widgets/login_header.dart';

class LoginView extends StatelessWidget {
  void _handleLogin() {
    print("Evaluate login and open home");
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
              LoginHeader(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              FlatButton(
                color: Colors.teal,
                child: Text('Login'),
                onPressed: _handleLogin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
