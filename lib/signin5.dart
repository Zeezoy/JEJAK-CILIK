import 'package:flutter/material.dart';

class Signin5 extends StatefulWidget {
  const Signin5({super.key});

  @override
  State<Signin5> createState() => _Signin5State();
}

class _Signin5State extends State<Signin5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            /// BACK BUTTON + FRAME
            Positioned(
              top: 22,
              left: 16,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                      border: const Border(
                        bottom: BorderSide(color: Color(0xFF6F470A), width: 2),
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Image.asset('assets/framebar3.png'),
                ],
              ),
            ),

            /// PINK BAWAH KIRI
            Positioned(
              bottom: 20,
              left: -80,
              child: Image.asset('assets/pink.png', width: 346),
              //fit: BoxFit.cover,
            ),

            /// BILUU ATAS KANAN
            Positioned(
              top: 20,
              left: 180,
              //right: 0,
              child: Image.asset('assets/biluu.png', width: 346),
            ),

            Positioned(
              top: 180,
              left: 40,
              right: 40,
              child: const Text(
                "Sikecil adalah...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 36,
                  color: Color(0xFF4C8099),
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      color: Colors.black38,
                    ),
                  ],
                ),
              ),
            ),

            /// ROW DI TENGAH
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/cowo.png', height: 380),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/cewe.png', height: 380),
                  ),
                ],
              ),
            ),

            /// BUTTON BAWAH
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
                    onPressed: () {},
                    child: const Text(
                      "Selanjutnya",
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
      ),
    );
  }
}
