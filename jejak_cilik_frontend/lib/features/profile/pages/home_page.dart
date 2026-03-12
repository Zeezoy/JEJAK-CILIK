import 'package:flutter/material.dart';
import '../../../core/widgets/search_bar_widgets.dart';
import '../../../core/widgets/module_card.dart';
import '../../../core/widgets/continue_mission_card.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/widgets/module_carousel.dart';

class HomePage extends StatelessWidget {

  final String name;
  final int streak;
  
  const HomePage({super.key, required this.name, this.streak = 1});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.secondary,
        unselectedItemColor: Colors.grey,
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
                          vertical: 6
                          ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [

                            Text(
                             "$streak",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(width: 4),

                             Image.asset(
                              "assets/api.png",
                              width: 20,
                            ),
                          ],
                        ),
                      ),

                      const Icon(Icons.notifications),

                    ],
                  ),

                const SizedBox(height: 20),
                      Text(
                      "Welcome back, $name",
                      style: AppTextStyles.heading,
                    ),

                const SizedBox(height: 4),

                  const Text(
                    "Mau Belajar Apa Hari Ini?",
                    style: AppTextStyles.body,
                  ),
                  const SizedBox(height: 16),

                  const SearchBarWidgets(),

                  SizedBox(height: 24),

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

                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [

                        ModuleCard(
                          image: "assets/Kejujuran.png", 
                          title: "Kejujuran",
                          isFree: false,
                          price: "Rp 30.000,-",

                          onTap: (){
                            _showBuyPopup(context);
                          },
                          ),

                          const SizedBox(width: 16),

                           ModuleCard(
                          image: "assets/BertanggungJawab.png", 
                          title: "Bertanggung Jawab",
                          isFree: false,
                          price: "Rp 50.000,-",

                          onTap: (){
                            _showBuyPopup(context);
                          },
                          ),
                        ],
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
    }

void _showBuyPopup(BuildContext context){

  showDialog(
    context: context,

    builder: (context) {

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
                "assets/BuyModul",
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
                )
            ],
          ),
        )
      );
    }
  );
}