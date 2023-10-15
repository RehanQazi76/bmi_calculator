import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomButton extends StatelessWidget {
  
  BottomButton({required this.onpress,required this.label});
  final Function() onpress;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        
        color: Colors.deepPurple,
        width: double.infinity,
        
       margin: EdgeInsets.only(bottom: 20,top: 10),
        
        height: 60,
        child: Text(label,
        textAlign: TextAlign.center ,
        style: GoogleFonts.pacifico(
        fontSize: 40.0,
        color: Colors.white, 
         ),
        ),
        
      ),
    );
  }
}
