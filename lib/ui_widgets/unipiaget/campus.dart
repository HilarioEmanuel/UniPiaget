import 'package:flutter/material.dart';
import 'package:unipiaget/ui_widgets/unipiaget/identidade/patrono.dart';
import 'package:unipiaget/ui_widgets/unipiaget/saudacao/saudacao.dart';

import 'instalacoes/centros.dart';
import 'instalacoes/instalacoes.dart';




class Campus extends StatelessWidget {
  const Campus({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Instalacoes()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Instalações',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Centros()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Centros e Laboratórios',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),


        ],
      ),
    );
  }
}


