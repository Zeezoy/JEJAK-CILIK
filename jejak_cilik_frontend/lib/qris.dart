import 'dart:async';
import 'package:flutter/material.dart';
import 'pembayaran.dart';
import 'pembayaran2.dart';

class Qris extends StatefulWidget {
  const Qris({super.key});

  @override
  State<Qris> createState() => _QrisState();
}

class _QrisState extends State<Qris> {
  Timer? _timer;
  int _remainingSeconds = 300; // 5 menit = 300 detik

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds == 0) {
        timer.cancel();
        // Aksi ketika timer habis, misal kembali ke halaman Pembayaran
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Waktu pembayaran habis")));
        Navigator.pop(context);
      } else {
        setState(() {
          _remainingSeconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formatTime(int totalSeconds) {
    final minutes = (totalSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (totalSeconds % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 254, 254, 1),
      body: SafeArea(
        child: Stack(
          children: [
            // Background Circle
            Positioned(
              top: 46,
              left: 132,
              child: Image.asset(
                'assets/pembayaran/elipsbayarpojokkanan.png',
                width: 279,
              ),
            ),
            Positioned(
              top: 598,
              left: 24,
              child: Image.asset(
                'assets/pembayaran/elipsbayarbawah.png',
                width: 279,
              ),
            ),

            // Konten utama
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),

                  // Title
                  const Center(
                    child: Text(
                      "Pembayaran",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(95, 161, 191, 1),
                        fontFamily: 'NunitoSans',
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Timer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Bayar dalam : ${_formatTime(_remainingSeconds)}",
                        style: const TextStyle(
                          color: Color.fromRGBO(255, 0, 0, 1),
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                          fontFamily: 'NunitoSans',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  GestureDetector(
                    onTap: () {
                      // Navigasi saat gambar ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pembayaran2(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/pembayaran/qrisfull.png',
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const SizedBox(height: 15),
                ],
              ),
            ),

            // Tombol Back di atas
            Positioned(
              top: 68,
              left: 25,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pembayaran()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Payment
      bottomNavigationBar: Container(
        height: 129,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(248, 254, 254, 1),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "Total",
              style: TextStyle(
                color: Color.fromRGBO(95, 161, 191, 0.8),
                fontWeight: FontWeight.w800,
                fontSize: 20,
                fontFamily: 'NunitoSans',
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Rp30.000",
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(57, 96, 115, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
