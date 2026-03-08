import 'package:flutter/material.dart';
import 'onboarding2.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardState();
}

class _OnboardState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Positioned(
            top: -50,
            right: -50,
            child: Image.asset('assets/onboarding/elipsatas.png', width: 312),
          ),
          Positioned(
            bottom: -50,
            left: -50,
            child: Image.asset('assets/onboarding/elipsbawah.png', width: 326),
          ),
          Positioned(
            top: 500,
            right: -50,
            child: Image.asset(
              'assets/onboarding/elipssamping.png',
              width: 134,
            ),
          ),
          Positioned(
            top: 200,
            right: 200,
            child: Image.asset('assets/onboarding/elipsfull.png', width: 157),
          ),

          Center(
            child: Image.asset('assets/onboarding/jejakcilik1.png', width: 265),
          ),

          Positioned(
            top: 180,
            left: 40,
            right: 40,
            child: const Text(
              "Selamat Datang di",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: 36,
                color: Color(0xFF4C8099),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),

          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 55,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: const Border(
                    top: BorderSide(color: Color(0xFF6F470A), width: 2),
                    left: BorderSide(color: Color(0xFF6F470A), width: 2),
                    right: BorderSide(color: Color(0xFF6F470A), width: 2),
                    bottom: BorderSide(color: Color(0xFF6F470A), width: 4),
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Onboarding2(),
                      ),
                    );
                  },
                  child: const Text(
                    "Mulai Sekarang",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
