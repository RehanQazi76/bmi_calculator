import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Result_page extends StatefulWidget {
  const Result_page({super.key});

  @override
  State<Result_page> createState() => _Result_pageState();
}

class _Result_pageState extends State<Result_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          
        ],
      ) ,
    );
  }
}