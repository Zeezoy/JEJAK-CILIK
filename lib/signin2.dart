import 'package:flutter/material.dart';

class Signin2 extends StatefulWidget {
  const Signin2({super.key});

  @override
  State<Signin2> createState() => _Signin2State();
}

class _Signin2State extends State<Signin2> {
  // bool _obscure = true;
  // bool _rememberMe = false;

  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _passController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   _emailController.addListener(() => setState(() {}));
  //   _passwordController.addListener(() => setState(() {}));
  //   _passController.addListener(() => setState(() {}));
  // }

  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   _passController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FD4FF),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  /// ELLIPSE (BACKGROUND)
                  Image.asset('assets/Ellipse 6.png', width: 346),

                  /// GAMBAR DI TENGAH ELLIPSE
                  Image.asset('assets/penguin3.png', width: 293),
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
                    onPressed: () {},
                    child: const Text(
                      "Mulai",
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
