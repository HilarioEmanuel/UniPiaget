import 'package:flutter/material.dart';
class Cursos extends StatefulWidget {
  const Cursos({super.key});

  @override
  State<Cursos> createState() => _CursosState();
}

class _CursosState extends State<Cursos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Universidade Jean Piaget", style: TextStyle(
            color: Colors.black,
            fontSize: 16
        ),),
        elevation: 0,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Image.asset("assets/images/logo.png"),
            ),

          )
        ],
      ),

    );

  }}