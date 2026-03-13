import 'package:flutter/material.dart';
import 'signin6.dart';

  class Signin5 extends StatefulWidget {
    const Signin5({super.key});

    @override
    State<Signin5> createState() => _Signin5State();
  }

  class _Signin5State extends State<Signin5> {

    String gender = "";

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [

              Positioned(
                top: 180,
                left: 40,
                right: 40,
                child: const Text(
                  "Sikecil adalah...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 36,
                    color: Color(0xFF4C8099),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    InkWell(
                      onTap: () {
                        setState(() {
                          gender = "male";
                        });
                      },
                      child: Image.asset('assets/cowo.png', height: 380),
                    ),

                    const SizedBox(width: 20),

                    InkWell(
                      onTap: () {
                        setState(() {
                          gender = "female";
                        });
                      },
                      child: Image.asset('assets/cewe.png', height: 380),
                    ),

                  ],
                ),
              ),

              Positioned(
                bottom: 40,
                left: 20,
                right: 20,
                child: SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {

                      if(gender == ""){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Pilih gender dulu"),
                          ),
                        );
                        return;
                      }

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Signin6(),
                        ),
                      );
                    },
                    child: const Text(
                      "Selanjutnya",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
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