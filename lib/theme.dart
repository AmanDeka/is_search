import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


Color secondaryBackground = Color(0xFFFFFFFF);
Color primaryBackground = Color(0xFFF1F4F8);
Color secondaryText = Color(0xFF57636C);


final ThemeData myTheme = ThemeData(
  primarySwatch: Colors.blue,
  textTheme: TextTheme(
    headlineSmall: GoogleFonts.outfit(
      textStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color:Color(0xFF14181B)
        )
    ),
    labelMedium: GoogleFonts.readexPro(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color:Color(0xFF57636C)
        )
    ),
    bodyMedium: GoogleFonts.readexPro(
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color:Color(0xFF14181B)
        )
    ),
  ),

);