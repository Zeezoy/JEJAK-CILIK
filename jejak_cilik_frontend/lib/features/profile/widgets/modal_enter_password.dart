import 'package:flutter/material.dart';

void showEnterPasswordModal(BuildContext context){

  TextEditingController controller = TextEditingController();

  showModalBottomSheet(

    context: context,
    isScrollControlled: true,
    builder: (_) {
      
      return Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

              const Text(
                "Masukkan Kata Sandi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: controller,
                obscureText: true,
              ),


              const SizedBox(height: 20),

              Row(
                children: [

                  Expanded(
                    child: OutlinedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: const Text("Batalkan"),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Masuk"),
                    ),
                  )
                ],
              )
          ],
        ),
      );
    },
  );
}