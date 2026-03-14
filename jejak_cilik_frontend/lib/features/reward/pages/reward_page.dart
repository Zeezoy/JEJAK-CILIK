import 'package:flutter/material.dart';
import '../../../pembayaran.dart';

class RewardPage extends StatelessWidget {

  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Reward"),
      ),

      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      const Text(
        "🎉 Kamu mendapatkan reward!",
        style: TextStyle(
          fontSize: 22,
        ),
      ),

      const SizedBox(height: 20),

      ElevatedButton(
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const Pembayaran(),
            ),
          );

        },
        child: const Text("Lanjut ke Pembayaran"),
      ),

    ],
  ),
),
    );
  }
}