import 'package:flutter/material.dart';

class ProfileTextField extends StatelessWidget{
  final String hint;
  final IconData icon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool readOnly;

  const ProfileTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.suffixIcon,
    this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextField(
        controller: controller,
        readOnly: readOnly,
        style: const TextStyle(
          fontFamily: "NunitoSans",
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: "NunitoSans",
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Color(0xFF9E9E9E),
          ),

          // ICON KIRI

          prefixIcon: Icon(
            icon,
            size: 22,
            color: const Color(0xFF4A90A4),
          ),

          // ICON KANAN
          suffixIcon: suffixIcon,

          filled: true,
          fillColor: Colors.white,

          // contentPadding: const EdgeInsets.symmetric(
          //   vertical: 16,
          //   horizontal: 12,
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: Color(0xFFE0E0E0),
            )
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: Color(0xFFE0E0E0),
              width: 1.2,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: Color(0xFF4A90A4),
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  
  
  
    // return SizedBox(
    //   height: 56,
    //   child: TextField
    //   decoration: InputDecoration(
    //     hintText: hint,
    //     hintStyle: hintStyle,

    //     prefix: Icon(icon),

    //     filled: true,
    //     fillColor: Colors.white,

    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(12),
    //     ),

    //     enabledBorder: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(12),
    //       borderSide: const BorderSide(
    //         color: Color(0XCCCC861E)
    //       )
    //     )
    //   ),
    // );
  }

}
