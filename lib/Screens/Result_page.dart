
import 'package:bmi_calculator/Widgets/Reusable_Card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/BottomButton.dart';
final Color inactive=Colors.deepPurple;

class Result_page extends StatelessWidget {
   Result_page(this.bmi,this.result,this.interpretation);
   final String bmi;
   final String result;
   final String interpretation;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Center(
         child: Text("BMI calculator",
         style: GoogleFonts.roboto(
                fontSize: 30.0,
                color: Colors.white, 
              ),),
       ),
      ) ,
      body:Column(
        children: [
          Expanded(
            flex: 1,
            child: Text("Results",
            style: GoogleFonts.pacifico(
              fontSize: 40.0,
              color: Colors.white, 
               ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCards(
              widths: double.infinity,
              colour: inactive,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(result,
                  style: GoogleFonts.roboto(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.green,
                  ),
                  ),
                  Text(bmi,
                   style: GoogleFonts.oswald(
                    fontSize: 100,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  ),
          
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(interpretation,
                     style: GoogleFonts.oswald(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),
                  )
          
                ],
              ),
          
              onpress: (){}),
          ),
          BottomButton(
            onpress: (){
              Navigator.pop(context);
            },
           label: "Re-caculate")
        ],
      ) ,
    );;
  }
}