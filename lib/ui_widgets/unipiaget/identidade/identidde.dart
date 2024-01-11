import 'package:flutter/material.dart';
import 'package:unipiaget/ui_widgets/unipiaget/identidade/patrono.dart';
import 'package:unipiaget/ui_widgets/unipiaget/saudacao/saudacao.dart';

import 'historial.dart';
import 'missao.dart';


class Identidde extends StatelessWidget {
  const Identidde({super.key});

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
      body: Column(
        children: <Widget>[
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Historial()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Historial',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Missao()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Missão, Visão e Valores',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Patrono()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Patrono',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),

        ],
      ),
    );
  }
}
