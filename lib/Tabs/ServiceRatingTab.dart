import 'package:customer_maintaince/Widgets/FomBlueToLightBlueGlassContainer.dart';
import 'package:customer_maintaince/Widgets/FromWhiteToLightGrayGlassContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ServiceRatingTab extends StatefulWidget {
  @override
  _ServiceRatingTabState createState() => _ServiceRatingTabState();
}

class _ServiceRatingTabState extends State<ServiceRatingTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 24),
              children: [
                FomBlueToLightBlueGlassContainer(
                  width: 350,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Colors.white54),
                          // prefixIcon: Icon(
                          //   Icons.person,
                          //   color: Colors.white,
                          // ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 12, top: 12, right: 16),
                          hintText: "Full Name".tr),
                    ),
                  )),
                ),
                SizedBox(
                  height: 16,
                ),
                FomBlueToLightBlueGlassContainer(
                  width: 350,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Colors.white54),
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
                SizedBox(
                  height: 16,
                ),
                FomBlueToLightBlueGlassContainer(
                  width: 350,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Colors.white54),
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
                FomBlueToLightBlueGlassContainer(
                  width: 350,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Colors.white54),
                          // prefixIcon: Icon(
                          //   FontAwesomeIcons.key,
                          //   color: Colors.white,
                          //   size: 20,
                          // ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 16, bottom: 12, top: 12, right: 16),
                          hintText: "Rating Detail".tr),
                    ),
                  )),
                ),
                Center(
                  child: RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        KeyboardVisibilityBuilder(
          builder: (context, isKeyboardVisible) {
            print(isKeyboardVisible);
            return Padding(
              padding: isKeyboardVisible
                  ? EdgeInsets.zero
                  : EdgeInsets.only(bottom: 52),
              child: FromWhiteToLightGrayGlassContainer(
                width: 160,
                hight: 60,
                onPressed: () {},
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
            );
          },
        ),
      ],
    );
  }
}
