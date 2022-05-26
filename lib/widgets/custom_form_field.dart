
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:hexcolor/hexcolor.dart';

Widget customTextFormField({
  required TextEditingController controller,
  required TextInputType keybordType,
  required String hint,
  required IconData prefix,
  required validateText,
  Function? sufixPressed,
  Function? onTap,
  Function? onChange,
  Function? onSubmitted,
  bool obsecureText = false,
  IconData? sufix,
}) =>
    Container(
      width: double.infinity,
      height: 46.h,
      decoration: BoxDecoration(
        color: HexColor("#F6F6F6"),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1, color: HexColor("#F6F6F6")),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            offset: const Offset(0, 0),
            blurRadius: 4.0,
          )
        ],
      ),
      padding: EdgeInsetsDirectional.only(
        start: 18.w,
        top: 6.h,
        bottom: 6.h
      ),
      child: TextFormField(
        cursorColor: Colors.grey,
        keyboardType: keybordType,
        obscureText: obsecureText,
        onFieldSubmitted: (value) {
          onSubmitted!(value);
        },
        onChanged: (value) {
          onChange!(value);
        },
        validator: (String? value) {
          if (value!.isEmpty) {
            return validateText;
          }

          return null;
        },
        controller: controller,
        onTap: () {
          onTap!();
        },
        // controller: textEditingController,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: HexColor("#969696"),fontSize: 16.sp),
          suffixIcon: sufix != null
              ? IconButton(
            icon: Icon(
              sufix,
              color: Colors.grey,
              size: 20.h,
            ),
            onPressed: () {
              sufixPressed!();
            },
          )
              : null,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
