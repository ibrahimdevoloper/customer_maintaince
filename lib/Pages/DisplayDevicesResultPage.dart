import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayDevicesResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/background1.png",
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text("Maintenance Report".tr),
              elevation: 0,
              centerTitle: true,
            ),
            backgroundColor: Colors.transparent,
            body: Container(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                          child: Container(
                            width: 350,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF143777).withOpacity(0.5),
                                    Color(0xFF143777).withOpacity(0.7),
                                    Color(0xFF143777).withOpacity(0.5),
                                  ],
                                  stops: [0, 0.5, 1],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        text: "• Customer Name:".tr,
                                        style: GoogleFonts.cairo(
                                            color: Color(0xFFFEC014),
                                            fontSize: 20),
                                        children: [
                                          TextSpan(
                                            text: " Ibrahim Shaglil",
                                            style: GoogleFonts.cairo(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ]),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: "• Serial Number:".tr,
                                        style: GoogleFonts.cairo(
                                            color: Color(0xFFFEC014),
                                            fontSize: 20),
                                        children: [
                                          TextSpan(
                                            text: " DFB57SV656SDV65",
                                            style: GoogleFonts.cairo(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                            width: 350,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF143777).withOpacity(0.5),
                                    Color(0xFF143777).withOpacity(0.7),
                                    Color(0xFF143777).withOpacity(0.5),
                                  ],
                                  stops: [0, 0.5, 1],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      text: "• Device Category:".tr,
                                      style: GoogleFonts.cairo(
                                          color: Color(0xFFFEC014),
                                          fontSize: 20),
                                      children: [
                                        TextSpan(
                                          text: " Eng.Ibrahim Shaglil",
                                          style: GoogleFonts.cairo(
                                              color: Colors.white,
                                              fontSize: 20),
                                        )
                                      ]),
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: "• Status:".tr,
                                      style: GoogleFonts.cairo(
                                          color: Color(0xFFFEC014),
                                          fontSize: 20),
                                      children: [
                                        TextSpan(
                                          text: " In Repair",
                                          style: GoogleFonts.cairo(
                                              color: Colors.white,
                                              fontSize: 20),
                                        )
                                      ]),
                                ),
                                // Text(
                                //   "• Attachments:",
                                //   style: GoogleFonts.cairo(
                                //       color: Color(0xFFFEC014), fontSize: 20),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                          ),
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                              width: 350,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF143777).withOpacity(0.5),
                                      Color(0xFF143777).withOpacity(0.7),
                                      Color(0xFF143777).withOpacity(0.5),
                                    ],
                                    stops: [0, 0.5, 1],
                                  ),
                                  borderRadius: i == (7 - 1)
                                      ? BorderRadius.only(
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16),
                                        )
                                      : i == 0
                                          ? BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            )
                                          : BorderRadius.zero),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "• Attachments:".tr,
                                    style: GoogleFonts.cairo(
                                        color: i == 0
                                            ? Color(0xFFFEC014)
                                            : Colors.transparent,
                                        fontSize: 20),
                                  ),
                                  Expanded(
                                    child: Text(
                                      " - data $i",
                                      style: GoogleFonts.cairo(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ],
                              )
                              // Text(
                              //   "- data $i",
                              //   style:
                              //       TextStyle(color: Colors.white, fontSize: 16),
                              // ),
                              ),
                        );
                      },
                      childCount: 7,
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 32),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                            width: 350,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF143777).withOpacity(0.5),
                                    Color(0xFF143777).withOpacity(0.7),
                                    Color(0xFF143777).withOpacity(0.5),
                                  ],
                                  stops: [0, 0.5, 1],
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "• Reports:".tr,
                                  style: GoogleFonts.cairo(
                                      color: Color(0xFFFEC014), fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, i) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            bottom: (10 - 1) == i ? 8 : 0,
                          ),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                            width: 350,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFF143777).withOpacity(0.5),
                                  Color(0xFF143777).withOpacity(0.7),
                                  Color(0xFF143777).withOpacity(0.5),
                                ],
                                stops: [0, 0.5, 1],
                              ),
                              borderRadius: i == (10 - 1)
                                  ? BorderRadius.only(
                                      bottomLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                    )
                                  : BorderRadius.zero,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "- Problem Date:".tr,
                                      style: GoogleFonts.cairo(
                                          color: Color(0xFFFEC014),
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "1996/09/05",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "- Problem Detail:".tr,
                                      style: GoogleFonts.cairo(
                                          color: Color(0xFFFEC014),
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla Bla ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      childCount: 10,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
