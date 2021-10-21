import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parcial32543982016/ejercicios/ejercicio3.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Parcial3());
}

class Parcial3 extends StatefulWidget {
  Parcial3({Key? key}) : super(key: key);

  @override
  _parcial3State createState() => _parcial3State();
}

class _parcial3State extends State<Parcial3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      title: "Parcial 3",
      home: ejercicio3(),
    );
  }
}
