import 'dart:math';
import 'package:flutter/material.dart';
import 'kuis2.dart';

class Recall extends StatefulWidget {
  const Recall({super.key});

  @override
  State<Recall> createState() => _RecallState();
}

class _RecallState extends State<Recall> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  void flipCard() {
    if (controller.status == AnimationStatus.completed) {
      controller.reverse();
    } else {
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 214, 255, 1),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// KARTU
              Center(
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    final angle = controller.value * pi;

                    return Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(angle),
                      child: angle <= pi / 2
                          ? Image.asset(
                              "assets/misi/card1front.png",
                              width: 374,
                            )
                          : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(pi),
                              child: Image.asset(
                                "assets/misi/card1back.png",
                                width: 374,
                              ),
                            ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 40),

              /// TOMBOL FLIP
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 324,
                    height: 39,
                    child: ElevatedButton(
                      onPressed: () {
                        flipCard();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(249, 255, 167, 38),
                        side: BorderSide(
                          color: Color.fromARGB(249, 255, 167, 38),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const Icon(
                        Icons.repeat,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50),
            ],
          ),

          Positioned(
            top: 40,
            left: 20,
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
            bottom: 20,
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
    );
  }
}

class Recall2 extends StatefulWidget {
  const Recall2({super.key});

  @override
  State<Recall2> createState() => _Recall2State();
}

class _Recall2State extends State<Recall2> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  void flipCard() {
    if (controller.status == AnimationStatus.completed) {
      controller.reverse();
    } else {
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(126, 214, 255, 1),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// KARTU
              Center(
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    final angle = controller.value * pi;

                    return Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(angle),
                      child: angle <= pi / 2
                          ? Image.asset(
                              "assets/misi/card2front.png",
                              width: 374,
                            )
                          : Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(pi),
                              child: Image.asset(
                                "assets/misi/card2back.png",
                                width: 374,
                              ),
                            ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 40),

              /// TOMBOL FLIP
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 324,
                    height: 39,
                    child: ElevatedButton(
                      onPressed: () {
                        flipCard();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(249, 255, 167, 38),
                        side: BorderSide(
                          color: Color.fromARGB(249, 255, 167, 38),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const Icon(
                        Icons.repeat,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 324,
                    height: 39,
                    child: ElevatedButton(
                      onPressed: () {
                        flipCard();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(249, 255, 167, 38),
                        side: BorderSide(
                          color: Color.fromARGB(249, 255, 167, 38),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        "Selesai",
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50),
            ],
          ),

          Positioned(
            top: 40,
            left: 20,
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
            bottom: 20,
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
    );
  }
}
