import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';

class SignUpPage extends StatelessWidget {
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
            toolbarHeight: 0.0,
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: Center(
                  child: Image.asset(
                    "assets/images/marvelLogoOrange.png",
                    // fit: BoxFit.scaleDown,
                    height: 88,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    children: [
                      GlassmorphicContainer(
                        width: 350,
                        height: 64,
                        borderRadius: 16,
                        blur: 4,
                        // alignment: Alignment.center,
                        border: 0,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF2891ce).withOpacity(0.5),
                            Color(0xFF2891ce).withOpacity(0.7),
                            Color(0xFF2891ce).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color(0xFFFFFFFF).withOpacity(0.7),
                            Color(0xFFffffff).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: new InputDecoration(
                                hintStyle: TextStyle(color: Colors.white54),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 16, bottom: 12, top: 12, right: 16),
                                hintText: "Username".tr),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GlassmorphicContainer(
                        width: 350,
                        height: 64,
                        borderRadius: 16,
                        blur: 4,
                        // alignment: Alignment.center,
                        border: 0,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF2891ce).withOpacity(0.5),
                            Color(0xFF2891ce).withOpacity(0.7),
                            Color(0xFF2891ce).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color(0xFFFFFFFF).withOpacity(0.7),
                            Color(0xFFffffff).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: new InputDecoration(
                                hintStyle: TextStyle(color: Colors.white54),
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 16, bottom: 12, top: 12, right: 16),
                                hintText: "Phone Number".tr),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GlassmorphicContainer(
                        width: 350,
                        height: 64,
                        borderRadius: 16,
                        blur: 4,
                        // alignment: Alignment.center,
                        border: 0,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF2891ce).withOpacity(0.5),
                            Color(0xFF2891ce).withOpacity(0.7),
                            Color(0xFF2891ce).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color(0xFFFFFFFF).withOpacity(0.7),
                            Color(0xFFffffff).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: new InputDecoration(
                                hintStyle: TextStyle(color: Colors.white54),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 16, bottom: 12, top: 12, right: 16),
                                hintText: "E-mail".tr),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GlassmorphicContainer(
                        width: 350,
                        height: 64,
                        borderRadius: 16,
                        blur: 4,
                        // alignment: Alignment.center,
                        border: 0,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF2891ce).withOpacity(0.5),
                            Color(0xFF2891ce).withOpacity(0.7),
                            Color(0xFF2891ce).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color(0xFFFFFFFF).withOpacity(0.7),
                            Color(0xFFffffff).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: new InputDecoration(
                                hintStyle: TextStyle(color: Colors.white54),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 16, bottom: 12, top: 12, right: 16),
                                hintText: "Password".tr),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GlassmorphicContainer(
                        width: 350,
                        height: 64,
                        borderRadius: 16,
                        blur: 4,
                        // alignment: Alignment.center,
                        border: 0,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF2891ce).withOpacity(0.5),
                            Color(0xFF2891ce).withOpacity(0.7),
                            Color(0xFF2891ce).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.5),
                            Color(0xFFFFFFFF).withOpacity(0.7),
                            Color(0xFFffffff).withOpacity(0.5),
                          ],
                          stops: [0, 0.5, 1],
                        ),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            cursorColor: Colors.white,
                            style: TextStyle(color: Colors.white),
                            decoration: new InputDecoration(
                                hintStyle: TextStyle(color: Colors.white54),
                                prefixIcon: Icon(
                                  FontAwesomeIcons.key,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 16, bottom: 12, top: 12, right: 16),
                                hintText: "Confirm Password".tr),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: MediaQuery.of(context).viewInsets.bottom == 0
                    ? EdgeInsets.only(bottom: 52)
                    : EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GlassmorphicContainer(
                      width: 160,
                      height: 60,
                      borderRadius: 12,
                      blur: 6,
                      alignment: Alignment.bottomCenter,
                      border: 3,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          // 5D5D5D
                          // border :6a6b75
                          Color(0xFF5D5D5D).withOpacity(0.50),
                          Color(0xFF5D5D5D).withOpacity(0.50),
                          Color(0xFF5D5D5D).withOpacity(0.50),
                        ],
                        stops: [0, 0.5, 1],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF6a6b75).withOpacity(0.5),
                          Color((0xFF6a6b75)).withOpacity(0.5),
                        ],
                      ),
                      // borderGradient: null,
                      child: TextButton(
                        onPressed: () {
                          //TODO: go to Main Page
                        },
                        child: Center(
                          child: Text(
                            "Sign In".tr,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GlassmorphicContainer(
                      width: 160,
                      height: 60,
                      borderRadius: 12,
                      blur: 6,
                      alignment: Alignment.bottomCenter,
                      border: 3,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          // 5D5D5D
                          // border :6a6b75
                          Color(0xFF5D5D5D).withOpacity(0.50),
                          Color(0xFF5D5D5D).withOpacity(0.50),
                          Color(0xFF5D5D5D).withOpacity(0.50),
                        ],
                        stops: [0, 0.5, 1],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF6a6b75).withOpacity(0.5),
                          Color((0xFF6a6b75)).withOpacity(0.5),
                        ],
                      ),
                      // borderGradient: null,
                      child: TextButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          Get.back();
                        },
                        child: Center(
                          child: Text(
                            "Cancel".tr,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
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
      ],
    );
  }
}
