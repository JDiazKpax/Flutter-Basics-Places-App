import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget{
   
  String pathImage = "assets/img/beach.jpg";
  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    
    final card = Container(
        height: 350.0,
        width: 250.0,
        margin: EdgeInsets.only(
          top: 80.0,
          left: 20.0,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,                //que quede en todo el container
            image: AssetImage(pathImage), 
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),      //borde redondeado
          shape: BoxShape.rectangle,                                  //la forma del containe debe ser rectangular
          boxShadow: <BoxShadow>[                                     //crea la sombra del container
            BoxShadow(
              color: Colors.black,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0)
            ) 
          ]
        ),
    );

    final card_fav = Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(),
      ],
    );

    return card_fav;
  }
}