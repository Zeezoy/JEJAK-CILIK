import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late final Animation<Offset> _kakiKiri;
  late final Animation<Offset> _kakiKanan;
  late final Animation<Offset> _judul;
  late final Animation<double> _bintangOpacity;
  late final Animation<double> _bintangScale;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _kakiKiri = Tween<Offset>(
      begin: const Offset(2, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _kakiKanan = Tween<Offset>(
      begin: const Offset(3, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _judul = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _bintangOpacity = Tween<double>(begin: 0, end: 1).animate(_controller);

    _bintangScale = Tween<double>(begin: 0.5, end: 1).animate(_controller);

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "/signin");
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SlideTransition(
                  position: _kakiKiri,
                  child: _kakiDenganBintang(
                    'assets/splashscreen/kakikicil.png',
                    'assets/splashscreen/bintang1.png',
                  ),
                ),
                const SizedBox(width: 24),
                SlideTransition(
                  position: _kakiKanan,
                  child: _kakiDenganBintang(
                    'assets/splashscreen/kakibesar.png',
                    'assets/splashscreen/bintang2.png',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SlideTransition(
              position: _judul,
              child: Image.asset(
                'assets/splashscreen/jejakcilik.png',
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _kakiDenganBintang(String kaki, String bintang) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(kaki, width: 80),
        Positioned(
          top: -10,
          left: -10,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (_, _) => Opacity(
              opacity: _bintangOpacity.value,
              child: Transform.scale(
                scale: _bintangScale.value,
                child: Image.asset(bintang, width: 26),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
