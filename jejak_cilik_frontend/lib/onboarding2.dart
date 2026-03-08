import 'package:flutter/material.dart';
import 'onboarding3.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({super.key});

  @override
  State<Onboarding2> createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/onboarding/penguin1.png', width: 379),
          ),

          Positioned(
            bottom: 40,
            left: 20,
            child: Image.asset('assets/onboarding/circlepath1.png', width: 76),
          ),
          Positioned(
            bottom: 40,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
                border: const Border(
                  bottom: BorderSide(color: Color(0xFF6F470A), width: 2),
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Onboarding3(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
