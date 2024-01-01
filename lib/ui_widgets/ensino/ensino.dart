import 'package:flutter/material.dart';
class Ensino extends StatefulWidget {
  const Ensino({super.key});

  @override
  State<Ensino> createState() => _EnsinoState();
}

class _EnsinoState extends State<Ensino> {
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
