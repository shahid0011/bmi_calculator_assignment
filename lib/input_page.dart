import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child:Row(
            children: [
              Expanded(
                child:RepeatContainerCode(
                  colors: Color(0xFF1D1E33),
                  cardWidget: RepeatTextandICONWidgets(),

                ),
              ),
              Expanded(
                child:RepeatContainerCode(colors: Color(0xFF1D1E33),
                  cardWidget: RepeatTextandICONWidgets(),),
              ),
            ],
          ),),
          Expanded(
            child:RepeatContainerCode(colors: Color(0xFF1D1E33),),),
          Expanded(child:Row(
          children: [
    Expanded(
      child:RepeatContainerCode(colors: Color(0xFF1D1E33),),),
    Expanded(
      child:RepeatContainerCode(colors: Colors.blue),

    ),
    ],
    ),),
        ],
      ),
    );
  }
}

class RepeatTextandICONWidgets extends StatelessWidget {
  final IconData iconData;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.male,
          size: 85.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',
          style: TextStyle(
          fontSize: 30.0,
          color: Color(0xFF8D8E98),
        ),
        ),
      ],
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors, this.cardWidget});
final Color colors;
final Widget cardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}