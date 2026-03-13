import 'package:flutter/material.dart';
import 'signin.dart';
import 'onboarding4.dart';
import 'submodul.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  bool _obscure = true;
  final bool _loginError = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() => setState(() {}));
    _passwordController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7FD4FF),
      body: SafeArea(
        child: Stack(
          children: [
            /// BACKGROUND IMAGES
            Positioned(
              top: 50,
              left: -50,
              right: -50,
              child: Center(
                child: Image.asset(
                  'assets/eclipse_1.png',
                  width: 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: -50,
              right: -50,
              child: Center(
                child: Image.asset(
                  'assets/eclipse_2.png',
                  width: 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned(
              top: 70,
              left: 35,
              child: Image.asset('assets/penguin1.png'),
            ),

            /// BACK BUTTON
            Positioned(
              top: 22,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5),
                  border: Border(
                    bottom: BorderSide(
                      color: const Color.fromARGB(
                        255,
                        111,
                        71,
                        10,
                      ), // warna garis
                      width: 2,
                    ),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Onboarding4(),
                      ),
                    );
                  },
                ),
              ),
            ),

            /// BUBBLE TEXT IMAGE
            Positioned(
              top: 80,
              right: 24,
              child: Image.asset('assets/selamatdatangkembali.png', width: 198),
            ),

            /// MENU BUTTONS (MASUK / DAFTAR)
            Positioned(
              top: 250,
              left: 0,
              right: 0,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),
                      );
                    },
                    child: Image.asset('assets/frame_50.png', width: 164),
                  ),
                ],
              ),
            ),

            /// FORM LOGIN
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 600,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFF6FBFA),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 24),

                      /// EMAIL
                      TextField(
                        controller: _emailController,
                        style: TextStyle(
                          color: _loginError
                              ? Colors.red
                              : Color.fromARGB(255, 189, 189, 189),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: _loginError
                                ? Colors.red
                                : Color.fromARGB(255, 189, 189, 189),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          //border: OutlineInputBorder(),
                          prefixIcon: _emailController.text.isEmpty
                              ? Icon(
                                  Icons.email_outlined,
                                  size: 18,
                                  color: _loginError
                                      ? Colors.red
                                      : Color.fromARGB(255, 189, 189, 189),
                                )
                              : null,
                          filled: true,
                          fillColor: Color(0xFFF6FBFA),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: _loginError
                                  ? Colors.red
                                  : Colors.grey.shade400,
                            ),
                          ),
                        ),
                        onChanged: (_) => setState(() {}),
                      ),

                      const SizedBox(height: 16),

                      /// PASSWORD
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscure,
                        style: TextStyle(
                          color: _loginError
                              ? Colors.red
                              : Color.fromARGB(255, 189, 189, 189),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: "Kata Sandi",
                          errorText: _loginError
                              ? "Email atau kata sandi salah"
                              : null,
                          errorStyle: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          hintStyle: TextStyle(
                            color: _loginError
                                ? Colors.red
                                : Color.fromARGB(255, 189, 189, 189),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: _passwordController.text.isEmpty
                              ? Icon(
                                  Icons.lock_outline,
                                  size: 18,
                                  color: _loginError
                                      ? Colors.red
                                      : Color.fromARGB(255, 189, 189, 189),
                                )
                              : null,

                          filled: true,
                          fillColor: Color(0xFFF6FBFA),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: _loginError
                                  ? Colors.red
                                  : Color.fromARGB(255, 189, 189, 189),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: _loginError
                                  ? Colors.red
                                  : Color.fromARGB(255, 189, 189, 189),
                            ),
                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 8),

                      /// LUPA PASSWORD
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Lupa Kata Sandi?",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 100),

                      /// LOGIN BUTTON
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border(
                              top: BorderSide(
                                color: Color.fromARGB(255, 111, 71, 10),
                                width: 2,
                              ),
                              left: BorderSide(
                                color: Color.fromARGB(255, 111, 71, 10),
                                width: 2,
                              ),
                              right: BorderSide(
                                color: Color.fromARGB(255, 111, 71, 10),
                                width: 2,
                              ),
                              bottom: BorderSide(
                                color: Color.fromARGB(255, 111, 71, 10),
                                width: 4,
                              ),
                            ),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shadowColor: Colors.transparent, // biar rapi
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
                              "Masuk",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "atau",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      /// SOCIAL LOGIN
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              debugPrint("Google diklik");
                            },
                            child: Image.asset(
                              'assets/image_20.png',
                              width: 56,
                            ),
                          ),
                        ],
                      ),
                    ],
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
