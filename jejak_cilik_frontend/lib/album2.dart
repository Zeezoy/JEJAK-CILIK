import 'package:flutter/material.dart';
import 'album.dart';

class Album2 extends StatefulWidget {
  const Album2({super.key});

  @override
  State<Album2> createState() => _Album2State();
}

class _Album2State extends State<Album2> {
  // List contoh foto galeri
  final List<String> photoList = [
    "assets/album/fotogaler1.png",
    "assets/album/fotogaleri2.png",
    "assets/album/fotogaleri3.png",
    "assets/album/fotogaleri4.png",
    "assets/album/fotogaleri5.png",
    "assets/album/fotogaleri6.png",
  ];

  void showDeleteDialog() {
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
              height: 239,
              child: Stack(
                children: [
                  /// ELLIPS BACKGROUND
                  Positioned(
                    top: -38,
                    left: -23,
                    child: Image.asset(
                      "assets/album/elipspjokkiriatas.png",
                      width: 134,
                    ),
                  ),

                  Positioned(
                    top: 64,
                    left: 290,
                    child: Image.asset(
                      "assets/album/elipskanan.png",
                      width: 98,
                    ),
                  ),

                  Positioned(
                    top: 28,
                    left: 273,
                    child: Image.asset(
                      "assets/album/elipskicil.png",
                      width: 43,
                    ),
                  ),

                  Positioned(
                    top: 114,
                    left: 4,
                    child: Image.asset(
                      "assets/album/elipskicil.png",
                      width: 43,
                    ),
                  ),

                  /// ISI DIALOG
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),

                        const Text(
                          "Apa yang ingin anda hapus?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            fontFamily: "NunitoSans",
                            color: Color.fromARGB(254, 95, 161, 191),
                          ),
                        ),

                        const SizedBox(height: 35),

                        /// BUTTON COLUMN
                        Column(
                          children: [
                            /// HAPUS ALBUM
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(
                                    255,
                                    167,
                                    38,
                                    1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: const Text(
                                  "Hapus Album",
                                  style: TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 5),

                            /// HAPUS FOTO
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  side: const BorderSide(
                                    color: Color.fromRGBO(255, 167, 38, 1),
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: const Text(
                                  "Hapus Album",
                                  style: TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w800,
                                    color: const Color.fromRGBO(
                                      255,
                                      167,
                                      38,
                                      1,
                                    ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // BACKGROUND
            Container(
              height: 381,
              decoration: const BoxDecoration(
                color: Color.fromARGB(253, 255, 255, 255),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(100),
                ),
              ),
            ),

            // ELLIPS IMAGES
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

            // SCROLL CONTENT
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 68),

                  const Text(
                    "Belajar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: 28,
                      color: Color.fromARGB(249, 76, 128, 153),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 35),

                  // SEARCH BAR
                  const SizedBox(height: 25),

                  // GALERI
                  GalleryWidget(photos: photoList),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Positioned(
              top: 68,
              left: 25,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Album()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(left: 5),
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
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),

            Positioned(
              top: 68,
              right: 25,
              child: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(215, 242, 255, 1),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Color.fromRGBO(76, 128, 153, 1),
                    size: 24,
                  ),
                  onPressed: () {
                    showDeleteDialog();
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      // FAB
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
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
              onPressed: () {},
              child: const Text(
                "Tambahkan Foto",
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
    );
  }
}

class GalleryWidget extends StatelessWidget {
  final List<String> photos;
  final double photoSize;
  final double borderRadius;

  const GalleryWidget({
    super.key,
    required this.photos,
    this.photoSize = 173,
    this.borderRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: photos.map((photo) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.asset(
              photo,
              width: photoSize,
              height: photoSize,
              fit: BoxFit.cover,
            ),
          );
        }).toList(),
      ),
    );
  }
}
