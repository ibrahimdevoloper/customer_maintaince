import 'package:customer_maintaince/GetControllers/HomeGetContoller.dart';
import 'package:customer_maintaince/Pages/NotificationPage.dart';
import 'package:customer_maintaince/Tabs/DisplayDevicesTab.dart';
import 'package:customer_maintaince/Tabs/PreviousDevicesTab.dart';
import 'package:customer_maintaince/Tabs/ServiceRatingTab.dart';
import 'package:customer_maintaince/Tabs/TermsOfServiceTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  final HomeGetController homeGetController = Get.put(HomeGetController());

  @override
  void initState() {
    super.initState();

    // _pageController.addListener(() {
    //   print("it is working ");
    // });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background1.png",
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text("HOME".tr),
              centerTitle: true,
              actions: [
                IconButton(
                    icon: Icon(Icons.notifications_active_rounded),
                    // icon: Icon(CustomerMainIcons.stars_fill),
                    onPressed: () {
                      Get.to(() => NotificationPage());
                    })
              ],
              elevation: 0,
            ),
            drawer: Drawer(
                child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/drawerBackground.png",
                    ),
                  )),
                  child: Center(
                    child: Image.asset("assets/images/marvelLogoOrange.png"),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        title: Text("Sign In".tr),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.build_circle,
                          color: Colors.blue,
                        ),
                        title: Text("Display Devices".tr),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.auto_awesome_motion,
                          color: Colors.blue,
                        ),
                        title: Text("Check Devices".tr),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.stars,
                          color: Colors.blue,
                        ),
                        title: Text("Rate Our Service".tr),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.text_snippet,
                          color: Colors.blue,
                        ),
                        title: Text("Service Terms".tr),
                      ),
                      Center(
                        child: ToggleSwitch(
                          minWidth: 100.0,
                          cornerRadius: 16.0,
                          activeBgColor: Colors.blue,
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.grey,
                          inactiveFgColor: Colors.white,
                          labels: ['Arabic'.tr, 'English'.tr],
                          onToggle: (index) {
                            print('switched to: $index');
                            if (index == 0)
                              Get.updateLocale(Locale("ar"));
                            else
                              Get.updateLocale(Locale("en"));
                            Get.back();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
            body: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                homeGetController.updateIndicator(index);
              },
              children: <Widget>[
                DisplayDevicesTab(),
                PreviousDevicesTab(),
                ServiceRatingTab(),
                TermsOfServiceTab(),
              ],
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black12,
                  )
                ],
              ),
              child: GetBuilder<HomeGetController>(
                  init: homeGetController,
                  builder: (value) {
                    return SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8),
                        child: GNav(
                          rippleColor: Colors.grey[500],
                          hoverColor: Colors.grey[100],
                          gap: 8,
                          activeColor: Colors.white,
                          iconSize: 24,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          duration: Duration(milliseconds: 600),
                          tabBackgroundColor: Colors.blue.withOpacity(0.4),
                          tabActiveBorder: Border.all(
                            width: 4,
                            color: Colors.blue,
                          ),
                          color: Colors.white,
                          tabs: [
                            GButton(
                              icon: Icons.build_circle,
                              text: "Display Devices".tr,
                            ),
                            GButton(
                              icon: Icons.auto_awesome_motion,
                              text: "Check Devices".tr,
                            ),
                            GButton(
                              icon: Icons.stars,
                              text: "Rate Our Service".tr,
                            ),
                            GButton(
                              icon: Icons.text_snippet,
                              text: "Service Terms".tr,
                            ),
                          ],
                          selectedIndex: value.pageCount,
                          onTabChange: (index) {
                            // setState(() {
                            //   _selectedIndex = index;
                            // });
                            _pageController.animateToPage(
                              index,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInCubic,
                            );
                            value.updateIndicator(index);
                          },
                        ),
                      ),
                    );
                  }),
            ),
            // Center(
            //   heightFactor: 1.4,
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: [
            //           GlassmorphicContainer(
            //             width: 180,
            //             height: 180,
            //             borderRadius: 12,
            //             blur: 6,
            //             alignment: Alignment.bottomCenter,
            //             border: 3,
            //             linearGradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [
            //                 // 5D5D5D
            //                 // border :6a6b75
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //               ],
            //               stops: [0, 0.5, 1],
            //             ),
            //             borderGradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [
            //                 Color(0xFF6a6b75).withOpacity(0.5),
            //                 Color((0xFF6a6b75)).withOpacity(0.5),
            //               ],
            //             ),
            //             // borderGradient: null,
            //             child: TextButton(
            //               onPressed: () {
            //                 // Navigator.push(
            //                 //     context,
            //                 //     MaterialPageRoute(
            //                 //         builder: (context) => DisplayDevices()));
            //                 Get.to(() => DisplayDevices());
            //               },
            //               child: Center(
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.stretch,
            //                   children: [
            //                     Expanded(
            //                       child: Image.asset(
            //                         "assets/images/main/displayDevices.png",
            //                         fit: BoxFit.cover,
            //                       ),
            //                     ),
            //                     Center(
            //                       child: Text(
            //                         "Display Devices".tr,
            //                         style: TextStyle(
            //                           fontSize: 20,
            //                           color: Colors.white,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //           GlassmorphicContainer(
            //             width: 180,
            //             height: 180,
            //             borderRadius: 12,
            //             blur: 6,
            //             alignment: Alignment.bottomCenter,
            //             border: 3,
            //             linearGradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [
            //                 // 5D5D5D
            //                 // border :6a6b75
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //               ],
            //               stops: [0, 0.5, 1],
            //             ),
            //             borderGradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [
            //                 Color(0xFF6a6b75).withOpacity(0.5),
            //                 Color((0xFF6a6b75)).withOpacity(0.5),
            //               ],
            //             ),
            //             // borderGradient: null,
            //             child: TextButton(
            //               onPressed: () {
            //                 // Navigator.push(
            //                 //     context,
            //                 //     MaterialPageRoute(
            //                 //         builder: (context) =>
            //                 //             PreviousDevicesPage()));
            //                 Get.to(() => PreviousDevicesPage());
            //               },
            //               child: Center(
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.stretch,
            //                   children: [
            //                     Expanded(
            //                       child: Padding(
            //                         padding: const EdgeInsets.all(12.0),
            //                         child: RotationTransition(
            //                           turns:
            //                               new AlwaysStoppedAnimation(20 / 360),
            //                           child: Image.asset(
            //                             "assets/images/main/checkDevices.png",
            //                             fit: BoxFit.contain,
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                     Center(
            //                       child: Text(
            //                         "Check Devices".tr,
            //                         style: TextStyle(
            //                           fontSize: 20,
            //                           color: Colors.white,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 16,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: [
            //           GlassmorphicContainer(
            //             width: 180,
            //             height: 180,
            //             borderRadius: 12,
            //             blur: 6,
            //             alignment: Alignment.bottomCenter,
            //             border: 3,
            //             linearGradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [
            //                 // 5D5D5D
            //                 // border :6a6b75
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //               ],
            //               stops: [0, 0.5, 1],
            //             ),
            //             borderGradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [
            //                 Color(0xFF6a6b75).withOpacity(0.5),
            //                 Color((0xFF6a6b75)).withOpacity(0.5),
            //               ],
            //             ),
            //             // borderGradient: null,
            //             child: TextButton(
            //               onPressed: () {
            //                 //TODO: Terms of service
            //               },
            //               child: Center(
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.stretch,
            //                   children: [
            //                     Expanded(
            //                       child: Padding(
            //                         padding: const EdgeInsets.all(12.0),
            //                         child: RotationTransition(
            //                           turns:
            //                               new AlwaysStoppedAnimation(20 / 360),
            //                           child: Image.asset(
            //                             "assets/images/main/serviceTerms.png",
            //                             fit: BoxFit.contain,
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                     Center(
            //                       child: Text(
            //                         "Service Terms".tr,
            //                         style: TextStyle(
            //                           fontSize: 20,
            //                           color: Colors.white,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //           GlassmorphicContainer(
            //             width: 180,
            //             height: 180,
            //             borderRadius: 12,
            //             blur: 6,
            //             alignment: Alignment.bottomCenter,
            //             border: 3,
            //             linearGradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [
            //                 // 5D5D5D
            //                 // border :6a6b75
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //                 Color(0xFF5D5D5D).withOpacity(0.50),
            //               ],
            //               stops: [0, 0.5, 1],
            //             ),
            //             borderGradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [
            //                 Color(0xFF6a6b75).withOpacity(0.5),
            //                 Color((0xFF6a6b75)).withOpacity(0.5),
            //               ],
            //             ),
            //             // borderGradient: null,
            //             child: TextButton(
            //               onPressed: () {
            //                 // Navigator.push(
            //                 //     context,
            //                 //     MaterialPageRoute(
            //                 //         builder: (context) => ServiceRatingPage()));
            //                 Get.to(() => ServiceRatingPage());
            //               },
            //               child: Center(
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.stretch,
            //                   children: [
            //                     Expanded(
            //                       child: Image.asset(
            //                           "assets/images/main/rateOurService.png"),
            //                     ),
            //                     Center(
            //                       child: Text(
            //                         "Rate Our Service".tr,
            //                         style: TextStyle(
            //                           fontSize: 20,
            //                           color: Colors.white,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // bottomNavigationBar: RollingBottomBar(
            //   flat: true,
            //   controller: _navController,
            //   items: [
            //     RollingBottomBarItem(Icons.home, label: 'Page 1'),
            //     RollingBottomBarItem(Icons.star, label: 'Page 2'),
            //     RollingBottomBarItem(Icons.person, label: 'Page 3'),
            //     RollingBottomBarItem(Icons.access_alarm, label: 'Page 4'),
            //   ],
            //   activeItemColor: Colors.green[700],
            //   enableIconRotation: true,
            //   onTap: (index) {
            //     _navController.animateToPage(
            //       index,
            //       duration: const Duration(milliseconds: 400),
            //       curve: Curves.easeOut,
            //     );
            //   },
            // ),
            // Container(
            //   height: 150,
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: AlignmentDirectional.topCenter,
            //       end: AlignmentDirectional.bottomCenter,
            //       colors: [Color(0x00112c5e), Color(0xFF112c5e)],
            //     ),
            //   ),
            //   child: Align(
            //     alignment: Alignment(0.0, 0.8),
            //     child: Text(
            //       "please Sign Up or Sign In".tr,
            //       style: TextStyle(
            //         fontSize: 16,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
