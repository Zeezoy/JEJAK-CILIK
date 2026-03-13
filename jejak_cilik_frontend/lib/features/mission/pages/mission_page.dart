import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MissionPage extends StatelessWidget {

  final String submoduleId;
  final String title;

  const MissionPage({
    super.key,
    required this.submoduleId,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(title),
      ),

      body: FutureBuilder(
        future: Supabase.instance.client
            .from("missions")
            .select()
            .eq("submodule_id", submoduleId),

        builder: (context, snapshot) {

          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final missions = snapshot.data as List;

          return ListView.builder(
            itemCount: missions.length,
            itemBuilder: (context, i) {

              final mission = missions[i];

              return ListTile(
                title: Text(mission["title"]),
                subtitle: Text(mission["description"] ?? ""),
              );

            },
          );

        },
      ),
    );
  }
}