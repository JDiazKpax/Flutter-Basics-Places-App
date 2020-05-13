import 'package:flutter/material.dart';

class Review extends StatelessWidget{
 
 String pathImage;
 String reviewerName;
 String reviewerInfo;
 int reviewerStars;
 String reviewerComment;

 Review(this.pathImage, this.reviewerName, this.reviewerInfo, this.reviewerStars, this. reviewerComment);                      //constructor

 @override
 Widget build(BuildContext context) {
 
  final imagen = Container(
    margin: EdgeInsets.only(
      top:20.0,
      left:20.0,
    ),
    width: 80.0,
    height: 80.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(pathImage),
      )
    )
  );

  final user_name = Container(
    margin: EdgeInsets.only(
      left: 20.0,
    ),
    child: Text(
      reviewerName,
      style: TextStyle(
        fontFamily: "Balsamiq",
        fontSize: 17.0,
        fontWeight: FontWeight.w900,
        ),
      textAlign: TextAlign.left,   //cómo se alinea dentro del container
    ),
  );

  final star = Container(          //crea el container de las estrellas
      margin: EdgeInsets.only(
        //top:323.0,
        right:3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      )
    );

    final star_empty =Container(          //crea el container de las estrellas vacías
      margin: EdgeInsets.only(
        //top:323.0,
        right:3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      )
    );
    
    final star_half =Container(          //crea el container de las estrellas vacías
      margin: EdgeInsets.only(
        //top:323.0,
        right:3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      )
    );

  final user_info = Row(
    children: <Widget>[
      Container(
       margin: EdgeInsets.only(
         left: 20.0,
       ),
       child: Text(
         reviewerInfo,
         style: TextStyle(
            fontFamily: "Balsamiq",
            fontSize: 14.0,
            color: Color(0xFFa3a5a7),
         ),
         textAlign: TextAlign.left,   //cómo se alinea dentro del container
       ),
      ),
      Row(
        children: <Widget>[
           star,
           star,
           star,
           star,
           star_half, 
        ]
      ),
    ],
  );
  
  final user_comments = Container(
    margin: EdgeInsets.only(
      left: 20.0,
      right: 20.0,
    ),
    child: Text(
      reviewerComment,
      style: TextStyle(
        fontFamily: "Balsamiq",
        fontSize: 15.0,
        fontWeight: FontWeight.w900,
        ),
      textAlign: TextAlign.left,   //cómo se alinea dentro del container
    ),
  );

  final user_info_completed = Column(
    crossAxisAlignment: CrossAxisAlignment.start,         //todo el contenido de la columna se alinea a la izquierda
    children: <Widget>[
      user_name,
      user_info,
      user_comments,
    ]
  );
  

  final review_complete = Row(
    children: <Widget>[
      imagen,
      Expanded(child: user_info_completed),
    ]
  );
  
    return review_complete;
  }
  
}