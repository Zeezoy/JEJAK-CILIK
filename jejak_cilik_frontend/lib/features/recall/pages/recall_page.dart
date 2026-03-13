import 'package:flutter/material.dart';
import '../../reward/pages/reward_page.dart';

class RecallPage extends StatelessWidget {

  const RecallPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Recall"),
      ),

      body: Center(
        child: ElevatedButton(

          child: const Text("Lanjut ke Reward"),

          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const RewardPage(),
              ),
            );

          },
        ),
      ),
    );
  }
}