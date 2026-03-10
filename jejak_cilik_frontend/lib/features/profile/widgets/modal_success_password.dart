import 'package:flutter/material.dart';

void showSuccessPasswordModal(BuildContext context){

  showDialog(
    context: context,
    builder: (_) {

      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              Image.asset(
                "",
                height: 100,
              ),

              const SizedBox(height: 10),

              const Text(
                "Kata Sandi Berhasil Diperbaharui",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 6),

              const Text(
                "Selamat, kata sandi kamu berhasil diperbaharui.",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Oke, Terima Kasih"),
              )
            ],
          ),
        );
    },
  );
}