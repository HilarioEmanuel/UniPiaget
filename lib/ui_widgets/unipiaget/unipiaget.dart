import 'package:flutter/material.dart';
import 'package:unipiaget/ui_widgets/unipiaget/parcerias.dart';
import 'package:unipiaget/ui_widgets/unipiaget/reitoria.dart';

import 'campus.dart';
import 'reitoria.dart';
import 'identidde.dart';

class Unipiaget extends StatelessWidget {
  const Unipiaget({super.key});

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
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Reitor()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Reitoria',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Ident()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Identidade e Missão',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Campus()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Campus UniPiaget Viana',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),
          ListTile(
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Parcerias()));
            },
            //leading: const Icon(Icons.call,color: Colors.black,),
            trailing: const Icon(Icons.arrow_right,color: Colors.black,),
            title: const Text('Parcerias',
              style: TextStyle(
                  color: Colors.black),
            ),
          ),

        ],
      ),


    );
}
}

