import 'package:flutter/material.dart';

void showLogoutModal(BuildContext context){

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
                height: 90,
              ),

              const SizedBox(height: 20),

              Row(
                children: [

                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Tidak"), 
                     ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Keluar"), 
                     ),
                  ),
                ],
              )
            ],
          ),
      );
    },
  );
}