import 'package:flutter/material.dart';

class ModalEnterPassword extends StatefulWidget {
  const ModalEnterPassword({super.key});

  @override
  State<ModalEnterPassword> createState() => _ModalEnterPasswordState();
}

class _ModalEnterPasswordState extends State<ModalEnterPassword> {

  final passwordController = TextEditingController();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,

      child: Stack(
        children: [

          /// CARD
          Container(
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                const Text(
                  "Masukkan Kata Sandi",
                  style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xFF4A90A4),
                  ),
                ),

                const SizedBox(height: 16),

                /// TEXTFIELD
                TextField(
                  controller: passwordController,
                  obscureText: obscure,

                  decoration: InputDecoration(
                    hintText: "Kata Sandi",

                    prefixIcon: const Icon(Icons.lock_outline),

                    suffixIcon: IconButton(
                      icon: Icon(
                        obscure
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                    ),

                    filled: true,
                    fillColor: const Color(0xFFF3F6F8),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [

                    /// BATAL
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Color(0xFFFFA726),
                            width: 1.5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Batalkan",
                          style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFA726),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    /// MASUK
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFA726),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          /// BACKGROUND CIRCLE
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFFDCEAF2),
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
            ),
          ),

          /// ICON
          const Positioned(
            left: 0,
            right: 0,
            top: 28,
            child: Center(
              child: Icon(
                Icons.lock_outline,
                size: 60,
                color: Color(0xFF4A90A4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}