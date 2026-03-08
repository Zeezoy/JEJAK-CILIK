import 'package:flutter/material.dart';
import 'onboarding4.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboard3State();
}

class _Onboard3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/onboarding/penguin2.png', width: 379),
          ),

          Positioned(
            bottom: 40,
            left: 20,
            child: Image.asset('assets/onboarding/circlepath2.png', width: 76),
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
                      builder: (context) => const Onboarding4(),
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
