import 'package:customer_maintaince/Widgets/BlueGlassContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/background2.png",
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            // toolbarHeight: 0.0,
            centerTitle: true,
            title: Text("Notification".tr),
          ),
          backgroundColor: Colors.transparent,
          body: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: BlueGlassContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${"Date".tr}:",
                        style: GoogleFonts.cairo(
                            color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "${"Notification Detail".tr}:",
                        style: GoogleFonts.cairo(
                            color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
