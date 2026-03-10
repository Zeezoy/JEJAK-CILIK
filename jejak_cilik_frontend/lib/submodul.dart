import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SubModul(),
//     );
//   }
// }

class SubModul extends StatefulWidget {
  const SubModul({super.key});

  @override
  State<SubModul> createState() => _SubModulState();
}

class _SubModulState extends State<SubModul> {
  double progress = 0.0; // ini pokoknya dri 0 - 1
  int selectedIndex = 1;
  bool module3Done = false;
  bool showNotif = false;

  Widget navItem(IconData icon, String label, int index) {
    bool isActive = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
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
  void initState() {
    super.initState();

    // Future.delayed(Duration(seconds: 2), () {
    //   setState(() {
    //     progress = 1.0;
    //     module3Done = true;
    //     showNotif = true;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

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
            /// BACKGROUND
            Container(
              height: 381,
              decoration: const BoxDecoration(
                color: Color.fromARGB(254, 215, 242, 255),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(100),
                ),
              ),
            ),

            /// ELIPS IMAGES
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/modul/elipsataskiri.png', width: 109),
            ),

            Positioned(
              top: 0,
              right: 0,
              child: Image.asset('assets/modul/elipsataskanan.png', width: 68),
            ),

            Positioned(
              top: 154,
              left: 0,
              child: Image.asset('assets/modul/elipskiri.png', width: 125),
            ),

            Positioned(
              top: 109,
              right: 0,
              child: Image.asset('assets/modul/elipskanan.png', width: 155),
            ),

            /// SCROLL CONTENT
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 68),

                  /// TITLE
                  const Text(
                    "Modul\nMenghargai Perbedaan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 28,
                      color: Color.fromARGB(249, 76, 128, 153),
                      fontWeight: FontWeight.w800,
                      // shadows: [
                      //   // Shadow(
                      //   //   offset: Offset(0, 3),
                      //   //   blurRadius: 6,
                      //   //   color: Colors.black38,
                      //   // ),
                      // ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// ini PROGRESS BAR yg diatas ntuh
                  Center(
                    child: SizedBox(
                      width: 373,
                      height: 36,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          /// BACKGROUND BAR (KUNING)
                          Container(
                            width: 373,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(249, 255, 228, 188),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),

                          /// PROGRESS BAR (OREN)
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: 373 * progress,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(249, 255, 167, 38),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),

                          Positioned.fill(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                stepCircle("1", progress >= 0.0),

                                stepCircle("2", progress >= 0.5),

                                stepCircle(
                                  "3",
                                  progress == 1,
                                  isDone: module3Done,
                                  showDot: showNotif,
                                  onTap: () {
                                    if (module3Done) {
                                      setState(() {
                                        showNotif = false;
                                      });
                                      showFullDialog(context);
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),

                          /// STEP INDICATOR
                          // Positioned.fill(
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       /// STEP 1
                          //       Container(
                          //         width: 30,
                          //         height: 30,
                          //         decoration: const BoxDecoration(
                          //           color: Colors.white,
                          //           shape: BoxShape.circle,
                          //         ),
                          //         alignment: Alignment.center,
                          //         child: const Text(
                          //           "1",
                          //           style: TextStyle(
                          //             fontWeight: FontWeight.bold,
                          //             color: Colors.black,
                          //           ),
                          //         ),
                          //       ),

                          //       /// STEP 2
                          //       const Text(
                          //         "2",
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.black,
                          //         ),
                          //       ),

                          //       /// STEP 3
                          //       const Text(
                          //         "3",
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.black,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Center(
                    child: ModuleCard(
                      title: "Perbedaan\nKeyakinan",
                      image: "assets/modul/penguin1.png",
                      imageWidth: 200,
                      locked: false,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: ModuleCard(
                      title: "Perbedaan\nLatar Belakang",
                      image: "assets/modul/penguin2.png",
                      imageWidth: 160,
                      locked: progress < 0.5,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: ModuleCard(
                      title: "Perbedaan\nPendapat",
                      image: "assets/modul/penguin3.png",
                      imageWidth: 200,
                      locked: progress < 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ModuleCard extends StatelessWidget {
  final String title;
  final String image;
  final bool locked;
  final double imageWidth;

  const ModuleCard({
    super.key,
    required this.title,
    required this.image,
    required this.locked,
    required this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: locked
          ? const ColorFilter.matrix([
              0.2126,
              0.7152,
              0.0722,
              0,
              0,
              0.2126,
              0.7152,
              0.0722,
              0,
              0,
              0.2126,
              0.7152,
              0.0722,
              0,
              0,
              0,
              0,
              0,
              1,
              0,
            ])
          : const ColorFilter.mode(Colors.transparent, BlendMode.dst),
      child: SizedBox(
        width: 373,
        height: 167,
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 242, 222),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color.fromARGB(255, 255, 167, 38),
              width: 2,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),

          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              /// ELIPS ATAS
              Positioned(
                top: -35,
                left: -50,
                child: Image.asset(
                  "assets/modul/elipsatasbalok.png",
                  width: 247,
                ),
              ),

              /// ELIPS BAWAH
              Positioned(
                bottom: -20,
                right: -10,
                child: Image.asset(
                  "assets/modul/elipsbawahbalok.png",
                  width: 132,
                ),
              ),

              /// CONTENT
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// IMAGE
                    SizedBox(
                      width: imageWidth,
                      height: 141,
                      // child: ColorFiltered(
                      //   colorFilter: locked
                      //       ? const ColorFilter.matrix([
                      //           0.2126,
                      //           0.7152,
                      //           0.0722,
                      //           0,
                      //           0,
                      //           0.2126,
                      //           0.7152,
                      //           0.0722,
                      //           0,
                      //           0,
                      //           0.2126,
                      //           0.7152,
                      //           0.0722,
                      //           0,
                      //           0,
                      //           0,
                      //           0,
                      //           0,
                      //           1,
                      //           0,
                      //         ])
                      //       : const ColorFilter.mode(
                      //           Colors.transparent,
                      //           BlendMode.dst,
                      //         ),
                      child: Image.asset(
                        image,
                        //height: 150,
                        //width: imageWidth,
                        fit: BoxFit.contain,
                      ),
                      //),
                    ),

                    const SizedBox(width: 15),

                    /// TEXT + BUTTON
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              fontFamily: 'NunitoSans',
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 44, 75, 89),
                            ),
                          ),

                          const SizedBox(height: 12),

                          SizedBox(
                            width: 111,
                            height: 28,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: const Border(
                                  top: BorderSide(
                                    color: Color.fromARGB(255, 204, 134, 30),
                                    width: 2,
                                  ),
                                  left: BorderSide(
                                    color: Color.fromARGB(255, 204, 134, 30),
                                    width: 2,
                                  ),
                                  right: BorderSide(
                                    color: Color.fromARGB(255, 204, 134, 30),
                                    width: 2,
                                  ),
                                  bottom: BorderSide(
                                    color: Color.fromARGB(255, 204, 134, 30),
                                    width: 4,
                                  ),
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: locked
                                      ? Colors.grey
                                      : const Color.fromARGB(255, 255, 167, 38),
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () {
                                  //locked ? null : () {},
                                  if (locked) {
                                    showLockedDialog(context);
                                  } else {
                                    showTataCaraDialog(context);
                                  }
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (locked)
                                      const Icon(
                                        Icons.lock,
                                        size: 14,
                                        color: Colors.white,
                                      ),
                                    if (locked) const SizedBox(width: 4),
                                    const Text(
                                      "Mulai",
                                      style: TextStyle(
                                        fontFamily: 'NunitoSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget stepCircle(
  String number,
  bool active, {
  bool isDone = false,
  bool showDot = false,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: active ? 44 : 34,
          height: active ? 36 : 28,
          decoration: BoxDecoration(
            color: isDone ? Color.fromARGB(254, 215, 243, 203) : Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: active
                ? [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          alignment: Alignment.center,
          child: Text(
            number,
            style: TextStyle(
              fontFamily: 'NunitoSans',
              fontSize: active ? 24 : 20,
              fontWeight: FontWeight.bold,
              color: isDone
                  ? Color.fromARGB(249, 44, 75, 89)
                  : Color.fromARGB(249, 44, 75, 89),
            ),
          ),
        ),

        if (showDot)
          Positioned(
            top: -2,
            right: -2,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    ),
  );
}

void showTataCaraDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Color.fromARGB(254, 248, 254, 254),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: 466,
            height: 300,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                // ELLIPS ATAS KIRI
                Positioned(
                  top: -10,
                  left: -20,
                  child: Image.asset(
                    "assets/modul/elipspopupataskiri.png",
                    width: 134,
                  ),
                ),

                // ELLIPS ATAS KANAN
                Positioned(
                  top: 64,
                  right: -20,
                  child: Image.asset(
                    "assets/modul/elipspopupkanan.png",
                    width: 98,
                  ),
                ),

                // ELLIPS BAWAH
                Positioned(
                  top: 114,
                  left: 4,
                  child: Image.asset(
                    "assets/modul/elipspopuptengah.png",
                    width: 43,
                  ),
                ),

                Positioned(
                  top: 28,
                  left: 273,
                  child: Image.asset(
                    "assets/modul/ellipsataskananpojok.png",
                    width: 43,
                  ),
                ),

                // ISI POPUP
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),

                      Text(
                        "Mode Parent-Guided Aktif✨",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(254, 95, 161, 191),
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "- Bacakan cerita dengan ekspresi\n"
                        "- Ajak anak menirukan ilustrasi\n"
                        "- Tanyakan pendapatnya setelah selesai\n\n",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(254, 95, 161, 191),
                        ),
                      ),

                      Text(
                        "Siap mulai bersama?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(254, 95, 161, 191),
                        ),
                      ),

                      SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // BATAL
                          SizedBox(
                            width: 158,
                            height: 39,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                side: BorderSide(
                                  color: Color.fromARGB(249, 255, 167, 38),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Text(
                                "Batalkan",
                                style: TextStyle(
                                  fontFamily: 'NunitoSans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(249, 255, 167, 38),
                                ),
                              ),
                            ),
                          ),

                          // MULAI
                          SizedBox(
                            width: 158,
                            height: 39,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                  249,
                                  255,
                                  167,
                                  38,
                                ),
                                side: BorderSide(
                                  color: Color.fromARGB(249, 255, 167, 38),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Text(
                                "Mulai",
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

void showLockedDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Color.fromARGB(254, 248, 254, 254),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: 466,
            height: 400,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                // ELLIPS ATAS KIRI
                Positioned(
                  top: -10,
                  left: -20,
                  child: Image.asset(
                    "assets/modul/elipspopupataskiri.png",
                    width: 134,
                  ),
                ),

                // ELLIPS ATAS KANAN
                Positioned(
                  top: 64,
                  right: -20,
                  child: Image.asset(
                    "assets/modul/elipspopupkanan.png",
                    width: 98,
                  ),
                ),

                // ELLIPS BAWAH
                Positioned(
                  top: 114,
                  left: 4,
                  child: Image.asset(
                    "assets/modul/elipspopuptengah.png",
                    width: 43,
                  ),
                ),

                Positioned(
                  top: 28,
                  left: 273,
                  child: Image.asset(
                    "assets/modul/ellipsataskananpojok.png",
                    width: 43,
                  ),
                ),

                Positioned(
                  top: 221,
                  left: -17,
                  child: Image.asset(
                    "assets/modul/elipspopupkiri.png",
                    width: 128,
                  ),
                ),

                Positioned(
                  top: 237,
                  left: 252,
                  child: Image.asset(
                    "assets/modul/elipspopupbawahkanan.png",
                    width: 128,
                  ),
                ),

                // ISI POPUP
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),

                      Positioned(
                        top: 100,
                        left: 100,
                        child: Image.asset(
                          "assets/modul/penguinlocked.png",
                          width: 100,
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "Ups! Submodul ini masih terkunci yaa🔒",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(254, 95, 161, 191),
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "Yuk, selesaikan submodul sebelumnya dulu supaya bisa membukanya!💙",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(254, 95, 161, 191),
                        ),
                      ),

                      SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 324,
                            height: 39,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                  249,
                                  255,
                                  167,
                                  38,
                                ),
                                side: BorderSide(
                                  color: Color.fromARGB(249, 255, 167, 38),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Text(
                                "Kembali",
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

void showFullDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Color.fromARGB(254, 248, 254, 254),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: 466,
            height: 400,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                // ELLIPS ATAS KIRI
                Positioned(
                  top: -10,
                  left: -20,
                  child: Image.asset(
                    "assets/modul/elipspopupataskiri.png",
                    width: 134,
                  ),
                ),

                // ELLIPS ATAS KANAN
                Positioned(
                  top: 64,
                  right: -20,
                  child: Image.asset(
                    "assets/modul/elipspopupkanan.png",
                    width: 98,
                  ),
                ),

                // ELLIPS BAWAH
                Positioned(
                  top: 114,
                  left: 4,
                  child: Image.asset(
                    "assets/modul/elipspopuptengah.png",
                    width: 43,
                  ),
                ),

                Positioned(
                  top: 28,
                  left: 273,
                  child: Image.asset(
                    "assets/modul/ellipsataskananpojok.png",
                    width: 43,
                  ),
                ),

                Positioned(
                  top: 221,
                  left: -17,
                  child: Image.asset(
                    "assets/modul/elipspopupkiri.png",
                    width: 128,
                  ),
                ),

                Positioned(
                  top: 237,
                  left: 252,
                  child: Image.asset(
                    "assets/modul/elipspopupbawahkanan.png",
                    width: 128,
                  ),
                ),

                // ISI POPUP
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),

                      Positioned(
                        top: 100,
                        left: 100,
                        child: Image.asset(
                          "assets/modul/penguinsertif.png",
                          width: 100,
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "Yeay, selamat!🎉",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(254, 95, 161, 191),
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "Kamu sudah menyelesaikan modul Menghargai\nPerbedaan! Yuk, klaim sertifikatmu sekarang!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(254, 95, 161, 191),
                        ),
                      ),

                      SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 324,
                            height: 39,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                  249,
                                  255,
                                  167,
                                  38,
                                ),
                                side: BorderSide(
                                  color: Color.fromARGB(249, 255, 167, 38),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Text(
                                "Klaim",
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
