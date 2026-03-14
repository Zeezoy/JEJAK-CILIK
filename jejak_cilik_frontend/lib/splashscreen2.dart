import 'package:flutter/material.dart';
import 'onboarding.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'features/auth/login2.dart';
import 'submodul.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  int step = 0;
  // int stepRight = 0;
  // int stepLeft = 0;

  final List<double> rightPositions = [20, 140];
  final List<double> leftPositions = [5, 80, 220];

    @override
  void initState() {
    
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    startApp();
  }

  Future<void> startApp() async {

    _playSequence();

    await Future.delayed(const Duration(seconds: 2));

    checkSession();

  }

  void checkSession() {

  final session = Supabase.instance.client.auth.currentSession;

  if (session != null) {

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const SubModul(),
      ),
    );

  } else {

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Login2(),
      ),
    );

  }

}

  Future<void> _playSequence() async {
    final delays = [
      800, // step 0
      800, // step 1
      800, // step 2
      800, // step 3
      800, // step 4
      800, // step 5
      800, // step 6
    ];

    for (int i = 0; i < delays.length; i++) {
      setState(() => step = i);
      await Future.delayed(Duration(milliseconds: delays[i]));
    }
    await Future.delayed(const Duration(seconds: 5));

    if (!mounted) return;

    checkSession();
  }

  // Future<void> _playSequence() async {
  //   for (int i = 0; i < rightPositions.length; i++) {
  //     setState(() => stepRight = i * 2); // muncul
  //     await Future.delayed(const Duration(milliseconds: 1000));

  //     setState(() => stepRight = i * 2 + 1); // hilang
  //     await Future.delayed(const Duration(milliseconds: 300));
  //   }
  //   for (int i = 0; i < rightPositions.length; i++) {
  //     setState(() => stepLeft = i * 2); // muncul
  //     await Future.delayed(const Duration(milliseconds: 1000));

  //     setState(() => stepLeft = i * 2 + 1); // hilang
  //     await Future.delayed(const Duration(milliseconds: 300));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Positioned(
            top: 370,
            right: currentRight(),
            child:
                // AnimatedOpacity(
                //   duration: const Duration(milliseconds: 800),
                //   opacity: isRightVisible() ? 1 : 0,
                //   child: Image.asset(
                //     'assets/splashscreen/kakibesar.png',
                //     width: 80,
                //   ),
                Image.asset('assets/splashscreen/kakibesar.png', width: 80),
          ),
          Positioned(
            top: 420,
            right: currentLeft(),
            child:
                // AnimatedOpacity(
                //   duration: const Duration(milliseconds: 800),
                //   opacity: isLeftVisible() ? 1 : 0,
                //   child:
                Image.asset('assets/splashscreen/kakikicil.png', width: 60),
          ),

          // Positioned(
          //   top: 460,
          //   right: _currentLeft(),
          //   child: AnimatedOpacity(
          //     duration: const Duration(milliseconds: 200),
          //     opacity: _isVisibleLeft() ? 1 : 0,
          //     child: Image.asset(
          //       'assets/splashscreen/kakikicil.png',
          //       width: 50,
          //     ),
          //   ),
          // ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOut,
            bottom: step >= 6 ? 320 : -200, // dari bawah layar → naik
            left: MediaQuery.of(context).size.width / 2 - 150,
            child: Image.asset(
              'assets/splashscreen/jejakcilik.png',
              width: 300,
            ),
          ),
          Positioned(
            top: 375,
            right: 230,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 600),
              opacity: step >= 6 ? 1 : 0,
              child: Image.asset('assets/splashscreen/bintang1.png', width: 15),
            ),
          ),

          Positioned(
            top: 425,
            left: 110,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 600),
              opacity: step >= 6 ? 1 : 0,
              child: Image.asset('assets/splashscreen/bintang2.png', width: 15),
            ),
          ),
        ],
      ),
    );
  }

  double currentRight() {
    if (step <= 2) return rightPositions[0]; // 20
    return rightPositions[1]; // 140
  }

  // double _currentRight() {
  //   int index = stepRight ~/ 2;
  //   if (index >= rightPositions.length) {
  //     return rightPositions.last;
  //   }
  //   return rightPositions[index];
  // }

  double currentLeft() {
    if (step <= 1) return leftPositions[0]; // 5
    if (step <= 3) return leftPositions[1]; // 80
    return leftPositions[2]; // 170
  }
  // double _currentLeft() {
  //   int index = stepLeft ~/ 2;
  //   if (index >= leftPositions.length) {
  //     return leftPositions.last;
  //   }
  //   return leftPositions[index];
  // }

  bool isRightVisible() {
    return step != 3; // hanya hilang di step 3
  }

  bool isLeftVisible() {
    return step != 1 && step != 5; // hilang di step ini
  }

  // bool _isVisibleLeft() {
  //   return stepRight % 2 == 1;
  // }
}
