import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task/controller/login_controller.dart';

class LoginChecker extends StatelessWidget {
  const LoginChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: HexColor("#F3F9FF"),
          borderRadius: BorderRadius.circular(10.r)),
      child: GetBuilder<LoginController>(
        builder: (controller) {
          return Row(
            children: [
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      controller.live();
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: controller.loginState == 1
                              ? HexColor("#4EA831")
                              : HexColor("#F3F9FF"),
                        ),
                        height: 33.h,
                        child: Center(
                          child: (Text(
                            "Live",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                color: controller.loginState == 1
                                    ? Colors.white
                                    : HexColor("#4EA831")),
                          )),
                        ),
                      ),
                    )),
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      controller.paperTrading();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: controller.loginState == 0
                              ? HexColor("#4EA831")
                              : HexColor("#F3F9FF"),
                        ),
                        height: 33.h,
                        child: Center(
                          child: (Text(
                            "Paper Trading",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                color: controller.loginState == 0
                                    ? Colors.white
                                    : HexColor("#4EA831")),
                          )),
                        ),
                      ),
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}

