import 'package:flutter/material.dart';
class ProfileMenu extends StatelessWidget{

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

    //     SizedBox(
    //   height: 120,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     padding: const EdgeInsets.symmetric(horizontal: 20),
    //     children: const [

    //       CertificateCard(),
    //       SizedBox(width: 12),

    //       CertificateCard(),
    //       SizedBox(width: 12),

    //       CertificateCard(),

    //     ],
    //   ),
    // ),
    
    return ListTile(

       leading: Icon(icon, color: const Color(0xFF5FA1BF)),

       title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF5FA1BF),
            fontWeight: FontWeight.w700,
          ),
        ),
       
       subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Color(0xFFABABAB),
          ),
        ),


       trailing: const Icon(Icons.arrow_forward_ios, size: 16),

       onTap: onTap,
    );
  }
}