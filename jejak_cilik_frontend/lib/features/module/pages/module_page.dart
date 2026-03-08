import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/module_provider.dart';
import '../widgets/module_card.dart';

class ModulePage extends ConsumerWidget {

  const ModulePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final submodulesAsync = ref.watch(submodulesProvider);

    return Scaffold(

      appBar: AppBar(
        title: const Text("Menghargai Perbedaan"),
      ),

      body: submodulesAsync.when(

        data: (submodules) {

          return ListView.builder(
            itemCount: submodules.length,
            itemBuilder: (context, index) {

              final submodule = submodules[index];

              return ModuleCard(
                title: submodule.title,
                completed: submodule.completed,
              );
            },
          );
        },

        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),

        error: (e, s) => Center(
          child: Text(e.toString()),
        ),
      ),
    );
  }
}