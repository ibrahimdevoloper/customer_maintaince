import 'package:customer_maintaince/GetControllers/PreviousDevicesGetController.dart';
import 'package:customer_maintaince/Pages/DisplayDevicesResultPage.dart';
import 'package:customer_maintaince/Widgets/FomBlueToLightBlueGlassContainer.dart';
import 'package:customer_maintaince/Widgets/FromWhiteToLightGrayGlassContainer.dart';
import 'package:customer_maintaince/Widgets/ICAnimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayDevicesTab extends StatelessWidget {
  PreviousDevicesGetController _previousDevicesGetController =
      Get.put(PreviousDevicesGetController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<PreviousDevicesGetController>(
          init: _previousDevicesGetController,
          builder: (state) {
            if (state.isLoading)
              return ICAnimation();
            else if (state.isError)
              Text("error");
            else
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment(0, -0.5),
                      child: FomBlueToLightBlueGlassContainer(
                        width: 350,
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
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: MediaQuery.of(context).viewInsets.bottom == 0
                        ? EdgeInsets.only(bottom: 52)
                        : EdgeInsets.zero,
                    child: FromWhiteToLightGrayGlassContainer(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => DisplayDevicesResult()));
                        Get.to(() => DisplayDevicesResult());
                      },
                      width: 160,
                      height: 60,
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
                ],
              );
          }),
    );
  }
}
