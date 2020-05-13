import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget{
  String button_text;
  ButtonPurple(this.button_text);

  @override
  Widget build(BuildContext context) {
  
    final mybutton = InkWell(                 //Para crear un botón personalizado
      onTap: () {                             //Comportamiento al click
        Scaffold.of(context).showSnackBar(
          SnackBar(                           //SnackBar es una pequeña barra inferior en negro
            content: Text("Navegando"),
          )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),    //Borde redondo
          gradient: LinearGradient(                     //gradiente en el color interior
            colors: [
              Color(0xFF4268D3),                        //color inicial y color final
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(0.2, 0.0),           //la forma en que se mezclan los dos colores
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,                   
          )
        ),
        child: Center(
          child: Text(
            button_text,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Balsamiq",
              color: Colors.white,
            )
          )
        ),
      )
    );

  return mybutton;
  }
}