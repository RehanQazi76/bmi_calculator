
import 'package:flutter/cupertino.dart';

class ReusableCards extends StatelessWidget {
  
  final double widths;

  ReusableCards({required this.widths, required this.colour,this.cardChild,required this.onpress});
  final Color colour;
  final Widget? cardChild;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.all(5),
      child: cardChild,
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius:BorderRadius.circular(8) ),
      width: widths,
      // height: 180,
        ),
    );
  }
}
