import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../mission/pages/mission_page.dart';

class SubmodulePage extends StatelessWidget {

  final String moduleId;
  final String title;

  const SubmodulePage({
    super.key,
    required this.moduleId,
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
            .from("submodules")
            .select()
            .eq("module_id", moduleId),

        builder: (context, snapshot) {

          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final submodules = snapshot.data as List;

          return ListView.builder(
            itemCount: submodules.length,
            itemBuilder: (context, i) {

              final submodule = submodules[i];

              return ListTile(

                title: Text(submodule["title"]),

                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MissionPage(
                        submoduleId: submodule["id"],
                        title: submodule["title"],
                      ),
                    ),
                  );

                },
              );

            },
          );

        },
      ),
    );
  }
}