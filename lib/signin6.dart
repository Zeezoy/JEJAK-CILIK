import 'package:flutter/material.dart';

class Signin6 extends StatefulWidget {
  const Signin6({super.key});

  @override
  State<Signin6> createState() => _Signin6State();
}

class _Signin6State extends State<Signin6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            /// PINK BAWAH KIRI
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/pojokatas.png'),
              //fit: BoxFit.cover,
            ),

            /// BILUU ATAS KANAN
            Positioned(
              bottom: 0,
              //left: 180,
              right: 0,
              child: Image.asset('assets/biluu.png'),
            ),

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
                  Image.asset('assets/framebar4.png'),
                ],
              ),
            ),

            Positioned(
              top: 180,
              left: 40,
              right: 40,
              child: const Text(
                "Kenalan Dulu Yuk",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 36,
                  color: Color(0xFF4C8099),
                  fontWeight: FontWeight.w900,
                  // shadows: [
                  //   Shadow(
                  //     offset: Offset(0, 3),
                  //     blurRadius: 6,
                  //     color: Colors.black38,
                  //   ),
                  // ],
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
                    child: Image.asset('assets/penguin6.png'),
                  ),
                  // const SizedBox(width: 20),
                  // InkWell(
                  //   onTap: () {},
                  //   child: Image.asset('assets/cewe.png', height: 380),
                  // ),
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
