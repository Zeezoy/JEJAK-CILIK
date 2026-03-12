import 'package:flutter/material.dart';
import 'splashscreen2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'features/profile/pages/profile_page.dart';
import 'features/profile/pages/home_page.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen2(),
//     );
//   }
// }

// import 'belajar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://iytavcacxclvgvkbdxle.supabase.co',
    anonKey: 'sb_publishable_Btp9diyEEfAMicnJt7gf3g_gckPnlYR',
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // return MaterialApp(debugShowCheckedModeBanner: false, home: Belajar());

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


        home: const HomePage(
          name: "user",
        ),
    );

  }
}