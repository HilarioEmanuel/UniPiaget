import 'package:flutter/material.dart';
class Patrono extends StatefulWidget {
  const Patrono({super.key});

  @override
  State<Patrono> createState() => _PatronoState();
}

class _PatronoState extends State<Patrono> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Universidade Jean Piaget",style: TextStyle(
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
  }
}
