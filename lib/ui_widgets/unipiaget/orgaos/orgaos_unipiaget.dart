import 'package:flutter/material.dart';

class OrgUnipiaget extends StatefulWidget {
  const OrgUnipiaget({super.key});

  @override
  State<OrgUnipiaget> createState() => _OrgUnipiagetState();
}

class _OrgUnipiagetState extends State<OrgUnipiaget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Universidade Jean Piaget",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
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

      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.amber[600],
              margin: const EdgeInsets.fromLTRB(190.0, 10.0, 0.0, 10.0),
              width: 160.0,
              height: 400.0,


            ),
      /*Container(

        margin: const EdgeInsets.fromLTRB(190.0, 25.0, 0.0, 10.0),
        child: Text('Vida do reitor',),

        color: Colors.amber[600],
        //alignment: Alignment.centerRight,
        padding: EdgeInsets.all(10.0),
        width: 160.0,
        height: 400.0,


        ),*/
     Container(
       color: Colors.cyan,
       child: Row(


       ),
     ),

          ],
        ),
      ),


    );
  }
}
/*
 );

    ),



/*
       body: Column(
        children: <Widget>[

             SafeArea(
               child: Container(
                margin: const EdgeInsets.fromLTRB(190.0, 25.0, 0.0, 10.0),
                child: Text('Vida do reitor',),

                color: Colors.amber[600],
                //alignment: Alignment.centerRight,
                padding: EdgeInsets.all(10.0),
                width: 160.0,
                height: 400.0,
                 Text(
                   'Parágrafo 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                   style: TextStyle(fontSize: 16.0),
                 ),
                 SizedBox(height: 8.0), // Adiciona um espaço entre os parágrafos
                 Text(
                   'Parágrafo 2: Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                   style: TextStyle(fontSize: 16.0),
                 ),
                 SizedBox(height: 8.0), // Adiciona um espaço entre os parágrafos
                 Text(
                   'Parágrafo 3: Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                   style: TextStyle(fontSize: 16.0),
                 ),
                           ),
             ),

         */
 */