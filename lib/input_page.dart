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
                  cardWidget: Column(

                  ),

                ),
              ),
              Expanded(
                child:RepeatContainerCode(colors: Color(0xFF1D1E33),),
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