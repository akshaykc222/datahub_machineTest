import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 18)),
        minimumSize: MaterialStatePropertyAll(Size(130, 50)),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        )),
      )),
      iconTheme: const IconThemeData(color: AppColors.lightGrey),
      checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: AppColors.lightGrey),
          fillColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.lightGrey;
            }
            return AppColors.lightGrey; //
          })),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: AppColors.lightGrey,
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w700, fontSize: 16))),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: AppColors.greyColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: AppColors.greyColor)),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: AppColors.lightGrey)),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.lightGrey),
            borderRadius: BorderRadius.circular(5),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never),
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        // headline5: const TextStyle(
        //     color: AppColors.black,
        //     fontWeight: FontWeight.w600,
        //     fontSize: 25),
        titleMedium: const TextStyle(color: AppColors.lightGrey),

        titleLarge: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: AppColors.lightGrey),
        bodyMedium: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.w400,
            fontSize: 15),
        bodySmall: const TextStyle(
            color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 15),
      ));
}
