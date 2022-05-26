import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/screens/main_login_screen.dart';
import 'package:task/utlis/themes.dart';
import 'helper/dependences.dart' as dep;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 808),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, widget) => MaterialApp(
        builder: (context, widget) {
          //add this line
          // ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter internship',
        theme: Themes.lightTheme,
        home:  MainLoginScreen(),
      ),
    );
  }
}