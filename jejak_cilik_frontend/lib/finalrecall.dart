import 'package:flutter/material.dart';
import 'package:jejak_cilik/kuis2.dart';

class FinalRecall extends StatefulWidget {
  const FinalRecall({super.key});

  @override
  State<FinalRecall> createState() => _FinalRecallState();
}

class _FinalRecallState extends State<FinalRecall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 214, 255, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child:
                      /// KARTU
                      Image.asset("assets/misi/cardfinal.png", width: 374),
                ),

                const SizedBox(height: 40),

                /// TOMBOL FLIP
                SizedBox(height: 50),
              ],
            ),

            Positioned(
              bottom: 100,
              right: 70,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Kuis2()),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 100,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinalRecall2(),
                    ),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
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

class FinalRecall2 extends StatefulWidget {
  const FinalRecall2({super.key});

  @override
  State<FinalRecall2> createState() => _FinalRecall2State();
}

class _FinalRecall2State extends State<FinalRecall2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 214, 255, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child:
                      /// KARTU
                      Image.asset("assets/misi/cardfinal2.png", width: 374),
                ),

                const SizedBox(height: 40),

                /// TOMBOL FLIP
                SizedBox(height: 50),
              ],
            ),

            Positioned(
              bottom: 100,
              right: 70,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinalRecall(),
                    ),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 100,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinalRecall3(),
                    ),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
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

class FinalRecall3 extends StatefulWidget {
  const FinalRecall3({super.key});

  @override
  State<FinalRecall3> createState() => _FinalRecall3State();
}

class _FinalRecall3State extends State<FinalRecall3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 214, 255, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child:
                      /// KARTU
                      Image.asset("assets/misi/cardfinal3.png", width: 374),
                ),

                const SizedBox(height: 40),

                /// TOMBOL FLIP
                SizedBox(height: 50),
              ],
            ),

            Positioned(
              bottom: 100,
              right: 70,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinalRecall2(),
                    ),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 100,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinalRecall4(),
                    ),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
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

class FinalRecall4 extends StatefulWidget {
  const FinalRecall4({super.key});

  @override
  State<FinalRecall4> createState() => _FinalRecall4State();
}

class _FinalRecall4State extends State<FinalRecall4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 214, 255, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child:
                      /// KARTU
                      Image.asset("assets/misi/cardfinal4.png", width: 374),
                ),

                const SizedBox(height: 40),

                /// TOMBOL FLIP
                SizedBox(height: 50),
              ],
            ),

            Positioned(
              bottom: 100,
              right: 70,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinalRecall3(),
                    ),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 100,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinalRecall5(),
                    ),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
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

class FinalRecall5 extends StatefulWidget {
  const FinalRecall5({super.key});

  @override
  State<FinalRecall5> createState() => _FinalRecall5State();
}

class _FinalRecall5State extends State<FinalRecall5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 214, 255, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child:
                      /// KARTU
                      Image.asset("assets/misi/cardfinal5.png", width: 374),
                ),

                const SizedBox(height: 40),

                /// TOMBOL FLIP
                SizedBox(height: 50),
              ],
            ),

            Positioned(
              bottom: 100,
              right: 70,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinalRecall4(),
                    ),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 100,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Kuis2()),
                  );
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF79E1B),
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 111, 71, 10),
                        width: 4,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
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
