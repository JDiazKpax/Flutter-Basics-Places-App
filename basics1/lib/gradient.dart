import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  String title = "Lugares Populares";
  
  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
  
  final gradient_rectangle = Container(   
    height: 250.0,
    decoration: BoxDecoration(
      gradient: LinearGradient(    //Gradiente lineal horizontal
        colors: [
          Color(0xFF4268D3),
          Color(0xFF584CD1),
        ],
        begin: FractionalOffset(0.2,0.0),
        end: FractionalOffset(1.0, 0.6),
        stops: [0.0,0.6],
        tileMode: TileMode.clamp, 
        )
     ),
    child: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: "Balsamiq",
        fontWeight: FontWeight.bold,
      ),
    ),
    alignment: Alignment(-0.9, -0.6),
  );

  return gradient_rectangle;
  }
}