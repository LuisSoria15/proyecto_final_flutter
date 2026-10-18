import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      extendBodyBehindAppBar: false,
      appBar: miAppBar(), //llama a la funcion miAppBar para crear el appbar

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 25),
            child: Card.outlined(
              elevation: 20,
              color: Colors.indigo.shade200,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "¿Qué guardarás hoy?",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(children: [
              Icon(Icons.punch_clock, color: Colors.white,),
              SizedBox(width: 10,),
              Text("Últimos objetos", style: TextStyle(fontSize: 20, color: Colors.white),)
            ],),
          )
        ],
      ),
    );
  }

  ///appbar de la aplicación con tituo, y 3 iconos
  AppBar miAppBar() {
    return AppBar(
      centerTitle: true, //Titulo centrado en el appbar
      backgroundColor: Colors.transparent,
      title: Container(
        //container alrededor del titulo para darle un fondo y sombra
        width: 200,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(72, 255, 255, 255),
          boxShadow: [
            //da la ilusion de profundidad al titulo
            BoxShadow(
              color: const Color.fromARGB(78, 63, 81, 181),
              offset: Offset(-2, 10),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(
            20.0,
          ), //borde redondeado del container
        ),
        child: Text(
          "Found it!",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      leading: Padding(
        //icono de usuario en el appbar
        padding: const EdgeInsets.only(left: 8.0),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: const Color.fromARGB(49, 255, 255, 255),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person, size: 30, color: Colors.white),
          ),
        ),
      ),
      leadingWidth: 60.0,
      actions: [
        //iconos de notificaciones y configuracion en el appbar
        Padding(
          padding: EdgeInsets.only(right: 2.0),
          child: IconButton(
            onPressed: () {}, //sera interactivo en el futuro para mostrar notificaciones
            icon: const Icon(
              Icons.notifications,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ),
        //SizedBox(width: 20),
        Padding(
          padding: EdgeInsets.only(right: 2.0),
          child: IconButton(
            onPressed: () {}, //sera interactivo en el futuro para mostrar configuraciones
            icon: const Icon(Icons.settings, size: 30.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
