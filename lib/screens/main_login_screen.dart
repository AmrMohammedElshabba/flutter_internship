import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task/controller/login_controller.dart';
import 'package:task/widgets/custom_form_field.dart';
import 'package:task/widgets/login_checker.dart';

class MainLoginScreen extends StatelessWidget {
   MainLoginScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding:  EdgeInsets.only(left: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                      height: 200.h,
                      width: 200.w,
                      child: Image.asset(
                        "assets/images/logo.png",
                      )),
                ),
                LoginChecker(),
                SizedBox(height: 33.h,),
                GetBuilder<LoginController>(builder: (cotroller) {
                  return cotroller.loginState == 1
                      ? Text(
                            "Ready to start trading with real money?",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                      )
                      :
                        Text("Practise with paper trading",style: Theme.of(context)
                        .textTheme
                        .bodyText1!.copyWith(color: Colors.black));
                }),
                SizedBox(height: 29.h,),
               Text("Log in",style: Theme.of(context).textTheme.bodyText2,),
                SizedBox(height: 8.h,),
                 Row(
                    children: [
                      Text("Don't have an account? ",style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black),),
                      Text("Sign Up ",style: Theme.of(context).textTheme.subtitle1),

                    ],
                  ),
                SizedBox(height: 38.h,),
                GetBuilder<LoginController>(builder: (controller){
                  return Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 20.h),
                        child: customTextFormField(
                              prefix: Icons.mail_outline,
                              hint: "Username or Email",
                              keybordType: TextInputType.emailAddress,
                              validateText: "Input email address",
                              controller: emailController),
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                       Padding(
                         padding:  EdgeInsets.only(right: 20.h),
                         child: customTextFormField(prefix: Icons.lock_outline,
                          hint: "Password",
                          keybordType: TextInputType.visiblePassword,
                          validateText: "Input email address",
                          controller: passwordController,
                          obsecureText: controller.isPassword,
                          sufix: controller.suffixIcon,
                          sufixPressed: () {
                            controller.ShowPassword();
                          }),
                       ),
                    ],
                  );
                }),
                SizedBox(height: 24.h,),
                GetBuilder<LoginController>(builder: (cotroller) {
                  return cotroller.loginState == 1
                      ? Text(
                        "Forget your username/password?",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                  )
                      : Text("Forget password?",style: Theme.of(context)
                        .textTheme
                        .subtitle1!.copyWith(color: Colors.black));
                }),
                SizedBox(height: 40.h,),
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                    }
                  },
                  child: Center(
                    child: Container(
                      height: 50.h,
                      width: 133.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: HexColor("#4EA831")),
                      child:  Center(
                        child: Text(
                          "LOGIN",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
