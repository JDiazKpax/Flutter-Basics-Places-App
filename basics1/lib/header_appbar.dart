import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'gradient.dart';

class HeaderAppBar extends StatelessWidget{
   
  HeaderAppBar();

  @override
  Widget build(BuildContext context) {
    final myHeader = Stack(
      children: <Widget>[
        GradientBack("Lugares a visitar"),
        CardImageList(),
      ],
    );

    return myHeader;
  }
}