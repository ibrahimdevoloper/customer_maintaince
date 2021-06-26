import 'package:customer_maintaince/Pages/HomePage.dart';
import 'package:customer_maintaince/Pages/SignInPage.dart';
import 'package:customer_maintaince/Pages/SignUpPage.dart';
import 'package:customer_maintaince/Widgets/FromWhiteToLightGrayGlassContainer.dart';
import 'package:customer_maintaince/Widgets/FromWhiteToLightGrayGlassContainerIntro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  var imageList = [
    "assets/images/intro/1.png",
    "assets/images/intro/2.png",
    "assets/images/intro/3.png",
  ];

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
            toolbarHeight: 0.0,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: FromWhiteToLightGrayGlassContainerIntro(
                      width: 220,
                      height: 70,
                      // borderRadius: 16,
                      // blur: 4,
                      // // alignment: Alignment.center,
                      // border: 0,
                      // linearGradient: LinearGradient(
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      //   colors: [
                      //     Color(0xFFffffff).withOpacity(0.5),
                      //     Color(0xFFFFFFFF).withOpacity(0.7),
                      //     Color(0xFFffffff).withOpacity(0.5),
                      //   ],
                      //   stops: [0, 0.5, 1],
                      // ),
                      // borderGradient: LinearGradient(
                      //   begin: Alignment.topLeft,
                      //   end: Alignment.bottomRight,
                      //   colors: [
                      //     Color(0xFFffffff).withOpacity(0.5),
                      //     Color(0xFFFFFFFF).withOpacity(0.7),
                      //     Color(0xFFffffff).withOpacity(0.5),
                      //   ],
                      //   stops: [0, 0.5, 1],
                      // ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/images/marvellogo.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Container(
                        width: 350,
                        // height: 350,
                        child: Swiper(
                          index: 0,
                          loop: true,
                          itemCount: 3,
                          autoplay: true,
                          pagination: new SwiperPagination(),
                          control: new SwiperControl(
                            iconPrevious: null,
                            iconNext: null,
                          ),
                          itemBuilder: (context, index) {
                            return FromWhiteToLightGrayGlassContainerIntro(
                              width: 350,
                              // height: 450,
                              // borderRadius: 16,
                              // blur: 4,
                              // alignment: Alignment.bottomCenter,
                              // border: 0,
                              // linearGradient: LinearGradient(
                              //   begin: Alignment.topLeft,
                              //   end: Alignment.bottomRight,
                              //   colors: [
                              //     Color(0xFFffffff).withOpacity(0.5),
                              //     Color(0xFFFFFFFF).withOpacity(0.7),
                              //     Color(0xFFffffff).withOpacity(0.5),
                              //   ],
                              //   stops: [0, 0.5, 1],
                              // ),
                              // borderGradient: LinearGradient(
                              //   begin: Alignment.topLeft,
                              //   end: Alignment.bottomRight,
                              //   colors: [
                              //     Color(0xFFffffff).withOpacity(0.5),
                              //     Color(0xFFFFFFFF).withOpacity(0.7),
                              //     Color(0xFFffffff).withOpacity(0.5),
                              //   ],
                              //   stops: [0, 0.5, 1],
                              // ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 250,
                                    width: 300,
                                    child: Image.asset(
                                      imageList[index],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 32),
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "نحن شركة مارفل نتميز بخدمة ما بعد البيع حيث أن الصيانة لدنا تتميز ",
                                        style: GoogleFonts.cairo(
                                            shadows: [
                                              Shadow(
                                                  color: Colors.white
                                                      .withOpacity(00.5),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 2))
                                            ],
                                            fontSize: 18,
                                            color: Colors.indigo,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FromWhiteToLightGrayGlassContainer(
                        width: 160,
                        height: 60,
                        // borderRadius: 12,
                        // blur: 6,
                        // alignment: Alignment.bottomCenter,
                        // border: 3,
                        // linearGradient: LinearGradient(
                        //   begin: Alignment.topLeft,
                        //   end: Alignment.bottomRight,
                        //   colors: [
                        //     // 5D5D5D
                        //     // border :6a6b75
                        //     Color(0xFF5D5D5D).withOpacity(0.50),
                        //     Color(0xFF5D5D5D).withOpacity(0.50),
                        //     Color(0xFF5D5D5D).withOpacity(0.50),
                        //   ],
                        //   stops: [0, 0.5, 1],
                        // ),
                        // borderGradient: LinearGradient(
                        //   begin: Alignment.topLeft,
                        //   end: Alignment.bottomRight,
                        //   colors: [
                        //     Color(0xFF6a6b75).withOpacity(0.5),
                        //     Color((0xFF6a6b75)).withOpacity(0.5),
                        //   ],
                        // ),
                        // // borderGradient: null,
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => SignInPage()));
                          Get.to(() => SignInPage());
                        },
                        child: Center(
                          child: Center(
                            child: Text(
                              'Sign In'.tr,
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
                      // FromWhiteToLightGrayGlassContainer(
                      //   width: 160,
                      //   height: 60,
                      //   onPressed: () {
                      //     Get.to(() => SignUpPage());
                      //   },
                      //   child: Center(
                      //     child: Text(
                      //       "Sign Up".tr,
                      //       style: TextStyle(
                      //         fontSize: 20,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      TextButton(
                        onPressed: () {
                          // Navigator.of(context).pushReplacement(
                          //     MaterialPageRoute(
                          //         builder: (context) => HomePage()));
                          Get.off(() => HomePage());
                        },
                        child: Center(
                          child: Text(
                            "Skip".tr,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
