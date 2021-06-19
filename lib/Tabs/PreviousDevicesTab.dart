import 'package:customer_maintaince/Pages/DisplayDevicesResultPage.dart';
import 'package:customer_maintaince/Widgets/FromWhiteToLightGrayGlassContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreviousDevicesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: FromWhiteToLightGrayGlassContainer(
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => DisplayDevicesResult());
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Color(0xFFb5c6e0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Device Type:".tr,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Maintenance Status:".tr,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Serial Number:".tr,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
