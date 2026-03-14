import 'package:flutter/material.dart';
import 'submodul.dart';

class Pembayaran2 extends StatefulWidget {
  const Pembayaran2({super.key});

  @override
  State<Pembayaran2> createState() => _Pembayaran2State();
}

class _Pembayaran2State extends State<Pembayaran2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FD4FF),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -43,
              left: -60,
              child: Image.asset(
                'assets/pembayaran/elipsbirukiriatas.png',
                width: 216,
              ),
            ),

            Positioned(
              top: 750,
              left: 256,
              child: Image.asset(
                'assets/pembayaran/elipsbirukananbawah.png',
                width: 216,
              ),
            ),

            Positioned(
              top: 149,
              left: 147,
              child: Image.asset(
                'assets/pembayaran/elipsbiruatas.png',
                width: 87,
              ),
            ),

            Positioned(
              top: 736,
              left: 156,
              child: Image.asset(
                'assets/pembayaran/elipsbirubawah.png',
                width: 87,
              ),
            ),

            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/pembayaran/penguin.png', width: 346),
                ],
              ),
            ),

            Positioned(
              top: 200,
              left: 40,
              right: 40,
              child: const Text(
                "Ayo Mulai Isi Identitas Sikecil",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 36,
                  color: Colors.white,
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

            // Text BAWAH
            Positioned(
              top: 600,
              left: 80,
              child: const Text(
                "Tidak Sampai 1 Menit Kok!",
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 20,
                  color: Colors.white,
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

            Positioned(
              bottom: 40, // jarak dari bawah layar
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SubModul(),
                        ),
                      );
                    },
                    child: const Text(
                      "Mulai Belajar",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
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
