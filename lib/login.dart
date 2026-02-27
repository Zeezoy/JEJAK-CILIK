import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FD4FF),
      body: SafeArea(
        //padding: EdgeInsets.all(20.0),
        child: Stack(
          children: [
            // Tombol Back
            Positioned(
              top: 54,
              left: 32,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ),

            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        debugPrint('Masuk ditekan');
                      },
                      child: Image.asset('assets/frame_49.png', width: 164),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        debugPrint('Daftar ditekan');
                      },
                      child: Image.asset('assets/frame_50.png', width: 164),
                    ),
                  ],

                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Image.asset('assets/frame_49.png', width: 164),
                  //         //onPressed: ()[], masih belum tau cara pressnya huhu
                  //         const SizedBox(width: 20),
                  //         Image.asset('assets/frame_50.png', width: 164),
                  //       ],
                ),
              ),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Image.asset('assets/frame_49.png', width: 164.0),
            //     // SizedBox(
            //     //   width: 164.0,
            //     //   height: 88.0,
            //     //   child: Container(
            //     //     color: Colors.white,
            //     //     child: Text(
            //     //       'Masuk',
            //     //       style: TextStyle(
            //     //         color: Color.fromARGB(255, 127, 212, 255),
            //     //       ),
            //     //     ),
            //     //   ),
            //     // ),
            //     const SizedBox(width: 20),
            //     Image.asset('assets/frame_50.png', width: 164.0),
            //   ],
            // ),

            // Konten utama
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 412.0,
                height: 440.0,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFF6FBFA),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //       // Tab Masuk / Daftar
                      //       Row(
                      //         children: [
                      //           Expanded(
                      //             child: Container(
                      //               padding: const EdgeInsets.symmetric(vertical: 12),
                      //               decoration: BoxDecoration(
                      //                 color: Colors.white,
                      //                 borderRadius: BorderRadius.circular(20),
                      //               ),
                      //               child: const Center(
                      //                 child: Text(
                      //                   "Masuk",
                      //                   style: TextStyle(
                      //                     color: Color(0xFF4FA3C7),
                      //                     fontWeight: FontWeight.bold,
                      //                   ),
                      //                 ),
                      //               ),
                      //        ),
                      //     ),

                      //   ),  const SizedBox(width: 8),
                      // Expanded(
                      //   child: Container(
                      //     padding: const EdgeInsets.symmetric(vertical: 12),
                      //     decoration: BoxDecoration(
                      //       color: Colors.grey.shade300,
                      //       borderRadius: BorderRadius.circular(20),
                      //     ),
                      //     child: const Center(
                      //       child: Text(
                      //         "Daftar",
                      //         style: TextStyle(
                      //           color: Colors.grey,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //     ),
                      //),
                      //],
                      //),
                      const SizedBox(height: 24),

                      // Email
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Kata Sandi",
                          suffixIcon: const Icon(Icons.visibility_off),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("Lupa Kata Sandi?"),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Tombol Login
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Ayo Masuk!",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      const Text("atau"),
                      const SizedBox(height: 16),

                      // Login Sosial
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.facebook, size: 40, color: Colors.blue),
                          SizedBox(width: 24),
                          Icon(Icons.g_mobiledata, size: 50, color: Colors.red),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //tempat awal tombol

            // Bubble Text
            Positioned(
              top: 90,
              right: 30,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  "Selamat Datang\nKembali!",
                  style: TextStyle(
                    color: Color(0xFF4FA3C7),
                    fontWeight: FontWeight.bold,
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
