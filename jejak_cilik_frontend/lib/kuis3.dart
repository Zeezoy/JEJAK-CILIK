import 'package:flutter/material.dart';
import 'package:jejak_cilik/kuis2.dart';
import 'package:jejak_cilik/minimission.dart';

class Kuis3 extends StatefulWidget {
  const Kuis3({super.key});

  @override
  State<Kuis3> createState() => _Kuis3State();
}

class _Kuis3State extends State<Kuis3> {
  int currentQuestion = 9;
  int? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(126, 214, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 60),

              const Text(
                "Misi 1\nPerbedaan Keyakinan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(76, 128, 153, 1),
                ),
              ),

              const SizedBox(height: 20),

              /// NOMOR SOAL
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(10, (index) {
                  bool active = index == currentQuestion;

                  return Container(
                    width: 32,
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: active
                          ? const Color.fromRGBO(255, 167, 38, 1)
                          : Colors.grey[200],
                    ),
                    child: Text(
                      "${index + 1}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: active ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 30),

              /// QUESTION
              Container(
                height: 140,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF79E1B),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Image.asset("assets/misi/penguin3.png", width: 80),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Beberapa teman terlihat bingung dan mulai berbisik, apa yang harus kamu lakukan?",
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'NunitoSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// JAWABAN (SCROLL)
              Expanded(
                child: ListView(
                  children: [
                    answerButton("A", "Ikut bercanda agar dianggap lucu", 1),
                    const SizedBox(height: 16),

                    answerButton("B", "Diam saja", 2),
                    const SizedBox(height: 16),

                    answerButton(
                      "C",
                      "Mengingatkan teman agar tidak bercanda seperti itu",
                      3,
                    ),
                    const SizedBox(height: 16),

                    answerButton("D", "Menjauh tanpa mengatakan apa-apa", 4),
                  ],
                ),
              ),

              /// NEXT BUTTON
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// BACKWARD BUTTON
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Kuis2(),
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
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    /// FORWARD BUTTON
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MiniMission(),
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
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// ANSWER BUTTON
  Widget answerButton(String letter, String text, int index) {
    bool isSelected = selectedAnswer == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAnswer = index;
        });
      },
      child: Container(
        width: 373,
        height: 104,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              left: 208,
              child: Image.asset('assets/misi/ellipse3549.png', width: 134),
            ),

            Positioned(
              top: 72,
              left: 49,
              child: Image.asset('assets/misi/ellipse3574.png', width: 51),
            ),

            /// ISI CARD
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundColor: const Color(0xFFF79E1B),
                      child: Text(
                        letter,
                        style: const TextStyle(
                          fontFamily: 'NunitoSans',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// BORDER
            if (isSelected)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: const Color(0xFFF79E1B),
                      width: 3,
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
