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

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  double progress = 0.0; // ini pokoknya dri 0 - 1
  int selectedIndex = 3;
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
                color: Color.fromARGB(253, 255, 255, 255),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(100),
                ),
              ),
            ),

            /// ELIPS IMAGES
            Positioned(
              top: 46,
              left: 132,
              child: Image.asset('assets/album/elipsbiru.png', width: 279),
            ),

            Positioned(
              top: 598,
              left: 24,
              child: Image.asset('assets/album/elipsbiru.png', width: 279),
            ),

            Positioned(
              top: 78,
              left: 0,
              child: Image.asset('assets/album/elipsoren2.png', width: 147),
            ),

            Positioned(
              top: 551,
              right: 0,
              child: Image.asset('assets/album/elipsoren2.png', width: 147),
            ),

            Positioned(
              top: 244,
              left: 0,
              child: Image.asset('assets/album/elipsoren.png', width: 294),
            ),

            /// SCROLL CONTENT
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 68),

                  /// TITLE
                  const Text(
                    "AlbumKu",
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

                  const SizedBox(height: 35),

                  /// ini search BAR yg diatas ntuh
                  Center(
                    child: SizedBox(
                      width: 372,
                      height: 47,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Cari Album Favoritmu",
                            hintStyle: const TextStyle(
                              fontFamily: "NunitoSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(186, 186, 186, 1),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color.fromRGBO(255, 167, 38, 1),
                            ),
                            filled: true,
                            fillColor: const Color.fromRGBO(248, 254, 254, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AlbumCard(
                        title: "Perbedaan\nKeyakinan",
                        image: "assets/modul/penguin1.png",
                        totalFoto: 200,
                        date: "ty",
                      ),

                      SizedBox(width: 16),

                      AlbumCard(
                        title: "Belajar\nBersama",
                        image: "assets/modul/penguin2.png",
                        totalFoto: 120,
                        date: "ty",
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AlbumCard(
                        title: "Perbedaan\nKeyakinan",
                        image: "assets/modul/penguin1.png",
                        totalFoto: 200,
                        date: "ty",
                      ),

                      SizedBox(width: 16),

                      AlbumCard(
                        title: "Belajar\nBersama",
                        image: "assets/modul/penguin2.png",
                        totalFoto: 120,
                        date: "ty",
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Positioned(
              bottom: 100,
              right: 20,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 167, 38, 1),
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String title;
  final String image;
  final String date;
  final int totalFoto;

  const AlbumCard({
    super.key,
    required this.title,
    required this.image,
    required this.date,
    required this.totalFoto,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 176,
      height: 240,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: const Color.fromRGBO(255, 167, 38, 1),
            width: 4,
          ),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Colors.black26,
          //     blurRadius: 6,
          //     offset: Offset(0, 4),
          //   ),
          // ],
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              /// IMAGE
              Positioned.fill(child: Image.asset(image, fit: BoxFit.cover)),

              /// TOP ICON + FOTO COUNT
              Positioned(
                top: 8,
                left: 8,
                right: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// MENU DOT
                    Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.more_horiz,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: -20,
                //left: 8,
                right: -20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// FOTO COUNT
                    Container(
                      width: 100,
                      height: 50,
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(239, 83, 80, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "$totalFoto Foto",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: "NunitoSans",
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// GRADIENT BAWAH
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black54],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 2),

                      Text(
                        date,
                        style: const TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 12,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
