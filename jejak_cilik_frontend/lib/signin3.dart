import 'package:flutter/material.dart';
import 'signin4.dart';
import 'core/temp_child_data.dart';

class Signin3 extends StatefulWidget {
  const Signin3({super.key});

  @override
  State<Signin3> createState() => _Signin3State();
}

class _Signin3State extends State<Signin3> {
  final TextEditingController _namaController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _namaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  /// ELLIPSE (BACKGROUND)
                  Image.asset('assets/Ellipse 5.png', width: 346),

                  /// GAMBAR DI TENGAH ELLIPSE
                  Image.asset('assets/penguin4.png', width: 293),
                ],
              ),
            ),

            Positioned(
              top: 22,
              left: 16,
              child: Row(
                children: [
                  /// BACK BUTTON
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                      border: const Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(255, 111, 71, 10),
                          width: 2,
                        ),
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  const SizedBox(width: 30), // jarak button ke image
                  /// IMAGE DI KANAN BUTTON
                  Image.asset('assets/framebar1.png'),
                ],
              ),
            ),
            Positioned(
              top: 180,
              left: 40,
              right: 40,
              child: const Text(
                "Siapa Nama Sikecil?",
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

            Positioned(
              top: 650,
              left: 20,
              child: const Text(
                "Tulis Nama Sikecil",
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 20,
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

            Positioned(
              top: 680,
              left: 20,
              right: 20,
              child: TextField(
                controller: _namaController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 189, 189, 189),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: "Nama Anak",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 189, 189, 189),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  //border: OutlineInputBorder(),
                  prefixIcon: _namaController.text.isEmpty
                      ? const Icon(
                          Icons.person_outlined,
                          size: 18,
                          color: Color.fromARGB(255, 189, 189, 189),
                        )
                      : null,
                  filled: true,
                  fillColor: Color(0xFFF6FBFA),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 189, 189, 189),
                    ),
                  ),
                ),
                onChanged: (_) => setState(() {}),
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

                    TempChildData.name = _namaController.text;

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Signin4(),
                      ),
                    );
                  },
                    child: const Text(
                      "Selanjutnya",
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
