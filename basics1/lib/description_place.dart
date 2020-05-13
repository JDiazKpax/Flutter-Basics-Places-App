import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget{
 
 String titleText;
 int starsNumber;
 String descriptionText;
     
 DescriptionPlace(this.titleText, this.starsNumber, this.descriptionText);
 
  @override
  Widget build(BuildContext context) {
    
    final star = Container(          //crea el container de las estrellas
      margin: EdgeInsets.only(
        top:323.0,
        right:3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      )
    );

    final star_empty =Container(          //crea el container de las estrellas vacías
      margin: EdgeInsets.only(
        top:323.0,
        right:3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      )
    );
    
    final star_half =Container(          //crea el container de las estrellas vacías
      margin: EdgeInsets.only(
        top:323.0,
        right:3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      )
    );

    final title_stars = Row(            //Fila que contiene el título y las estrellas
      children: <Widget>[              //un children por cada fila
        Container(                     //un container por toda la fila
          margin: EdgeInsets.only(     //donde se ubica en la pantalla
            top:320.0,
            left: 20.0,
            right: 20.0, 
            ),
          child: Text(                 //el titulo
            titleText,
            style: TextStyle(
              fontFamily: "Balsamiq",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              ),
            textAlign: TextAlign.left,   //cómo se alinea dentro del container
          ),
        ),
        Row(                             //Fila que contiene las estrellas
          children: <Widget>[           //un children por cada fila
             //int i=0
             //for(i=0;i++;i<starsNumber)
             //{
               star,
               star,
               star,                                   //imprimimos la variable star
               star_half,
               star_empty,
             //}
                            
             
            ],
          ),
        ],
    );
    
    final text_description = Container(   //Container para el texto de descripción
           margin: EdgeInsets.only(
             top:20.0,
             right:20.0,
             left:20.0,
           ),
           child: Text(
            descriptionText,
            style: TextStyle(
              fontFamily: "Balsamiq",
              fontSize: 16.0,
              ),
            textAlign: TextAlign.left,
           ), 
        );

    final title_stars_desc = Container(    //Container para unir el titulo y estrellas + texto de descripción
      child:Column(                        //en forma de columna
      crossAxisAlignment: CrossAxisAlignment.start,     //pone todo lo que haya dentro de la columna a la izquierda, por default en el centro
      children: <Widget>[
          title_stars,
          text_description,
          ButtonPurple("Navega"),
        ],
     )
    );
    

    return title_stars_desc;

    //throw UnimplementedError();
  }


}