import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sounds_good/core/models/profile.dart';
import 'store.dart';

class Api {
  static const endpoint = 'http://ec2-52-87-34-66.compute-1.amazonaws.com';

  var client = http.Client();

  Future createUser(String email, String password) async {
    var body = {
      "email": email,
      "password": password
    };

    var response = await client.post('$endpoint/users/create', body: body);

    print(response.body);
  }
  // Login
  Future<bool> login(String email, String password) async {
    var body = {
      "email": email,
      "password": password
    };

    var response = await client.post('$endpoint/users/login', body: body);

    print(response.body);

    switch (response.statusCode) {
      case 200:
        Storage.saveUserId(response.headers["id"]);
        Storage.saveToken(response.headers["authorization"]);

        return true;
      default:
        return false;
    }
  }

  // Profile

  Future<Profile> getProfile() async {
    String token = await Storage.getToken();

    var headers = {
      "Authorization": token
    };

    final response = await client.patch('$endpoint/profile', headers: headers);    

    switch (response.statusCode) {
      case 200:
        var json = jsonDecode(response.body);
       
        print(json);

        return Profile.fromJson(json);
      default:
        return Profile();
    }
  }

  Future<Profile> updateProfile() async {
    String token = await Storage.getToken();

    var headers = {
      "Authorization": token
    };

    final response = await client.patch('$endpoint/profile', headers: headers);

  }

  Future<bool> getProfileWithId(String id) async {
    String token = await Storage.getToken();

    var headers = {
      "Authorization": token
    };

    var response = await client.post('$endpoint/profile/$id', headers: headers);

    switch (response.statusCode) {
      case 200:
        // Change bool for Profile model
        return true;
      default:
        return false;
    }
  }
}