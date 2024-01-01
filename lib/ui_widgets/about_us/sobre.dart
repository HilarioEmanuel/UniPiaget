//import 'package:cki/project/layers/core/configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:unipiaget/ui_widgets/menu/menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
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





