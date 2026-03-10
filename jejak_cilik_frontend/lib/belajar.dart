import 'package:flutter/material.dart';
import 'package:jejak_cilik/submodul.dart';

class Belajar extends StatelessWidget {
  const Belajar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F6),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/belajar/makan1.png",
              width: double.infinity,
              height: 722,
              fit: BoxFit.cover,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0.7),
                      Colors.white,
                    ],
                    stops: const [0.0, 0.2, 0.5],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 22,
              left: 16,
              child: Row(
                children: [
                  /// BACK BUTTON
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      border: const Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(255, 111, 71, 10),
                          width: 4,
                        ),
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SubModul(),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 30),

                  /// PROGRESS IMAGE
                  Image.asset('assets/belajar/framebar11.png'),
                ],
              ),
            ),

            Positioned(
              bottom: 100,
              left: 15,
              right: 15,
              child: Column(
                children: const [
                  Text(
                    "Perbedaan Keyakinan",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'NunitoSans',
                      color: Color.fromRGBO(87, 89, 89, 1),
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Makan Bersama",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'MochiBoom',
                      //fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(44, 75, 89, 1),
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Suatu hari di sekolah, Ciko, Ciki, dan teman-temannya bersiap untuk makan siang bersama.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  SizedBox(height: 16),

                  Text(
                    "Sebelum makan, beberapa teman berdoa terlebih dahulu. Ciko melihat bahwa Rafi berdoa dengan cara yang berbeda dari dirinya.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 30,
              right: 24,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 111, 71, 10),
                      width: 4,
                    ),
                  ),
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(10),
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Belajar2()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Belajar2 extends StatelessWidget {
  const Belajar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F6),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/belajar/makan2.png",
              width: double.infinity,
              height: 722,
              fit: BoxFit.cover,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0.7),
                      Colors.white,
                    ],
                    stops: const [0.0, 0.2, 0.5],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 35,
              left: 16,
              child: Row(
                children: [
                  /// BACK BUTTON
                  const SizedBox(width: 80),

                  /// PROGRESS IMAGE
                  Image.asset('assets/belajar/framebar22.png'),
                ],
              ),
            ),

            Positioned(
              bottom: 100,
              left: 15,
              right: 15,
              child: Column(
                children: const [
                  // Text(
                  //   "Perbedaan Keyakinan",
                  //   style: TextStyle(
                  //     fontSize: 16,
                  //     fontFamily: 'NunitoSans',
                  //     color: Color.fromRGBO(87, 89, 89, 1),
                  //     fontWeight: FontWeight.w800,
                  //   ),
                  // ),

                  // SizedBox(height: 8),

                  // Text(
                  //   "Makan Bersama",
                  //   style: TextStyle(
                  //     fontSize: 40,
                  //     fontFamily: 'MochiBoom',
                  //     //fontWeight: FontWeight.w400,
                  //     color: Color.fromRGBO(44, 75, 89, 1),
                  //   ),
                  // ),
                  SizedBox(height: 20),

                  Text(
                    "Ciko merasa penasaran lalu bertanya dengan sopan,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  //SizedBox(height: 16),
                  Text(
                    "“Rafi, kenapa cara berdoamu berbeda?”",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                      backgroundColor: Color.fromRGBO(215, 242, 255, 1),
                    ),
                  ),

                  SizedBox(height: 16),

                  Text(
                    "Rafi tersenyum dan menjawab",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Text(
                    "“Karena setiap orang berdoa sesuai dengan keyakinannya.”",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                      backgroundColor: Color.fromRGBO(215, 242, 255, 1),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 30,
              right: 24,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 111, 71, 10),
                      width: 4,
                    ),
                  ),
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(10),
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Belajar3()),
                    );
                  },
                ),
              ),
            ),

            Positioned(
              bottom: 30,
              right: 74,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 111, 71, 10),
                      width: 4,
                    ),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Belajar()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Belajar3 extends StatelessWidget {
  const Belajar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F6),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/belajar/makan3.png",
              width: double.infinity,
              height: 722,
              fit: BoxFit.cover,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0.7),
                      Colors.white,
                    ],
                    stops: const [0.0, 0.2, 0.5],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 35,
              left: 16,
              child: Row(
                children: [
                  /// BACK BUTTON
                  const SizedBox(width: 80),

                  /// PROGRESS IMAGE
                  Image.asset('assets/belajar/framebar33.png'),
                ],
              ),
            ),

            Positioned(
              bottom: 130,
              left: 15,
              right: 15,
              child: Column(
                children: const [
                  SizedBox(height: 20),

                  Text(
                    "Ciki berkata,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  //SizedBox(height: 16),
                  Text(
                    "“Walaupun cara kita berbeda, kita tetap harus saling menghargai.”",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                      backgroundColor: Color.fromRGBO(215, 242, 255, 1),
                    ),
                  ),

                  SizedBox(height: 16),

                  Text(
                    "Ciko mengangguk dan berkata,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Text(
                    "“Benar! Yang penting kita tetap berteman dan saling menghormati.”",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                      backgroundColor: Color.fromRGBO(215, 242, 255, 1),
                    ),
                  ),

                  SizedBox(height: 16),

                  Text(
                    "Sejak saat itu, mereka memahami bahwa setiap orang bisa memiliki cara berdoa yang berbeda.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(31, 31, 31, 1),
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 30,
              right: 24,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 111, 71, 10),
                      width: 4,
                    ),
                  ),
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(10),
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Belajar4()),
                    );
                  },
                ),
              ),
            ),

            Positioned(
              bottom: 30,
              right: 74,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 111, 71, 10),
                      width: 4,
                    ),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Belajar2()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Belajar4 extends StatelessWidget {
  const Belajar4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F6),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/belajar/makan4.png",
              width: double.infinity,
              height: 416,
              fit: BoxFit.cover,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 600,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0.7),
                      Colors.white,
                    ],
                    stops: const [0.0, 0.05, 0.1],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 35,
              left: 16,
              child: Row(
                children: [
                  /// BACK BUTTON
                  const SizedBox(width: 80),

                  /// PROGRESS IMAGE
                  Image.asset('assets/belajar/framebar44.png'),
                ],
              ),
            ),

            Positioned(
              bottom: 160,
              left: 15,
              right: 15,
              child: Column(
                children: [
                  SizedBox(height: 20),

                  Text(
                    "Perbedaan Keyakinan",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'NunitoSans',
                      color: Color.fromRGBO(87, 89, 89, 1),
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Makan Bersama",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'MochiBoom',
                      //fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(44, 75, 89, 1),
                    ),
                  ),

                  SizedBox(height: 20),

                  Image.asset('assets/belajar/kolommakan.png'),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SubModul(),
                        ),
                      );
                    },
                    child: const Text(
                      "Selesai",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
}
