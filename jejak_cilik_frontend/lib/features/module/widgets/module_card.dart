import 'package:flutter/material.dart';

class ModuleCard extends StatelessWidget {

  final String title;
  final bool completed;

  const ModuleCard({
    super.key,
    required this.title,
    required this.completed,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),

      child: ListTile(

        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        trailing: completed
            ? const Text(
                "Selesai",
                style: TextStyle(color: Colors.green),
              )
            : ElevatedButton(
                onPressed: () {},
                child: const Text("Mulai"),
              ),
      ),
    );
  }
}