import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class SearchBarWidgets extends StatelessWidget{
  const SearchBarWidgets({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 8),
          Text(
            "Temukan modul favoritmu disini!",
            style: TextStyle(
              fontFamily: "NunitoSans",
              fontWeight: FontWeight.w800,
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

}
