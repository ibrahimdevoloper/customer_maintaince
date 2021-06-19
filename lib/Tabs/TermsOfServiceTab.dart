import 'package:customer_maintaince/Widgets/BlueGlassContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsOfServiceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: BlueGlassContainer(
        width: 350,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Terms of Service".tr,
                style: GoogleFonts.cairo(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Terms of Service Detail".tr,
                style: GoogleFonts.cairo(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
