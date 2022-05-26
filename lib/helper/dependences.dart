
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:task/controller/login_controller.dart';



Future<void> init()async{

  Get.lazyPut(()=>  LoginController());



}