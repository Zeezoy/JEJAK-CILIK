import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/storage/secure_storage_service.dart';

class AuthRepository {
  final String baseUrl = "http://10.0.2.2:5000/api/auth";
  final SecureStorageService _storage = SecureStorageService();

  Future<Map<String, dynamic>> googleLogin({
    required String googleId,
    required String email,
    required String name,
  }) async {
    final res = await http.post(
      Uri.parse("$baseUrl/google"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "googleId": googleId,
        "email": email,
        "name": name,
      }),
    );

    if (res.statusCode == 200){
      final data = jsonDecode(res.body);
      await _storage.write(key: "token", value: data["token"]);
      return data;
    } else {
      final err = jsonDecode(res.body);
      throw Exception(err["message"]);
    }
  }
}