import 'package:flutter/material.dart';

class ModalLogout extends StatelessWidget {
  const ModalLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,

      child: Stack(
        children: [

          /// CARD
          Container(
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                const Text(
                  "Apakah Kamu Yakin Ingin Keluar?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xFF4A90A4),
                  ),
                ),

                const SizedBox(height: 22),

                Row(
                  children: [

                    /// KELUAR
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
                          "Keluar",
                          style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFA726),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    /// TIDAK
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
                          "Tidak",
                          style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
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

          /// IMAGE PENGUIN
          Positioned(
            left: 0,
            right: 0,
            top: 15,
            child: Center(
              child: Image.asset(
                "assets/images/penguin_sad.png",
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}