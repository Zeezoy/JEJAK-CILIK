import 'package:flutter/material.dart';

class ModalSuccessProfile extends StatelessWidget{
  const ModalSuccessProfile({super.key});

  @override 
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,

      child: Stack(
        children: [

          Container(
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                const Text(
                  "Profile Berhasil Diperbaharui",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color(0xFF4A90A4),
                  ),
                ),

                const SizedBox(height: 6),

                const Text(
                  "Selamat, profile kamu berhasil diperbaharui",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color(0xFF9E9E9E),
                  ),
                ),

                const SizedBox(height: 22),

                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFA726),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                        side: const BorderSide(
                          color: Color(0xFFCC861E),
                          width: 1.5,
                        ),
                      ),
                    ),

                    onPressed: (){
                      Navigator.pop(context);
                    },

                    child: const Text(
                      "Oke, Terimakasih",
                      style: TextStyle(
                        fontFamily: "NunitoSans",
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

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

          Positioned(
            left: 0,
            right: 0,
            top: 20,
            child: Center(
              child: Image.asset(
                "assets/happyProfile.png",
                height: 180,
              ),
            ),
          ),
        ],
      ),
    );
  }
}