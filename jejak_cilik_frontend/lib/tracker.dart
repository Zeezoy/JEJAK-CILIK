import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:jejak_cilik/album.dart';
import 'package:jejak_cilik/submodul.dart';

class Tracker extends StatefulWidget {
  const Tracker({super.key});

  @override
  State<Tracker> createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  bool isExpanded = false;
  int selectedIndex = 2;

  Widget navItem(IconData icon, String label, int index) {
    bool isActive = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });

        switch (index) {
          // case 0:
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (_) => const HomePage()),
          //   );
          //   break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SubModul()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Tracker()),
            );
            break;
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Album()),
            );
            break;
        }
        ;
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(
          horizontal: isActive ? 14 : 0,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: isActive
              ? Color.fromARGB(249, 255, 167, 38)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isActive
                  ? Colors.white
                  : Color.fromARGB(254, 149, 152, 152),
            ),
            if (isActive) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(215, 242, 255, 1),

      bottomNavigationBar: Container(
        height: 64,
        width: 372,
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color.fromARGB(249, 242, 251, 255),
          borderRadius: BorderRadius.circular(1000),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navItem(Icons.home_outlined, "Home", 0),
            navItem(Icons.menu_book_outlined, "Modul", 1),
            navItem(Icons.emoji_events_outlined, "Tracker", 2),
            navItem(Icons.collections_outlined, "Album", 3),
            navItem(Icons.account_circle_outlined, "Profile", 4),
          ],
        ),
      ),

      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -0.1,
              left: 1.5,
              child: Image.asset('assets/track/ellipse_3555.png', width: 108),
            ),

            Positioned(
              top: 0,
              left: 330,
              child: Image.asset('assets/track/ellipse_3556.png', width: 108),
            ),

            Positioned(
              top: 154,
              left: 0,
              child: Image.asset('assets/track/ellipse_3558.png', width: 125),
            ),

            Positioned(
              top: 109,
              left: 155,
              child: Image.asset('assets/track/ellipse_3557.png', width: 155),
            ),

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),

                    /// CARD PROGRESS
                    AnimatedSize(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                      child: Container(
                        width: 373,
                        padding: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 242, 222, 1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: const Color.fromRGBO(255, 167, 38, 1),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            const Text(
                              "Progress Misi Si Kecil",
                              style: TextStyle(
                                fontFamily: 'NunitoSans',
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(76, 128, 153, 1),
                              ),
                            ),

                            const SizedBox(height: 20),

                            /// GRAFIK
                            Container(
                              height: 180,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: LineChart(
                                  LineChartData(
                                    gridData: FlGridData(
                                      show: true,
                                      horizontalInterval: 2,
                                      verticalInterval: 1,
                                      getDrawingHorizontalLine: (value) {
                                        return FlLine(
                                          color: Colors.grey.withOpacity(0.3),
                                          strokeWidth: 1,
                                        );
                                      },
                                      getDrawingVerticalLine: (value) {
                                        return FlLine(
                                          color: Colors.grey.withOpacity(0.3),
                                          strokeWidth: 1,
                                        );
                                      },
                                    ),
                                    borderData: FlBorderData(show: false),
                                    titlesData: FlTitlesData(
                                      leftTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          interval: 10,
                                        ),
                                      ),
                                      bottomTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: true,
                                          interval: 1,
                                          getTitlesWidget: (value, meta) {
                                            const days = [
                                              'S',
                                              'M',
                                              'T',
                                              'W',
                                              'T',
                                              'F',
                                              'S',
                                            ];
                                            if (value % 1 != 0) {
                                              return const SizedBox();
                                            }
                                            if (value.toInt() >= 0 &&
                                                value.toInt() < days.length) {
                                              return Text(
                                                days[value.toInt()],
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                ),
                                              );
                                            }
                                            return const SizedBox();
                                          },
                                        ),
                                      ),
                                      rightTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: false,
                                        ),
                                      ),
                                      topTitles: AxisTitles(
                                        sideTitles: SideTitles(
                                          showTitles: false,
                                        ),
                                      ),
                                    ),
                                    lineBarsData: [
                                      LineChartBarData(
                                        isCurved: true,
                                        barWidth: 3,
                                        dotData: FlDotData(show: true),
                                        spots: const [
                                          FlSpot(0, 2),
                                          FlSpot(1, 4),
                                          FlSpot(2, 3),
                                          FlSpot(3, 5),
                                          FlSpot(4, 4),
                                          FlSpot(5, 6),
                                          FlSpot(6, 7),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            /// BUTTON
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF8ED1F0),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Yuk cari tau perkembangan anak disini!",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'NunitoSans',
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Icon(
                                      isExpanded
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            if (isExpanded)
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  15,
                                  20,
                                  0,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Text(
                                    "Si Kecil menunjukkan peningkatan dalam\nmenyelesaikan misi untuk modul\nmenghargai perbedaan. Teruskan latihan ini\nagar kebiasaan baiknya semakin kuat!",
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// STREAK BOX
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [_streakBox(), _streakBox()],
                    ),

                    const SizedBox(height: 25),

                    /// CALENDAR CARD
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          /// MONTH HEADER
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.chevron_left),
                              Text(
                                "Februari 2025",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'NunitoSans',
                                ),
                              ),
                              Icon(Icons.chevron_right),
                            ],
                          ),

                          const SizedBox(height: 20),

                          /// DAYS HEADER
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "M",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NunitoSans',
                                  color: Color.fromRGBO(126, 214, 255, 1),
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "S",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NunitoSans',
                                  color: Color.fromRGBO(126, 214, 255, 1),
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "S",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NunitoSans',
                                  color: Color.fromRGBO(126, 214, 255, 1),
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "R",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NunitoSans',
                                  color: Color.fromRGBO(126, 214, 255, 1),
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "K",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NunitoSans',
                                  color: Color.fromRGBO(126, 214, 255, 1),
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "J",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NunitoSans',
                                  color: Color.fromRGBO(126, 214, 255, 1),
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "S",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NunitoSans',
                                  color: Color.fromRGBO(126, 214, 255, 1),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 15),

                          /// GRID TANGGAL
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 35,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                ),
                            itemBuilder: (context, index) {
                              /// TANGGAL BULAN SEBELUMNYA (27–31)
                              if (index < 5) {
                                int prevDay = 27 + index;
                                return Center(
                                  child: Text(
                                    "$prevDay",
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                );
                              }

                              int day = index - 4;

                              /// TANGGAL FEBRUARI
                              if (day <= 28) {
                                /// HIGHLIGHT 1–4
                                if (day >= 1 && day <= 4) {
                                  BorderRadius radius = BorderRadius.zero;

                                  if (day == 1) {
                                    radius = const BorderRadius.horizontal(
                                      left: Radius.circular(10),
                                    );
                                  } else if (day == 4) {
                                    radius = const BorderRadius.horizontal(
                                      right: Radius.circular(10),
                                    );
                                  }

                                  return Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 12,
                                          decoration: BoxDecoration(
                                            color: Colors.orange.withOpacity(
                                              0.5,
                                            ),
                                            borderRadius: radius,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "$day",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  );
                                }

                                /// API DI HARI 5
                                if (day == 5) {
                                  return const Center(
                                    child: Icon(
                                      Icons.local_fire_department,
                                      color: Colors.orange,
                                    ),
                                  );
                                }

                                return Center(child: Text("$day"));
                              }

                              /// BULAN BERIKUTNYA
                              int nextDay = day - 28;

                              return Center(
                                child: Text(
                                  "$nextDay",
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _streakBox() {
    return Container(
      width: 177,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(248, 254, 254, 1),
      ),
      child: Column(
        children: [
          /// BAGIAN BIRU
          Container(
            height: 58,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(126, 214, 255, 1),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: const Center(
              child: Text(
                "Streak",
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          /// BAGIAN PUTIH
          Container(
            height: 58,
            alignment: Alignment.center,
            child: const Text(
              "5",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                fontFamily: 'NunitoSans',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
