
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderSet extends StatelessWidget {
  const GenderSet(this.icon,this.label);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            
            Icon(
              icon,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(height:10,),
            Text(label,
            style: GoogleFonts.pacifico(
              fontSize: 30.0,
              color: Colors.white, 
            ),
            )
          
          ],
        );
  }
}

