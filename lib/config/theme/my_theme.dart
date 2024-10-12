import 'package:flutter/material.dart';
import 'package:islami/core/colors_manager.dart';

class MyTheme{
  static ThemeData lightTheme =ThemeData(
        
        appBarTheme:const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(fontSize: 30,fontWeight:FontWeight.w700,color:Colors.black ),
          iconTheme: IconThemeData(color: Colors.black)
        ),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme:const BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.goldColor,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          elevation: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 26),
        ),
        dividerColor: ColorsManager.goldColor,
        cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        color: Color(0xFFB7935F).withOpacity(.8),
        elevation: 14,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: Color(0xFF242424)),
      bodyMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
      ));
}