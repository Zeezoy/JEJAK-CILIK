import 'package:flutter/material.dart';
import 'edit_profile_page.dart';
import 'change_password_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/profile_provider.dart';
import 'certificate_page.dart';
import 'home_page.dart';
import '../../../submodul.dart';
import '../../reward/pages/reward_page.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    final profile = ref.watch(profileProvider);

    String name = profile?["name"] ?? "";
    String birthDate = profile?["birth_date"] ?? "";
    String email = profile?["email"] ?? "";

    return Scaffold(
      backgroundColor: const Color(0xFFF8FEFE),

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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                alignment: Alignment.center,
                children: [

                  Container(
                    width: 328,
                    height: 218,
                    decoration: BoxDecoration(
                      color: const Color(0xFFECF9FF),
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),

                  Positioned(
                    right: 40,
                    child: Image.asset(
                      "assets/editProfile.png",
                      height: 120,
                    ),
                  ),

                  Positioned(
                    left: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF4C8099),
                          ),
                        ),

                        const SizedBox(height: 6),

                        Row(
                          children: [
                            const Icon(Icons.cake,
                                size: 16,
                                color: Color(0xFF4C8099)),
                            const SizedBox(width: 4),
                            Text(birthDate),
                          ],
                        ),

                        const SizedBox(height: 4),

                        Row(
                          children: [
                            const Icon(Icons.email,
                                size: 16,
                                color: Color(0xFFBF7D1D)),
                            const SizedBox(width: 4),
                            Text(email),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Text(
                    "Sertifikat",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFF5FA1BF),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CertificatePage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Lainnya",
                      style: TextStyle(
                        color: Color(0xFFBF7D1D),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  CertificateCard(),
                  SizedBox(width: 12),
                  CertificateCard(),
                  SizedBox(width: 12),
                  CertificateCard(),
                ],
              ),
            ),

            const SizedBox(height: 20),

            ProfileMenu(
              icon: Icons.person_outline,
              title: "Edit Akun",
              subtitle: "Ubah informasi akun Anda",
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfilePage(),
                  ),
                );
              },
            ),

            ProfileMenu(
              icon: Icons.lock_outline,
              title: "Kata Sandi",
              subtitle: "Ubah kata sandi akun Anda",
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChangePasswordPage(),
                  ),
                );
              },
            ),

            const Spacer(),

            Container(
              margin: const EdgeInsets.all(20),
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFFF2FBFF),
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
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomePage(name: "User"),
                        ),
                      );
                    },
                    child: const Icon(Icons.home_outlined,
                        color: Color(0xFF959898)),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SubModul(),
                        ),
                      );
                    },
                    child: const Icon(Icons.menu_book_outlined,
                        color: Color(0xFF959898)),
                  ),

                  const Icon(Icons.map_outlined,
                      color: Color(0xFF959898)),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => RewardPage(),
                        ),
                      );
                    },
                    child: const Icon(Icons.emoji_events_outlined,
                        color: Color(0xFF959898)),
                  ),

                  const CircleAvatar(
                    backgroundColor: Color(0xFFFFA726),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),
            ),
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
      width: 250,
      height: 120,

      decoration: BoxDecoration(
        color: const Color(0xFF71C1E6),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0,4),
          )
        ],
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
  final VoidCallback? onTap;

  const ProfileMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context){

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),

      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF5FA1BF)),

        title: Text(title),

        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 12),
        ),

        trailing: const Icon(Icons.arrow_forward_ios, size: 16),

        onTap: onTap,
      ),
    );
  }
}