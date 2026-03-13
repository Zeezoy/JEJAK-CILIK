import 'package:flutter/material.dart';
import 'package:jejak_cilik/qris.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  String selectedPayment = "";
  bool _obscure = true;

  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  Widget paymentMethod(String title, String? image) {
    return Container(
      height: 56,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Color.fromRGBO(248, 254, 254, 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: RadioListTile(
        value: title,
        groupValue: selectedPayment,
        onChanged: (value) {
          setState(() {
            selectedPayment = value!;
          });
        },
        contentPadding: EdgeInsets.zero,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (image != null)
              Image.asset(image, height: 24)
            else
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
          ],
        ),
        controlAffinity:
            ListTileControlAffinity.trailing, // radio tetap di kanan
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 254, 254, 1),

      body: SafeArea(
        child: Stack(
          children: [
            /// Background Circle
            Positioned(
              top: 46,
              left: 132,
              child: Image.asset(
                'assets/pembayaran/elipsbayarpojokkanan.png',
                width: 279,
              ),
            ),

            Positioned(
              top: 598,
              left: 24,
              child: Image.asset(
                'assets/pembayaran/elipsbayarbawah.png',
                width: 279,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),

                  /// Title
                  const Center(
                    child: Text(
                      "Pembayaran",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(95, 161, 191, 1),
                        fontFamily: 'NunitoSans',
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// Modul Dibeli
                  const Text(
                    "Modul yang dibeli",
                    style: TextStyle(
                      color: Color.fromRGBO(95, 161, 191, 0.8),
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      fontFamily: 'NunitoSans',
                    ),
                  ),

                  const SizedBox(height: 10),

                  Image.asset(
                    'assets/pembayaran/modulbayar.png',
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: 30),

                  /// Metode Pembayaran
                  const Text(
                    "Metode Pembayaran",
                    style: TextStyle(
                      color: Color.fromRGBO(95, 161, 191, 0.8),
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      fontFamily: 'NunitoSans',
                    ),
                  ),

                  const SizedBox(height: 15),

                  paymentMethod("QRIS", "assets/pembayaran/qris.png"),
                  paymentMethod("e-money", "assets/pembayaran/emoney.png"),
                  paymentMethod("Transfer Bank", null),
                ],
              ),
            ),
          ],
        ),
      ),

      /// Bottom Payment
      bottomNavigationBar: Container(
        height: 129,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(248, 254, 254, 1),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Total",
                  style: TextStyle(
                    color: Color.fromRGBO(95, 161, 191, 0.8),
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    fontFamily: 'NunitoSans',
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  "Rp30.000",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(57, 96, 115, 1),
                  ),
                ),
              ],
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                if (selectedPayment == "QRIS") {
                  _showPasswordDialog();
                } else {
                  null;
                  // // Misal untuk metode lain, langsung bayar atau tampilkan toast
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(content: Text("Pilih QRIS untuk melanjutkan ke QRIS")),
                  // );
                }
              },

              child: const Text(
                "Bayar Sekarang",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'NunitoSans',
                  color: Color.fromRGBO(248, 254, 254, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPasswordDialog() {
    final TextEditingController _passwordController = TextEditingController();
    bool _obscure = true;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              backgroundColor:
                  Colors.transparent, // biar rounded lebih kelihatan
              insetPadding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30), // Rounded utama
                child: Container(
                  height: 280,
                  color: const Color.fromRGBO(248, 254, 254, 1), // Warna dialog
                  child: Stack(
                    children: [
                      // Asset background/ornamen
                      Positioned(
                        top: -10,
                        left: -8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/pembayaran/elipspopuppojokkiri.png',
                            width: 77,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        top: -9,
                        left: 266,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/pembayaran/elipspopuppojokkanan.png',
                            width: 112,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        top: 125,
                        left: -39,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/pembayaran/elipspopupkiribawah.png',
                            width: 165,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // Title
                      Positioned(
                        top: 20,
                        left: 20,
                        right: 20,
                        child: const Center(
                          child: Text(
                            "Masukkan Password",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(57, 96, 115, 1),
                              fontFamily: 'NunitoSans',
                            ),
                          ),
                        ),
                      ),

                      // Password Field
                      Positioned(
                        top: 70,
                        left: 20,
                        right: 20,
                        child: TextField(
                          controller: _passwordController,
                          obscureText: _obscure,
                          onChanged: (_) => setState(() {}),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 57, 96, 115),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            hintText: "Kata Sandi",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 189, 189, 189),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: _passwordController.text.isEmpty
                                ? const Icon(
                                    Icons.lock_outline,
                                    size: 18,
                                    color: Color.fromARGB(255, 189, 189, 189),
                                  )
                                : null,
                            filled: true,
                            fillColor: const Color(0xFFF6FBFA),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey.shade400,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscure = !_obscure;
                                });
                              },
                            ),
                          ),
                        ),
                      ),

                      // Tombol Batal & Bayar
                      Positioned(
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 158,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () => Navigator.pop(context),
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
                                  "Batalkan",
                                  style: TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(255, 167, 38, 1),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 158,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const Qris(),
                                    ),
                                  );
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
                                  "Bayar",
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
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
