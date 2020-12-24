import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/calculator_btn.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _history = '';

  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    print(exp.toString());
    ContextModel cm = ContextModel();

    setState(() {
      _history = _expression;
      _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                _history,
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
                _expression,
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
                  callback: allClear,
                ),
                CalculatorBtn(
                  text: 'C',
                  fillColor: 0xFF6C807F,
                  callback: clear,
                ),
                CalculatorBtn(
                  text: '%',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '/',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorBtn(
                  text: '7',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '8',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '9',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '*',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 24,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorBtn(
                  text: '4',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '5',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '6',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '-',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 38,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorBtn(
                  text: '1',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '2',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '3',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '+',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 30,
                  callback: numClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorBtn(
                  text: '.',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '0',
                  callback: numClick,
                ),
                CalculatorBtn(
                  text: '00',
                  callback: numClick,
                  textSize: 26,
                ),
                CalculatorBtn(
                  text: '=',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  callback: evaluate,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
