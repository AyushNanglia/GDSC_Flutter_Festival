import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/constants.dart';

class GridScreen extends StatefulWidget {
  String? pA;
  String? pB;
  GridScreen({required this.pA, required this.pB,Key? key}) : super(key: key);

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {

  List<String> checklist=["","","","","","","","","",];
  bool is_x=true;
  List<Color?> colorList=[];
  late int play_A;
  late int play_B;
  late int fill_counter;
  int last_index=0;

  checkWin(){
    setState(() {
      if(checklist[0]==checklist[1] && checklist[1]==checklist[2] && checklist[0]!=""){
        if(checklist[0]=="×") {
          getSnackbar("${widget.pA} won", context);
          play_A++;
          //play_B++;
        }
        else if(checklist[0]=="o"){
          getSnackbar("${widget.pB} won", context);
          play_B++;
        }
        setState(() {
          colorList[0]=colorList[1]=colorList[2]=Colors.redAccent.shade100;
        });
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
      else if(checklist[3]==checklist[4] && checklist[4]==checklist[5] && checklist[3]!=""){
        if(checklist[3]=="×") {
          getSnackbar("${widget.pA} won", context);
          play_A++;
          //play_B++;
        }
        else if(checklist[3]=="o"){
          getSnackbar("${widget.pB} won", context);
          //play_A++;
          play_B++;
        }
        setState(() {
          colorList[3]=colorList[4]=colorList[5]=Colors.redAccent.shade100;
        });
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
      else if(checklist[6]==checklist[7] && checklist[7]==checklist[8] && checklist[6]!=""){
        if(checklist[6]=="×") {
          getSnackbar("${widget.pA} won", context);
          play_A++;
        }
        else if(checklist[6]=="o"){
          getSnackbar("${widget.pB} won", context);
          play_B++;
        }
        setState(() {
          colorList[6]=colorList[7]=colorList[8]=Colors.redAccent.shade100;
        });
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
      else if(checklist[0]==checklist[3] && checklist[3]==checklist[6] && checklist[3]!=""){
        if(checklist[3]=="×") {
          getSnackbar("${widget.pA} won", context);
          play_A++;
        }
        else if(checklist[3]=="o"){
          getSnackbar("${widget.pB} won", context);
          play_B++;
        }
        setState(() {
          colorList[0]=colorList[3]=colorList[6]=Colors.redAccent.shade100;
        });
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
      if(checklist[1]==checklist[4] && checklist[4]==checklist[7] && checklist[1]!=""){
        if(checklist[1]=="×") {
          getSnackbar("${widget.pA} won", context);
          play_A++;
        }
        else if(checklist[1]=="o"){
          getSnackbar("${widget.pB} won", context);
          play_B++;
        }
        setState(() {
          colorList[1]=colorList[4]=colorList[7]=Colors.redAccent.shade100;
        });
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
      else if(checklist[2]==checklist[5] && checklist[5]==checklist[8] && checklist[2]!=""){
        if(checklist[2]=="×") {
          getSnackbar("${widget.pA} won", context);
          play_A++;
        }
        else if(checklist[2]=="o"){
          getSnackbar("${widget.pB} won", context);
          play_B++;
        }
        setState(() {
          colorList[2]=colorList[5]=colorList[8]=Colors.redAccent.shade100;
        });
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
      else if(checklist[0]==checklist[4] && checklist[4]==checklist[8] && checklist[0]!=""){
        if(checklist[0]=="×") {
          getSnackbar("${widget.pA} won", context);
          play_A++;
        }
        else if(checklist[0]=="o"){
          getSnackbar("${widget.pB} won", context);
          play_B++;
        }
        setState(() {
          colorList[0]=colorList[4]=colorList[8]=Colors.redAccent.shade100;
        });
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
      if(checklist[2]==checklist[4] && checklist[4]==checklist[6] && checklist[2]!=""){
        if(checklist[2]=="×") {
          getSnackbar("${widget.pA} won", context);
          play_A++;
        }
        else if(checklist[2]=="o"){
          getSnackbar("${widget.pB} won", context);
          play_B++;
        }
        setState(() {
          colorList[2]=colorList[4]=colorList[6]=Colors.redAccent.shade100;
        });
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
      else if(fill_counter==9){
        getSnackbar("It's a tie", context);
        Future.delayed(const Duration(seconds: 3),(){
          reset();
        });
      }
    });
  }

  reset(){
    setState(() {
      checklist=["","","","","","","","","",];
      is_x=true;
      colorList=[Colors.grey[700],Colors.grey[700],Colors.grey[700],
        Colors.grey[700],Colors.grey[700],Colors.grey[700],Colors.grey[700],Colors.grey[700],Colors.grey[700]];
      fill_counter=0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    colorList=[Colors.grey[700],Colors.grey[700],Colors.grey[700],
      Colors.grey[700],Colors.grey[700],Colors.grey[700],Colors.grey[700],Colors.grey[700],Colors.grey[700]];
    play_A=0;
    play_B=0;
    fill_counter=0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.pA}: $play_A',
                      style: GoogleFonts.nunito(color: kGreenColor, fontSize: 17),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "${widget.pB}: $play_B",
                      style: GoogleFonts.nunito(color: kRedColor, fontSize: 17),
                    )
                  ],
                ),
              ),
              GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        if(checklist[index]=="") {
                          if(is_x==true) {
                            checklist[index] = "×";
                          } else {
                            checklist[index]="o";
                          }
                          is_x=!is_x;
                          fill_counter++;
                          last_index=index;
                        }
                      });
                      print(fill_counter);
                      checkWin();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.1,
                      width: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                          color: colorList[index],
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      child: Text(checklist[index],style: TextStyle(color: Colors.white,fontSize: 30.0),),
                    ),
                  );
                },
                itemCount: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checklist[last_index]="";
                        fill_counter--;
                        is_x=!is_x;
                      });
                    },
                    child: Icon(
                      Icons.undo,
                      color: kYellowColor,
                    ),
                  ),
                  /*const SizedBox(
                    width: 150,
                  ),*/
                  GestureDetector(
                    onTap: () {
                      reset();
                    },
                    child: Icon(
                      Icons.restart_alt,
                      color: kBlueColour,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
