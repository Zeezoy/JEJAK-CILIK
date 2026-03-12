import 'package:flutter_riverpod/legacy.dart';
import 'package:jejak_cilik/core/storage/secure_storage_service.dart';
import 'auth_repository.dart';

class AuthState {
  final Map<String, dynamic>? user;
  final String? token;

  AuthState({this.user, this.token});

}

final authStateProvider = 
    StateNotifierProvider<AuthNotifier, AuthState>(
      (ref) => AuthNotifier(),
    );

class AuthNotifier extends StateNotifier<AuthState>{
  AuthNotifier() : super(AuthState()){
    checkLoginStatus();
  }

  final _repo = AuthRepository();
  final _storage = SecureStorageService();

  Future<void> loginWithGoogle({
    required String googleId,
    required String email,
    required String name,
  }) async {
    final result = await _repo.googleLogin(
      googleId: googleId, 
      email: email, 
      name: name,
      );

      state = AuthState(
        user: result["user"],
        token: result["token"],
        );
  }
  
  Future<void> logout() async{
    await _storage.delete(key: "token");
    state = AuthState();
  }

  Future<void> checkLoginStatus() async {
    final token = await _storage.read(key: "token");

    if(token != null){
      state = AuthState(token: token);
    }
  }
}