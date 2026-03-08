import 'package:flutter/material.dart';
import '../widgets/modal_enter_password.dart';
import '../widgets/modal_logout.dart';
import 'pages/edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    String name = "Abe";
    String birthDate = "28 Feb 2016";
    String email = "Abe@gmail.com";
    
    return Scaffold(
      backgroundColor: const Color(0xFFEAF3F7),

      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height: 10),

            const Text(
              "Profile",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w800,
                fontSize: 22,
                color: Color(0xFF4A90A4),
              ),
            ),

            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                
                Container(
                  height: 170,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDDEAF1),
                    borderRadius: BorderRadius.circular(120),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),

                  child: Row(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            name,
                            style: const TextStyle(
                              fontFamily:  "NunitoSans",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xFFDDEAF1),
                            ),
                          ),

                          const SizedBox(height: 10),

                          Row(
                            children: [

                              const Icon(
                                Icons.cake,
                                size: 16,
                                color: Color(0xFF4A90A4),
                              ),

                              const SizedBox(width: 6),

                              Text(
                                birthDate,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontFamily: "NunitoSans",
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(width: 6),

                          Row(
                            children: [

                              const Icon(
                                Icons.email,
                                size: 16,
                                color: Color(0xFFFFA726),
                              ),

                              const SizedBox(width: 6),

                              Text(
                                email,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontFamily: "NunitoSans",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const Spacer(),

                      // PENGUIN IMAGE 
                      Image.asset(
                        "assets/editProfile.png",
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[

                  Text(
                    "Sertifikat",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFFFFA726),
                    ),
                  ),

                   Text(
                    "Lainnya",
                    style: TextStyle(
                      color: Color(0xFFFFA726),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // CERTIFICATE CARD
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CertificateCard(),
            ),

            const SizedBox(height: 20),

            // MENU
            const ProfileMenu(
              icon: Icons.person_outline,
              title: "Edit Akun",
              subtitle: "Ubah informasi akun Anda",
            ),

            const ProfileMenu(
              icon: Icons.lock_outline,
              title: "Kata Sandi",
              subtitle: "Ubah kata sandi akun Anda",
            ),

            const Spacer(),

            Container(
              margin: const EdgeInsets.all(20),
              height: 60,
        
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40), 
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: const [

                Icon(Icons.home_outlined),
                Icon(Icons.menu_book_outlined),
                Icon(Icons.directions_car_outlined),
                Icon(Icons.emoji_events_outlined),

                CircleAvatar(
                  backgroundColor: Color(0xFFFFA726),
                  child: Icon(Icons.person, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class CertificateCard extends StatelessWidget {
  const CertificateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      decoration: BoxDecoration(
        color: const Color(0xFF6DB7D6),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Padding(
        padding: const EdgeInsets.all(14),

        child: Row(
          children: [

            Image.asset(
              "assets/certificate.png",
            width: 80,
            ),

            const SizedBox(width: 10),

            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Text(
                    "Menghargai Perbedaan",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "3 Submodul",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),

                ],
              ),
            ),

            Container(
              width: 40,
              height: 40,

              decoration: const BoxDecoration(
                color: Color(0xFFFFC107),
                shape: BoxShape.circle,
              ),

              child: const Center(
                child: Text(
                  "G",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ) 
          ],
        ),
      ),
    );
  }
}


class ProfileMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ProfileMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),

      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF4A90A4)),

        title: Text(title),

        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 12),
        ),

        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}