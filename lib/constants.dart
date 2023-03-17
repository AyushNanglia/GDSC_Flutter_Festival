import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kBlueColour = const Color(0xFF4285f4);
Color kGreenColor = const Color(0xFF33a853);
Color kRedColor = const Color(0xFFe94234);
Color kYellowColor = const Color(0xFFfabc01);

getSnackbar(String text, BuildContext context) {
  var snackBar = SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 5),
      backgroundColor: Colors.grey,
      content: SizedBox(
        height: 20,
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.nunito(color: Colors.black, fontSize: 20),
          ),
        ),
      ));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

class ColorConstants {
  static List<Color> colorList = [
    kGreenColor,
    kBlueColour,
    kRedColor,
    kYellowColor
  ];

  void randomiseTheme() {
    colorList.shuffle();
  }
}
