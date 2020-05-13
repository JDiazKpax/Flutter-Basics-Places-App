import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    
    return _FloatingActionButtonGreen();

  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool _pressed = false;
  
  void onPressedFav(){
    setState(() {
      _pressed = !this._pressed;
    });

    Scaffold.of(context).showSnackBar(
      SnackBar(
          content: Text("Agregado a tus favoritos")
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    
    final myButton = FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,     //metodo creado arriba
      child: Icon(
        _pressed == true ? Icons.favorite : Icons.favorite_border 
      ),
    );

    return myButton;
  }

}