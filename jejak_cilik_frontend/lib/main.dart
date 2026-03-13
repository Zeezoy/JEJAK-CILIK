import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'bloc/auth/auth_bloc.dart';
import 'splashscreen2.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://iytavcacxclvgvkbdxle.supabase.co',
    anonKey: 'sb_publishable_Btp9diyEEfAMicnJt7gf3g_gckPnlYR',
  );

  runApp(
    ProviderScope(
      child: BlocProvider(
        create: (_) => AuthBloc(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: "NunitoSans",
        scaffoldBackgroundColor: const Color(0xFFF8FEFE),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF8FEFE),
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF101010)),
        ),
      ),

      home: const SplashScreen2(),
    );

  }
}