import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:async';

class Storage {
  static final manager = FlutterSecureStorage();

  // Write

  static void saveUserId(String id) async {
    await manager.write(key: "Id", value: id);
  }

  static void saveToken(String token) async {
    await manager.write(key: "Token", value: token);
  }

  // Read

  static Future<String> getUserId() async {
    String token = await manager.read(key: "Id");

    return token;
  }

  static Future<String> getToken() async {
    String token = await manager.read(key: "Token");

    return token;
  }
}