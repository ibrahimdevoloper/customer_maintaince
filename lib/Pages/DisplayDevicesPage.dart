import 'package:customer_maintaince/Pages/DisplayDevicesResultPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';

class DisplayDevices extends StatelessWidget {
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
            title: Text(
              "Display Device".tr,
            ),
            elevation: 0,
            centerTitle: true,
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment(0, -0.5),
                    child: GlassmorphicContainer(
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
                                Icons.tv,
                                color: Colors.white,
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 16, bottom: 12, top: 12, right: 16),
                              hintText: "Serial Number".tr),
                        ),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: MediaQuery.of(context).viewInsets.bottom == 0
                      ? EdgeInsets.only(bottom: 52)
                      : EdgeInsets.zero,
                  child: GlassmorphicContainer(
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => DisplayDevicesResult()));
                        Get.to(() => DisplayDevicesResult());
                      },
                      child: Center(
                        child: Text(
                          "Send".tr,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
