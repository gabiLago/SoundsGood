import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:sounds_good/screens/views/login_view.dart';
import 'package:sounds_good/screens/views/profile_view.dart';
import 'package:sounds_good/screens/views/edit_profile_view.dart';

const String initialRoute = "login";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginView());
      case 'login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case 'profile':
        return MaterialPageRoute(builder: (_) => ProfileView());
      case 'edit_profile':
        return MaterialPageRoute(builder: (_) => EditProfileView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
