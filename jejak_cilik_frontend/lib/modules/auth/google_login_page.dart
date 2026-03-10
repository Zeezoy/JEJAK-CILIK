import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jejak_cilik/modules/auth/auth_provider.dart';


class GoogleLoginPage extends ConsumerWidget{
  const GoogleLoginPage({super.key});

  Future<void> _login(BuildContext context, WidgetRef ref) async {
    try{
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      await googleSignIn.initialize(
        clientId: null,
      );

      final GoogleSignInAccount? account = 
        await googleSignIn.authenticate();
      
      if (account == null) return;

      await ref.read(authStateProvider.notifier).loginWithGoogle(
        googleId: account.id,
        email: account.email,
        name: account.displayName ?? "",
      );

       ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Successfully Login')),
       );

       Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (_) => const HomePage()),
        );
    } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: $e')),
        );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref){
    return Scaffold(
      appBar: AppBar(title: const Text("Login with Google")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _login(context, ref), 
          child: const Text("Sign in with Google")
          ),
        ),
      );
  }
}

class HomePage extends ConsumerWidget{
  const HomePage({super.key});

  @override 
  Widget build(BuildContext context, WidgetRef ref){
    final authState = ref.watch(authStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        
      actions: [
        IconButton(
          onPressed: () async {
            await ref.read(authStateProvider.notifier).logout();
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(
                builder: (_) => const GoogleLoginPage(),
                ),
              );
          },
          icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: authState.token != null 
          ? Text("Welcome, ${authState.user!['display_name']}")
          : const Text("Not logged in"),
      ),
    );
  }
}