import 'package:flutter/material.dart';
import 'features/auth/login2.dart';
import 'onboarding4.dart';
import 'signin2.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _obscure = true;
  bool _rememberMe = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _emailController.addListener(() => setState(() {}));
    _passwordController.addListener(() => setState(() {}));
    _passController.addListener(() => setState(() {}));
  }

  Future<void> register() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    try {
      final res = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );

      if (res.user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Signin2(),
          ),
        );
      }
    } catch (e) {
      print("REGISTER ERROR: $e");
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) { {
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
              top: 90,
              left: 50,
              child: Image.asset('assets/ayomulai.png', width: 132),
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
              child: Image.asset('assets/penguin2.png'),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login2()),
                      );
                    },
                    child: Image.asset('assets/framemasukabu.png', width: 164),
                  ),
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      debugPrint('Daftar ditekan');
                    },
                    child: Image.asset(
                      'assets/framedaftarbiru.png',
                      width: 164,
                    ),
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
                        style: const TextStyle(
                          color: Color.fromARGB(255, 189, 189, 189),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 189, 189, 189),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          //border: OutlineInputBorder(),
                          prefixIcon: _emailController.text.isEmpty
                              ? const Icon(
                                  Icons.email_outlined,
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

                      const SizedBox(height: 16),

                      /// PASSWORD
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscure,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 189, 189, 189),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: "Kata Sandi",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 189, 189, 189),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: _passwordController.text.isEmpty
                              ? const Icon(
                                  Icons.lock_outline,
                                  size: 18,
                                  color: Color.fromARGB(255, 189, 189, 189),
                                )
                              : null,

                          filled: true,
                          fillColor: Color(0xFFF6FBFA),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      /// PASSWORD konfirrr
                      TextField(
                        controller: _passController,
                        obscureText: _obscure,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 189, 189, 189),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: "Konfirmasi Kata Sandi",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 189, 189, 189),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: _passController.text.isEmpty
                              ? const Icon(
                                  Icons.lock_outline,
                                  size: 18,
                                  color: Color.fromARGB(255, 189, 189, 189),
                                )
                              : null,

                          filled: true,
                          fillColor: Color(0xFFF6FBFA),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey.shade400,
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

                      /// ingat PASSWORD
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _rememberMe = !_rememberMe;
                            });
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: _rememberMe
                                        ? Colors.orange
                                        : Colors.blueAccent,
                                    width: 2,
                                  ),
                                  color: _rememberMe
                                      ? Colors.orange
                                      : Colors.transparent,
                                ),
                                child: _rememberMe
                                    ? const Icon(
                                        Icons.check,
                                        size: 14,
                                        color: Colors.white,
                                      )
                                    : null,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                "Ingat Kata Sandi",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 52),

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
                            onPressed: register,

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
                            onTap: () async {
                             await Supabase.instance.client.auth.signInWithOAuth(
                                OAuthProvider.google,
                                redirectTo: 'io.supabase.flutter://login-callback',
                             );
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
  }