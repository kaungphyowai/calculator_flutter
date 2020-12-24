import 'package:calculator_flutter/components/calculator_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(right: 12),
          child: Text(
            "123 * 123  ",
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 24,
              ),
              color: Color(0xFF545F61),
            ),
          ),
          alignment: Alignment(1, 1),
        ),
        Container(
          padding: EdgeInsets.all(12),
          child: Text(
            "123",
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: 48,
              ),
              color: Colors.white,
            ),
          ),
          alignment: Alignment(1, 1),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalculatorBtn(
              text: 'AC',
              fillColor: 0xFF6C807F,
              textSize: 20,
              //  : allClear,
            ),
            CalculatorBtn(
              text: 'C',
              fillColor: 0xFF6C807F,
              //  : clear,
            ),
            CalculatorBtn(
              text: '%',
              fillColor: 0xFFFFFFFF,
              textColor: 0xFF65BDAC,
              //  : numClick,
            ),
            CalculatorBtn(
              text: '/',
              fillColor: 0xFFFFFFFF,
              textColor: 0xFF65BDAC,
              //  : numClick,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalculatorBtn(
              text: '7',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '8',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '9',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '*',
              fillColor: 0xFFFFFFFF,
              textColor: 0xFF65BDAC,
              textSize: 24,
              //  : numClick,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalculatorBtn(
              text: '4',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '5',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '6',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '-',
              fillColor: 0xFFFFFFFF,
              textColor: 0xFF65BDAC,
              textSize: 38,
              //  : numClick,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalculatorBtn(
              text: '1',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '2',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '3',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '+',
              fillColor: 0xFFFFFFFF,
              textColor: 0xFF65BDAC,
              textSize: 30,
              //  : numClick,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalculatorBtn(
              text: '.',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '0',
              //  : numClick,
            ),
            CalculatorBtn(
              text: '00',
              //  : numClick,
              textSize: 26,
            ),
            CalculatorBtn(
              text: '=',
              fillColor: 0xFFFFFFFF,
              textColor: 0xFF65BDAC,
              //  : evaluate,
            ),
          ],
        ),
      ],
    );
  }
}
