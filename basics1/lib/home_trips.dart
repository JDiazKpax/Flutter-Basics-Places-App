import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'reviewList.dart';

class HomeTrips extends StatelessWidget{
  String description_Text = "es un país de África occidental. Limita al norte con Guinea, al sureste con Liberia y al suroeste con el océano Atlántico. Su nombre es una adaptación de la versión en portugués: Serra Leoa, cuyo significado era Sierra/Montaña Leona. Durante el siglo XVIII fue un importante centro de tráfico de esclavos. Al igual que su país vecino Liberia,[cita requerida] Sierra Leona fue fundada principalmente para establecer a esclavos liberados. Para eso, «[e]l líder abolicionista Granville Sharp compró a los jefes de distintas etnias un territorio de 250 km2 (por 60 libras esterlinas) e instaló en él una sociedad de agricultores, organizada sobre bases democráticas y pronto transformada, en una empresa colonizadora británica. En los siguientes 50 años, desembarcaron 70 mil esclavos en Freetown a los que se sumó la migración de gentes indígenas desde el interior.»5​ Los esclavos liberados fundaron la capital del país, Freetown, en 1791. En 1808, Freetown pasó a ser una colonia de la Corona británica, pasando el resto del país bajo el protectorado británico en 1896.";
  @override
  Widget build(BuildContext context) {
    
    final home = Stack(                 //Al hacer Scroll, todo el contenido debe pasar por debajo del rectangulo azul, por ello se usa stack
          children: <Widget>[
            ListView(               //Lista de Widgets scrollables
              children: <Widget>[
                DescriptionPlace("Sierra Leona",3,description_Text),
                ReviewList(),
              ]
            ),
           // GradientBack("Lugares a Visitar"),         //está al final de stack porque es el que va a quedar más encima al hacer scroll
            HeaderAppBar(),
          ],
        );
    
    return home;
  }

}