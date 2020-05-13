import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
   
  ReviewList();

  @override
  Widget build(BuildContext context) {
    
      final review_list = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/JADC.jpg", "Jorge Andrés", "1 review 0 photo", 4, "Such an amazing spot"),
        new Review("assets/img/SCFO.jpg", "Catalina F", "3 review 2 photo", 5, "There is a lake near to the bridge that is absolutely gorgeous"),
        new Review("assets/img/GUY.jpg", "That Guy", "2 review 4 photo", 3, "Don´t go if you don´t swim, it´s deep."),
      ],
    );

    return review_list;
  
  
  }
}