import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService{
  
  final supabase = Supabase.instance.client;

  //LOGIN

  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {

    return await supabase.auth.signInWithPassword(
      email: email,
      password: password,
      );
  }  

  // REGISTER 
Future<AuthResponse> register({
    required String email,
    required String password,
  }) async {

    return await supabase.auth.signUp(
      email: email,
      password: password,
      );
  } 

  Future<bool> signInWithGoogle() async {

    return await supabase.auth.signInWithOAuth(
      OAuthProvider.google,
      redirectTo: 'io.supabase.flutter://login-callback',
    );
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  User? get currentUser => supabase.auth.currentUser;
}
