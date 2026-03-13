import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthBlocState> {

  final supabase = Supabase.instance.client;

  AuthBloc() : super(AuthBlocState()) {

    on<LoginWithGoogle>((event, emit) async {

      await supabase.auth.signInWithOAuth(
        OAuthProvider.google,
      );

      final user = supabase.auth.currentUser;

      if(user != null){
        emit(AuthBlocState(authenticated: true));
      }
    });

    on<LoginWithEmail>((event, emit) async {

      final res = await supabase.auth.signInWithPassword(
        email: event.email,
        password: event.password,
      );

      if(res.user != null){
        emit(AuthBlocState(authenticated: true));
      }
    });
  }
}