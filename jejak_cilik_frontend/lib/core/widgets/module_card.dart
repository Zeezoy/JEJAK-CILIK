import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class ModuleCard extends StatelessWidget{
  final String image;
  final String title;
  final bool isFree;
  final String? price;
  final VoidCallback ? onTap;

  const ModuleCard({
    super.key,
    required this.image,
    required this.title,
    this.isFree = true,
    this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context){

    return GestureDetector(
      onTap: onTap,
      
      child: Container(
      width: 170,
      
      decoration: BoxDecoration(
        color: const Color(0xFFFFE0B2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.secondary,
          width: 2,
          ),
      ),

      child: Column(
        children: [

          Stack(
            children: [

              ClipRRect(
                borderRadius: 
                  const BorderRadius.vertical(
                    top: Radius.circular(18),
                  ),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),

              if(isFree)
              Positioned(
                right: 0,
                child: Container(
                  padding: 
                    const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: 
                        BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                        ),
                    ),
                    child: const Text(
                      "Free",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight:  FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                if(!isFree && price != null)
                  Positioned(
                    right: 10,
                    child: Container(
                      padding: 
                         const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.only(
                          bottomLeft:
                              Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        price!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 8),
 
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6),

                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Lihat Modul",
                  style: TextStyle(
                color: Colors.white,
                fontFamily: "NunitoSans",
              ),
            ),
          ),

          const SizedBox(height: 6),

          Text (
            title,
            style: const TextStyle(
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),      
      ),
    );  
  }
}