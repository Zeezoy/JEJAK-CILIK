import 'package:flutter/material.dart';
import '../widgets/profile_textfield.dart';
import '../widgets/calendar_picker.dart';
import '../widgets/modal_success_profile.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
   State<EditProfilePage> createState() => _EditProfilePageState();
}
class _EditProfilePageState extends State<EditProfilePage> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final birthController = TextEditingController();
  final genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6F8),

      // APPBAR
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F6F8),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black
          ),
          onPressed: ()  => 
            Navigator.pop(context),
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontFamily: "NunitoSans",
            fontWeight: FontWeight.w800,
            fontSize: 24,
            color: Color(0xFF4A90A4),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [

            const SizedBox(height: 20),

            /// IMAGE
            Center(
             child: Stack(
               alignment: Alignment.center,
               children: [

              Container(
                width: 220,
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFFDCEAF2),
                  borderRadius: BorderRadius.circular(120),
                ),
              ),

               Image.asset(
                "assets/editProfile.png",
                width: 120,
              ),
            ],
          ),
        ),

            const SizedBox(height: 32),

            /// NAMA
            const Text(
              "Nama",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF9E9E9E),
              ),
            ),

            const SizedBox(height: 8),

            ProfileTextField(
              hint: "Nama",
              icon: Icons.person_outline,
              suffixIcon: editIcon(),
            ),

            const SizedBox(height: 20),

            /// EMAIL
            const Text(
              "Email",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF9E9E9E),
              ),
            ),

            const SizedBox(height: 8),

            ProfileTextField(
              hint: "Email",
              icon: Icons.email_outlined,
              suffixIcon: editIcon(),
            ),

            const SizedBox(height: 20),

            /// TANGGAL LAHIR
            const Text(
              "Tanggal Lahir SiKecil",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF9E9E9E),
              ),
            ),

            const SizedBox(height: 8),

            GestureDetector(
              onTap:() async {
                final date = await showCalendarPicker(context);

                if(date != null){
                  setState(() {
                    birthController.text = date;
                  });
                }
              },
              child:ProfileTextField(
              controller: birthController,
              hint: "00/00/0000",
              icon: Icons.calendar_month_outlined,
              suffixIcon: dropdownIcon(),
              readOnly: true,
            ),
            ),

            const SizedBox(height: 20),

            /// JENIS KELAMIN
            const Text(
              "Jenis Kelamin SiKecil",
              style: TextStyle(
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xFF9E9E9E),
              ),
            ),

            const SizedBox(height: 8),

            ProfileTextField(
              controller: genderController,
              hint: "Jenis Kelamin",
              icon: Icons.transgender,
              suffixIcon: dropdownIcon(),
              readOnly: true,
            ),

            const SizedBox(height: 40),

            /// BUTTON SAVE
            SizedBox(
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFA726),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: const BorderSide(
                      color: Color(0xFFCC861E),
                      width: 1.5,
                    ),
                  ),
                ),
                onPressed: () {
                  showSuccessProfileModal(context);
                },

                child: const Text(
                  "Simpan",
                  style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  /// ICON EDIT (PENCIL)
  Widget editIcon() {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.edit,
        size: 16,
        color: Color(0xFF4A90A4),
      ),
    );
  }

  /// ICON DROPDOWN ORANGE
  Widget dropdownIcon() {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: const Color(0xFFFFA726),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.keyboard_arrow_down,
        size: 18,
        color: Colors.white,
      ),
    );
  }
}