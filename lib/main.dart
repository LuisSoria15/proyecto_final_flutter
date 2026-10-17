import 'package:flutter/material.dart';
import 'package:ptoyecto_final_flutter/screens/main_screen.dart';


void main(){
  runApp(MiApp());
}


class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Foundit!",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: 'Nunito'),
      home: const MainScreen(),
    );
  }
}

