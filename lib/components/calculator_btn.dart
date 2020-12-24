import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorBtn extends StatelessWidget {
  const CalculatorBtn({
    Key key,
    this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 24,
  }) : super(key: key);
  final String text;
  final double textSize;
  final int fillColor, textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
          onPressed: () {},
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
