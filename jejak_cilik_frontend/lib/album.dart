import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jejak_cilik/album2.dart';
import 'package:jejak_cilik/submodul.dart';
import 'package:jejak_cilik/tracker.dart';

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  int selectedIndex = 3;
  TextEditingController albumController = TextEditingController();

  List<Map<String, dynamic>> albums = [
    {
      "title": "Belajar",
      "image": "assets/album/fotoalbum1.png",
      "totalFoto": 6,
      "date": "04/03/2026",
      "targetPage": Album2(),
    },
    {
      "title": "Belajar 1",
      "image": "assets/album/fotoalbum2.jpg",
      "totalFoto": 5,
      "date": "04/03/2026",
      "targetPage": null,
    },
    {
      "title": "Belajar 2",
      "image": "assets/album/fotoalbum3.jpg",
      "totalFoto": 2,
      "date": "04/03/2026",
      "targetPage": null,
    },
    {
      "title": "Belajar 3",
      "image": "assets/album/fotoalbum4.jpg",
      "totalFoto": 3,
      "date": "04/03/2026",
      "targetPage": null,
    },
  ];

  void showAddAlbumDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: const Color.fromRGBO(248, 254, 254, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              width: 466,
              height: 280,
              child: Stack(
                children: [
                  /// ELLIPS (background dekorasi kamu)
                  Positioned(
                    top: -9,
                    left: -8,
                    child: Image.asset(
                      "assets/album/Ellipse35551.png",
                      width: 134,
                    ),
                  ),

                  Positioned(
                    top: -9,
                    left: 266,
                    child: Image.asset(
                      "assets/album/Ellipse35531.png",
                      width: 98,
                    ),
                  ),

                  Positioned(
                    top: 125,
                    left: -39,
                    child: Image.asset(
                      "assets/album/Ellipse35541.png",
                      width: 128,
                    ),
                  ),

                  /// ISI POPUP
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10),

                        const Text(
                          "Buat Album Baru",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            fontFamily: "NunitoSans",
                            color: Color.fromARGB(254, 95, 161, 191),
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// INPUT NAMA ALBUM
                        TextField(
                          controller: albumController,
                          decoration: InputDecoration(
                            hintText: "Masukkan nama album",
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 191, 191, 1),
                              fontFamily: "NunitoSans",
                              fontWeight: FontWeight.w600,
                            ),

                            filled: false,

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(186, 191, 191, 1),
                                width: 1.5,
                              ),
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(186, 191, 191, 1),
                                width: 1.5,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(186, 191, 191, 1),
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        /// TOMBOL
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            /// BATAL
                            SizedBox(
                              width: 158,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(
                                    248,
                                    254,
                                    254,
                                    1,
                                  ),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(255, 167, 38, 1),
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: const Text(
                                  "Batal",
                                  style: TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(255, 167, 38, 1),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),

                            /// SIMPAN
                            SizedBox(
                              width: 158,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (albumController.text.isNotEmpty) {
                                    String today = DateFormat(
                                      "dd/MM/yyyy",
                                    ).format(DateTime.now());
                                    setState(() {
                                      albums.add({
                                        "title": albumController.text,
                                        "image": "assets/modul/penguin1.png",
                                        "totalFoto": 0,
                                        "date": today,
                                      });
                                    });
                                  }

                                  albumController.clear();
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(
                                    255,
                                    167,
                                    38,
                                    1,
                                  ),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(255, 167, 38, 1),
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: const Text(
                                  "Simpan",
                                  style: TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(248, 254, 254, 1),
                                    fontSize: 16,
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
          clipBehavior: Clip.none,
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
              //bottom: 575,
              left: 132,
              child: Image.asset('assets/album/elipsbiru.png', width: 279),
            ),

            Positioned(
              top: 598,
              //bottom: 25,
              left: 24,
              child: Image.asset('assets/album/elipsbiru.png', width: 279),
            ),

            Positioned(
              top: 78,
              //bottom: 540,
              left: 0,
              child: Image.asset('assets/album/elipsoren2.png', width: 147),
            ),

            Positioned(
              top: 551,
              //bottom: 55,
              right: 0,
              child: Image.asset('assets/album/elipsoren2.png', width: 147),
            ),

            Positioned(
              top: 244,
              left: 0,
              child: Image.asset('assets/album/elipsoren.png', width: 294),
            ),

            /// SCROLL CONTENT
            //Positioned.fill(
            //child:
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

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      color: Colors.transparent,
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: List.generate(albums.length, (index) {
                          final album = albums[index];

                          return SizedBox(
                            width: (MediaQuery.of(context).size.width - 56) / 2,
                            child: AlbumCard(
                              title: album["title"],
                              image: album["image"],
                              totalFoto: album["totalFoto"],
                              date: album["date"],
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => album["targetPage"],
                                  ),
                                );
                              },
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          showAddAlbumDialog();
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(215, 242, 255, 1),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: const Icon(
            Icons.add,
            color: Color.fromRGBO(57, 96, 115, 1),
            size: 32,
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String title;
  final String image;
  final String date;
  final int totalFoto;
  final VoidCallback? onTap;

  const AlbumCard({
    super.key,
    required this.title,
    required this.image,
    required this.date,
    required this.totalFoto,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
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
      ),
    );
  }
}
