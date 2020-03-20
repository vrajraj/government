import 'dart:io';

import 'package:flutter/material.dart';
import 'UI_English/LanguagePage.dart';
import 'UI_English/SectorPage.dart';
import 'UI_English/SplashScreen.dart';
import 'UI_English/SelectionPage.dart';
import 'UI_English/StartIntoApp.dart';

//// for UI_Hindi
//import 'package:government/UI_Hindi/LanguagePage.dart';
//import 'package:government/UI_Hindi/SectorPage.dart';
//import 'package:government/UI_Hindi/SelectionPage.dart';
//import 'package:government/UI_Hindi/StartIntoApp.dart';
//import 'package:government/UI_Hindi/SectorPage.dart';
//import 'package:government/UI_Hindi/detailsPage.dart';
//import 'package:flutter/material.dart';
//import 'UI_Hindi/SplashScreen.dart';
//import 'UI_Hindi/SelectionPage.dart';
//import 'UI/Start.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.redAccent,
      accentColor: Colors.amber,
    ),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/Start': (context) => SelectionPage(),
      '/Next': (context) => LanguageScreen(),
      '/English': (context) => StartIntoApp(), // THIS FOR ENGLISH BUTTON
      '/Skip': (context) => SectorPage(),
      '/Back': (context) => LanguageScreen(),
    },
  ));
}

// Here Is Page Specification //
// * SplashScreen(Front page : Budget logo ,text ,quot ,start button)
// * StartIntoApp page : (Third page : Ministry section & Sector selection section with card-scroll)
// * SelectionPage(Second page : State selection, Drop-box, selected state-declaration)
// * LanguagePage(Fourth Page : which will display after selecting sector )

/*
  1)  Remaining ITEMS : make StartIntoApp(HINDI version) with new Dart.File
  2)  Than Connect that file with LanguageScreen's => Hindi FLAT BUTTON
   */