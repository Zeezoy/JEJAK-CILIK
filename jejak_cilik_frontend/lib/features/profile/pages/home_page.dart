import 'package:flutter/material.dart';
import '../../../core/widgets/search_bar_widgets.dart';
import '../../../core/widgets/module_card.dart';
import '../../../core/widgets/continue_mission_card.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/module_carousel.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../submodule/pages/submodul_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {

  final String name;
  final int streak;

  const HomePage({
    super.key,
    required this.name,
    this.streak = 1,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();

    testModules();
  }

  void testModules() async {

    final supabase = Supabase.instance.client;

    final data = await supabase
        .from("modules")
        .select();

    print("MODULE DATA:");
    print(data);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

              bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.secondary,
          unselectedItemColor: Colors.grey,

          onTap: (index) {

            if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProfilePage(),
                ),
              );
            }

          },

          items: const [

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: "Modul",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events),
              label: "Reward",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),

      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              "assets/BGHome.png",
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),

              child: ListView(
                children: [

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: Row(
                          children: [

                            Text(
                              "${widget.streak}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),

                            const SizedBox(width: 4),

                            Image.asset(
                              "assets/api.png",
                              width: 20,
                            ),
                          ],
                        ),
                      ),

                      Row(
                      children: [

                        const Icon(Icons.notifications),

                        const SizedBox(width: 12),

                        IconButton(
                          icon: const Icon(Icons.logout),
                          onPressed: () async {

                            await Supabase.instance.client.auth.signOut();

                            if(!mounted) return;

                            Navigator.pushReplacementNamed(context, "/login");

                          },
                        ),

                      ],
                    )
                  ],
                ),

                  const SizedBox(height: 20),

                  Text(
                    "Welcome back, ${widget.name}",
                    style: AppTextStyles.heading,
                  ),

                  const SizedBox(height: 4),

                  const Text(
                    "Mau Belajar Apa Hari Ini?",
                    style: AppTextStyles.body,
                  ),

                  const SizedBox(height: 16),

                  const SearchBarWidgets(),

                  const SizedBox(height: 24),

                  const Text(
                    "Ayo lanjutkan misimu!",
                    style: AppTextStyles.subheading,
                  ),

                  const SizedBox(height: 12),

                  const ContinueMissionCard(),

                  const SizedBox(height: 24),

                  const Text(
                    "Modul Saya",
                    style: AppTextStyles.subheading,
                  ),

                  const SizedBox(height: 12),

                  const ModuleCarousel(),

                  const SizedBox(height: 24),

                  const Text(
                    "Daftar Modul",
                    style: AppTextStyles.subheading,
                  ),

                  const SizedBox(height: 12),

                  SizedBox(
                      height: 230,
                      child: FutureBuilder(
                        future: Supabase.instance.client
                            .from("modules")
                            .select(),
                        builder: (context, snapshot) {

                          if (!snapshot.hasData) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          final modules = snapshot.data as List;

                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: modules.length,
                            itemBuilder: (context, i) {

                              final module = modules[i];

                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: ModuleCard(
                                  image: "assets/Kejujuran.png",
                                  title: module["title"],
                                  isFree: true,
                                  onTap: () {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SubmodulePage(
                                          moduleId: module["id"],
                                          title: module["title"],
                                        ),
                                      ),
                                    );

                                  },
                                ),
                              );

                            },
                          );

                        },
                      ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showBuyPopup(BuildContext context){

    showDialog(
      context: context,

      builder: (context){

        return Dialog(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          child: Container(
            padding: const EdgeInsets.all(20),

            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [

                Image.asset(
                  "assets/BuyModul.png",
                  width: 120,
                ),

                const SizedBox(height: 12),

                const Text(
                  "Modul Berbayar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),

                  child: const Text("Bayar Rp 30.000,-"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
