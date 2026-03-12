import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'module_card.dart';

class ModuleCarousel extends StatefulWidget {
  const ModuleCarousel({super.key});

  @override
  State<ModuleCarousel> createState() => _ModuleCarouselState();
}

class _ModuleCarouselState extends State<ModuleCarousel> {

  int currentIndex = 0;

  final PageController controller =
      PageController(viewportFraction: 0.65);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        SizedBox(
          height: 220,

          child: PageView(
            controller: controller,

            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },

            children: const [

              ModuleCard(
                image: "assets/menghargai.png",
                title: "Menghargai Perbedaan",
              ),

              ModuleCard(
                image: "assets/peduli.png",
                title: "Peduli Sesama",
              ),

            ],
          ),
        ),

        const SizedBox(height: 8),

        /// DOT INDICATOR
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            2,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),

              width: currentIndex == index ? 10 : 6,
              height: currentIndex == index ? 10 : 6,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == index
                    ? AppColors.secondary
                    : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}