import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
   
  //String pathImage = "assets/img/beach.jpg";
  //CardImageList(this.pathImage);
  CardImageList();

  @override
  Widget build(BuildContext context) {
    
    final cardList = Container(
        height: 350.0,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,         //el scroll va a ser horizontal
          children: <Widget>[
            CardImage("assets/img/beach.jpg"),
            CardImage("assets/img/beach_palm.jpg"),
            CardImage("assets/img/mountain_stars.jpg"),
            CardImage("assets/img/mountain.jpg"),
            CardImage("assets/img/river.jpg"),
            CardImage("assets/img/sunset.jpg"),
          ],
        ),
    
    );

    return cardList;
  }
}