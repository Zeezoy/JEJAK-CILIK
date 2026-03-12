// import 'package:flutter/material.dart';

// class MiniMission extends StatelessWidget {
//   const MiniMission({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//       body: SafeArea(
//         child: Stack(
//           children: [
//             /// HEADER
//             Positioned(
//               top: 50,
//               left: 20,
//               right: 20,
//               child: Image.asset('assets/misi/header.png'),
//             ),

//             /// TITLE
//             const Positioned(
//               top: 160,
//               left: 0,
//               right: 0,
//               child: Center(
//                 child: Text(
//                   "Submodul 1: Perbedaan Keyakinan",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Color.fromRGBO(76, 128, 153, 1),
//                     fontFamily: 'NunitoSans',
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),

//             Positioned(
//               bottom: 160,
//               right: 0,
//               child: Image.asset("assets/misi/elipscewe.png", width: 181),
//             ),

//             Positioned(
//               bottom: 200,
//               right: 30,
//               child: Image.asset("assets/misi/penguincewe.png", width: 110),
//             ),

//             Positioned(
//               top: 260,
//               left: -10,
//               child: Image.asset("assets/misi/elipscowo.png", width: 233),
//             ),

//             Positioned(
//               top: 300,
//               left: 40,
//               child: Image.asset("assets/misi/penguincowo.png", width: 135),
//             ),

//             /// LEVEL 1
//             Positioned(
//               top: 200,
//               left: MediaQuery.of(context).size.width / 2 - 35,
//               child: levelButton(active: true),
//             ),

//             /// LEVEL 2
//             Positioned(top: 280, right: 100, child: levelButton()),

//             /// LEVEL 3
//             Positioned(top: 360, right: 60, child: levelButton()),

//             /// LEVEL 4
//             Positioned(top: 440, right: 100, child: recallButton()),

//             /// LEVEL 5
//             Positioned(top: 520, right: 170, child: levelButton()),

//             /// LEVEL 5
//             Positioned(top: 600, right: 220, child: levelButton()),

//             /// LEVEL 6 (REFRESH ICON)
//             Positioned(top: 680, right: 180, child: recallButton()),

//             /// CHEST
//             Positioned(top: 780, right: 150, child: karun()),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget levelButton({
//     bool active = false,
//     IconData? icon,
//     VoidCallback? onPressed,
//   }) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: SizedBox(
//         width: 78,
//         height: 70, // ditambah supaya outline bawah kelihatan
//         child: Stack(
//           alignment: Alignment.topCenter,
//           children: [
//             /// OUTLINE BAWAH
//             Positioned(
//               bottom: 0,
//               child: ClipOval(
//                 child: Container(
//                   width: 78,
//                   height: 64,
//                   color: active ? Color.fromRGBO(255, 167, 38, 1) : Colors.grey,
//                 ),
//               ),
//             ),

//             /// TOMBOL UTAMA
//             ClipOval(
//               child: Container(
//                 width: 78,
//                 height: 60, // lebih kecil supaya outline bawah terlihat
//                 color: active
//                     ? Color.fromRGBO(255, 228, 188, 1)
//                     : const Color(0xFFD5D8DC),
//                 alignment: Alignment.center,
//                 child: Image.asset(
//                   active
//                       ? "assets/misi/bintang.png"
//                       : "assets/misi/bintangabu.png",
//                   width: 36,
//                   height: 36,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget recallButton({
//     bool active = false,
//     IconData? icon,
//     VoidCallback? onPressed,
//   }) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: SizedBox(
//         width: 78,
//         height: 70, // ditambah supaya outline bawah kelihatan
//         child: Stack(
//           alignment: Alignment.topCenter,
//           children: [
//             /// OUTLINE BAWAH
//             Positioned(
//               bottom: 0,
//               child: ClipOval(
//                 child: Container(
//                   width: 78,
//                   height: 64,
//                   color: active ? Color.fromRGBO(255, 167, 38, 1) : Colors.grey,
//                 ),
//               ),
//             ),

//             /// TOMBOL UTAMA
//             ClipOval(
//               child: Container(
//                 width: 78,
//                 height: 60, // lebih kecil supaya outline bawah terlihat
//                 color: active
//                     ? Color.fromRGBO(255, 228, 188, 1)
//                     : const Color(0xFFD5D8DC),
//                 alignment: Alignment.center,
//                 child: Image.asset(
//                   active
//                       ? "assets/misi/replay.png"
//                       : "assets/misi/replayabu.png",
//                   width: 36,
//                   height: 36,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget karun({bool active = false, VoidCallback? onPressed}) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Image.asset(
//         active ? "assets/misi/hartakarun.png" : "assets/misi/hartakarunabu.png",
//         width: 89,
//         height: 69,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MiniMission extends StatefulWidget {
  const MiniMission({super.key});

  @override
  State<MiniMission> createState() => _MiniMissionState();
}

class _MiniMissionState extends State<MiniMission> {
  int levelSelesai = 0;

  bool isActive(int level) {
    return level <= levelSelesai + 1;
  }

  void selesaiLevel(int level) {
    setState(() {
      if (level > levelSelesai) {
        levelSelesai = level;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Stack(
          children: [
            /// HEADER
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Image.asset('assets/misi/header.png'),
            ),

            /// TITLE
            const Positioned(
              top: 160,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Submodul 1: Perbedaan Keyakinan",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(76, 128, 153, 1),
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            /// CHARACTER
            Positioned(
              bottom: 160,
              right: 0,
              child: Image.asset("assets/misi/elipscewe.png", width: 181),
            ),

            Positioned(
              bottom: 200,
              right: 30,
              child: Image.asset("assets/misi/penguincewe.png", width: 110),
            ),

            Positioned(
              top: 260,
              left: -10,
              child: Image.asset("assets/misi/elipscowo.png", width: 233),
            ),

            Positioned(
              top: 300,
              left: 40,
              child: Image.asset("assets/misi/penguincowo.png", width: 135),
            ),

            /// LEVEL 1
            Positioned(
              top: 200,
              left: MediaQuery.of(context).size.width / 2 - 35,
              child: levelButton(
                active: isActive(1),
                onPressed: () => selesaiLevel(1),
              ),
            ),

            /// LEVEL 2
            Positioned(
              top: 280,
              right: 100,
              child: levelButton(
                active: isActive(2),
                onPressed: () => selesaiLevel(2),
              ),
            ),

            /// LEVEL 3
            Positioned(
              top: 360,
              right: 60,
              child: levelButton(
                active: isActive(3),
                onPressed: () => selesaiLevel(3),
              ),
            ),

            /// RECALL
            Positioned(
              top: 440,
              right: 100,
              child: recallButton(
                active: isActive(4),
                onPressed: () => selesaiLevel(4),
              ),
            ),

            /// LEVEL 5
            Positioned(
              top: 520,
              right: 170,
              child: levelButton(
                active: isActive(5),
                onPressed: () => selesaiLevel(5),
              ),
            ),

            /// LEVEL 6
            Positioned(
              top: 600,
              right: 220,
              child: levelButton(
                active: isActive(6),
                onPressed: () => selesaiLevel(6),
              ),
            ),

            /// RECALL 2
            Positioned(
              top: 680,
              right: 180,
              child: recallButton(
                active: isActive(7),
                onPressed: () => selesaiLevel(7),
              ),
            ),

            /// CHEST
            Positioned(
              top: 780,
              right: 150,
              child: karun(
                active: isActive(8),
                onPressed: () => selesaiLevel(8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// LEVEL BUTTON
  Widget levelButton({bool active = false, VoidCallback? onPressed}) {
    return GestureDetector(
      onTap: active ? onPressed : null,
      child: SizedBox(
        width: 78,
        height: 70,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 0,
              child: ClipOval(
                child: Container(
                  width: 78,
                  height: 64,
                  color: active
                      ? const Color.fromRGBO(255, 167, 38, 1)
                      : Colors.grey,
                ),
              ),
            ),
            ClipOval(
              child: Container(
                width: 78,
                height: 60,
                color: active
                    ? const Color.fromRGBO(255, 228, 188, 1)
                    : const Color(0xFFD5D8DC),
                alignment: Alignment.center,
                child: Image.asset(
                  active
                      ? "assets/misi/bintang.png"
                      : "assets/misi/bintangabu.png",
                  width: 36,
                  height: 36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// RECALL BUTTON
  Widget recallButton({bool active = false, VoidCallback? onPressed}) {
    return GestureDetector(
      onTap: active ? onPressed : null,
      child: SizedBox(
        width: 78,
        height: 70,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 0,
              child: ClipOval(
                child: Container(
                  width: 78,
                  height: 64,
                  color: active
                      ? const Color.fromRGBO(255, 167, 38, 1)
                      : Colors.grey,
                ),
              ),
            ),
            ClipOval(
              child: Container(
                width: 78,
                height: 60,
                color: active
                    ? const Color.fromRGBO(255, 228, 188, 1)
                    : const Color(0xFFD5D8DC),
                alignment: Alignment.center,
                child: Image.asset(
                  active
                      ? "assets/misi/replay.png"
                      : "assets/misi/replayabu.png",
                  width: 36,
                  height: 36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// CHEST
  Widget karun({bool active = false, VoidCallback? onPressed}) {
    return GestureDetector(
      onTap: active ? onPressed : null,
      child: Image.asset(
        active ? "assets/misi/hartakarun.png" : "assets/misi/hartakarunabu.png",
        width: 89,
        height: 69,
      ),
    );
  }
}
