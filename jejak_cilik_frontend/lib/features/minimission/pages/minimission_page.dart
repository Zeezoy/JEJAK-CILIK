import 'package:flutter/material.dart';
import '../../recall/pages/recall_page.dart';

class MiniMissionPage extends StatelessWidget {

  final String missionId;

  const MiniMissionPage({
    super.key,
    required this.missionId,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Mini Mission"),
      ),

      body: Center(
        child: ElevatedButton(

          child: const Text("Selesaikan Mini Mission"),

          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const RecallPage(),
              ),
            );

          },
        ),
      ),
    );
  }
}