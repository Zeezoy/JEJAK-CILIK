import 'package:flutter/material.dart';

class CertificatePage extends StatelessWidget{
  const CertificatePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFEAF3F7),

      //APPBAR
      appBar: AppBar(
        backgroundColor: const Color(0xFFEAF3F7),
        elevation: 0,
        centerTitle: true,

        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFA726),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),

        title: const Text(
          "Sertifikat",
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontWeight: FontWeight.w800,
            fontSize: 22,
            color: Color(0xFF4A90A4),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          children: [

            const SizedBox(height: 10),

            // HEADER
            Row(
              children: [

                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[

                    Text(
                      "Keren! Kamu\nsudah punya 3\nsertifikat",
                      style: TextStyle(
                        fontFamily: "NunitoSans",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFA726),
                      ),
                    ),

                    SizedBox(height: 10),

                    SizedBox(
                      height: 6,
                      width: 120,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFF4A90A4),
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                      ),
                    ),
                  ],

                  ), 
                ),

                Image.asset(
                  "assets/image/",
                  width: 120,
                ),
              ],
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: const [

                    CertificateCard(
                      title: "Peduli & Menghargai perasaan",
                      sub: "3 Submodul",
                    ),

                    SizedBox(height: 16),

                    CertificateCard(
                      title: "Kejujuran",
                      sub: "3 Submodul",
                    ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                pageButton(Icons.arrow_back_ios_new),

                const SizedBox(width: 10),

                pageButton(Icons.arrow_forward_ios),
              ],
            ),

            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Widget pageButton(IconData icon){
    return Container(
      width: 40,
      height:40,
      decoration: BoxDecoration(
        color: const Color(0xFFBFC8CC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.white, size:18),
    );
  }
}

class CertificateCard extends StatelessWidget {
  final String title;
  final String sub;

  const CertificateCard({
    super.key,
    required this.title,
    required this.sub,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      height: 110,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),

        image: const DecorationImage(
          image: AssetImage(""),
          fit: BoxFit.cover,
        ),

        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 4),
          )
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(14),

        child: Row(
          children: [

            Image.asset(
              "assets/images",
              width: 90,
            ),

            const SizedBox(width: 12),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    title, 
                    style: const TextStyle(
                      fontFamily: "NunitoSans",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    sub,
                    style: const TextStyle(
                      fontFamily: "NunitoSans",
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // PROGRESS BAR
                  Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: FractionallySizedBox(
                      widthFactor: 0.35,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF2E5667),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}