import 'package:flutter/material.dart';
import 'signin5.dart';

class Signin4 extends StatefulWidget {
  const Signin4({super.key});

  @override
  State<Signin4> createState() => _Signin4State();
}

class _Signin4State extends State<Signin4> {
  String? selectedDay = "28";
  String? selectedMonth = "02";
  String? selectedYear = "2016";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 22,
              left: 16,
              child: Row(
                children: [
                  /// BACK BUTTON
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                      border: const Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(255, 111, 71, 10),
                          width: 2,
                        ),
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  const SizedBox(width: 30), // jarak button ke image
                  /// IMAGE DI KANAN BUTTON
                  Image.asset('assets/framebar2.png'),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// TITLE
                  const SizedBox(height: 73),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Kapan Sikecil Lahir?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 36,
                        color: Color(0xFF4C8099),
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 64),

                  /// DROPDOWN ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDropdown(
                        "Tanggal",
                        selectedDay,
                        List.generate(31, (i) => "${i + 1}"),
                        (val) => setState(() => selectedDay = val),
                        width: 79,
                        height: 83,
                      ),
                      _buildDropdown(
                        "Bulan",
                        selectedMonth,
                        List.generate(12, (i) => "${i + 1}".padLeft(2, '0')),
                        (val) => setState(() => selectedMonth = val),
                        width: 79,
                        height: 83,
                      ),
                      _buildDropdown(
                        "Tahun",
                        selectedYear,
                        List.generate(15, (i) => "${2010 + i}"),
                        (val) => setState(() => selectedYear = val),
                        width: 176,
                        height: 83,
                      ),
                    ],
                  ),

                  const SizedBox(height: 64),

                  /// PENGUIN IMAGE
                  Image.asset("assets/penguin5.png", width: 191),
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: SizedBox(
                height: 55,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: const Border(
                      top: BorderSide(color: Color(0xFF6F470A), width: 2),
                      left: BorderSide(color: Color(0xFF6F470A), width: 2),
                      right: BorderSide(color: Color(0xFF6F470A), width: 2),
                      bottom: BorderSide(color: Color(0xFF6F470A), width: 4),
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Signin5(),
                        ),
                      );
                    },
                    child: const Text(
                      "Selanjutnya",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(
    String label,
    String? value,
    List<String> items,
    ValueChanged<String?> onChanged, {
    required double width,
    required double height,
  }) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF4C8099),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 6),

        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: const Color(0xFFD2D3D4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              /// DROPDOWN (TENGAH)
              Center(
                child: DropdownButton<String>(
                  value: value,
                  isExpanded: true,
                  isDense: false,
                  itemHeight: height,
                  underline: const SizedBox(),
                  icon: const SizedBox(),

                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'NunitoSans',
                    color: Color(0xFF4C8099),
                    fontWeight: FontWeight.w600,
                  ),

                  selectedItemBuilder: (context) {
                    return items.map((e) {
                      return Center(
                        child: Text(e, textAlign: TextAlign.center),
                      );
                    }).toList();
                  },

                  items: items
                      .map(
                        (e) => DropdownMenuItem<String>(
                          value: e,
                          child: Center(
                            child: Text(e, textAlign: TextAlign.center),
                          ),
                        ),
                      )
                      .toList(),

                  onChanged: onChanged,
                ),
              ),

              /// ICON PANAH POJOK KANAN ATAS
              const Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 20,
                  color: Color(0xFF4C8099),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
