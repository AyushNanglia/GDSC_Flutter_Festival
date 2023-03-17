import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/constants.dart';
import 'package:tic_tac_toe/screens/grid_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  String? playerAName;
  String? playerBName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 350),
                child: IconButton(
                    onPressed: () {
                      ColorConstants().randomiseTheme();
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.color_lens_outlined,
                      color: ColorConstants.colorList[2],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Text(
                  "Tic-Tac-Toe",
                  style: GoogleFonts.nunito(
                      color: ColorConstants.colorList[1], fontSize: 60),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 70, right: 70),
                child: TextFormField(
                  onChanged: (value) {
                    playerAName = value;
                  },
                  cursorColor: kGreenColor,
                  style: GoogleFonts.nunito(
                      color: ColorConstants.colorList[0], fontSize: 15),
                  decoration: InputDecoration(
                      labelStyle: GoogleFonts.nunito(
                          color: ColorConstants.colorList[0], fontSize: 15),
                      labelText: "Player A Name",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.colorList[0])),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.colorList[0]))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 70, right: 70),
                child: TextFormField(
                  onChanged: (value) {
                    playerBName = value;
                  },
                  cursorColor: kGreenColor,
                  style: GoogleFonts.nunito(
                      color: ColorConstants.colorList[2], fontSize: 15),
                  decoration: InputDecoration(
                      labelStyle: GoogleFonts.nunito(
                          color: ColorConstants.colorList[2], fontSize: 15),
                      labelText: "Player B Name",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.colorList[2])),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.colorList[2]))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.colorList[1]),
                    onPressed: () {
                      if (playerAName != null && playerBName != null) {
                        if (playerAName != "" && playerBName != "") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GridScreen(pA: playerAName, pB: playerBName,)));
                        } else {
                          getSnackbar("Please enter both fields", context);
                        }
                      } else {
                        getSnackbar("Please enter both fields", context);
                      }
                    },
                    child: Text(
                      "Start",
                      style: GoogleFonts.nunito(
                          color: ColorConstants.colorList[3], fontSize: 20),
                    )),
              )
            ],
          ),
        ));
  }
}
