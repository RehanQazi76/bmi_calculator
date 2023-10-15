import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:bmi_calculator/main.dart';
import 'package:google_fonts/google_fonts.dart';

class InputDesign extends StatelessWidget {
  const InputDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (debugShowCheckedModeBanner: false,
      title: 'BMI calculator',
      theme: ThemeData(
        // primaryColor: ,
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(61, 12, 17,1),),
        scaffoldBackgroundColor: Colors.redAccent[400],
        

        
      ),
      home: Input(),
      ); 
       }
}

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Column(
      children: [Container(width: double.infinity,),
          Flexible(
            flex:0,
            fit: FlexFit.loose,
            child: Image.asset("assets/images/meter.png",
            
            ),
            
          ),
          Flexible(
            flex: 0,
            fit: FlexFit.loose,
            child: Text("Welcome",
            style: GoogleFonts.pacifico(
              fontSize: 50,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
            ),
            ),
            SizedBox(height: 20,),
          Flexible(
           fit: FlexFit.loose,
            child: ElevatedButton(
              child: Text("Proceed"),
            
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>InputDesign())
              );
              
            },
            )
            ),
        ],

      
    ));
  }
}