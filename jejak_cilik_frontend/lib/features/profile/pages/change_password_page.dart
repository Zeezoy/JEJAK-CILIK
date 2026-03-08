import 'package:flutter/material.dart';
import '../widgets/profile_textfield.dart';

class ChangePasswordPage extends StatelessWidget{
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6F8),

      // APP BAR
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F6F8),
        elevation: 0,
        centerTitle: true,

      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      
      title: const Text(
        "Kata Sandi",
        style: TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w800,
          fontSize: 22,
          color: Color(0xFFF3F6F8),
        ),
      ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        
        child: ListView(
          children: [
            const SizedBox(height: 20),

            // IMAGE
            Center(
              child: Image.asset(
                "assets/image_37.png",
                width: 180,
              ),
            ),

            const SizedBox(height: 30),

            // PASSWORD LAMA
            const Text(
              "Kata Sandi Lama",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
                color: Color(0xFF4A90A4),
              ),
            ),

            const SizedBox(height: 8),

            //PASSWORD BARU
            const Text(
              "Kata Sandi Baru",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF9E9E9E),
              ),
            ),

            const SizedBox(height: 8),

            ProfileTextField(
              hint: "Masukkan kata sandi baru",
              icon: Icons.lock_outline,
              suffixIcon: passwordEye(),
            ),

            const SizedBox(height: 6),

            const Text(
              "Buat sandi yang rumit",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontSize: 12,
                color: Color(0xFFB0B0B0),
              ),
            ),

            const SizedBox(height: 20),

            // KONFIRMASI PASSWORD
            const Text(
              "Konfirmasi Kata Sandi",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF9E9E9E),
              ),
            ),

             const SizedBox(height: 8),

             ProfileTextField(
              hint:"Masukkan kembali kata sandi",
              icon: Icons.lock_outline,
              suffixIcon: passwordEye(),
             ),

             const SizedBox(height: 40),

             //BUTTON SIMPAN
             SizedBox(
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFA726),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(14),
                    side: const BorderSide(
                      color: Color(0xFFCC861E),
                      width: 1.5,
                    ),
                  ),
                ),
                onPressed: (){},

                child: const Text(
                  "Simpan",
                  style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
              const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }


  // ICON MATA ORANGE 
  Widget passwordEye(){
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: const Color(0xFFFFA726),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.remove_red_eye_outlined,
        size: 18,
        color: Colors.white,
      ),
    );
  }

}