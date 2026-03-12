import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class ContinueMissionCard extends StatelessWidget{
  const ContinueMissionCard({super.key});

  @override
  Widget build(BuildContext context){

    return Container(
      height: 150,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE0B2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.secondary, width: 2),
    ),

    child: Stack(
      children: [

        Positioned(
          right: -10,
          top: -10,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 6,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFE74C3C),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topRight: Radius.circular(20),
              ),
            ),
            child: const Text(
              "",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),

        Row(children: [
          Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "Menghargai\nPerbedaan",
                style: AppTextStyles.subheading,
              ),
              const Spacer(),

              Container(padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                "Lanjutkan",
                style: AppTextStyles.button,
              ),
            )
          ],
        ),
      ),

       Image.asset(
          "assets/lanjutkanModul.png",
          width: 100,
              ),
            ]
          )
        ],
      ),
    );
  }
}