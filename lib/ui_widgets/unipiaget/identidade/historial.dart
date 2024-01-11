import 'package:flutter/material.dart';
class Historial extends StatefulWidget {
  const Historial({super.key});

  @override
  State<Historial> createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

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
    body: Padding(
    padding: EdgeInsets.all(16.0),
    child: ParagraphsWidget(),

    ),

    );
  }
}

class ParagraphsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Subtitle(

            text: 'Historial',

          ),
          Paragraph(
              title: 'Conheça a UniPiaget\n\n',
              text:
              'A Universidade Jean Piaget de Angola nasceu em 1999 com a criação da Associação Instituto Piaget de Angola – AIPA, conforme o registo do Diário da República, n.º 14, Série III de 1 de Abril de 1999. A AIPA é a entidade promotora da Universidade Jean Piaget de Angola, também denominada por UniPiaget de Angola, que se legitimou sob o Decreto Executivo n.º 44-A/01, de 6 de Julho.'
          ),

          Paragraph(
              title: '',
              text:
              'A UniPiaget é uma instituição de ensino superior privada, de carácter associativo que, visando dar cumprimento às normas gerais reguladoras do Subsistema do Ensino Superior, tem como missão promover a criação, a transmissão e difusão da cultura, do saber, da ciência e da tecnologia, através da articulação do estudo, da docência e da investigação científica. Ainda neste pressuposto, a UniPiaget apresenta como objectivos:'
          ),

          Paragraph(
              title: '',
              text:
              'A formação de estudantes nos aspectos social, humano, cultural, científico e técnico, preparando-os para o exercício de actividades profissionais altamente qualificadas;'
              'A investigação e o desenvolvimento científico;   A prestação de serviços à comunidade numa perspectiva de valorização recíproca e do desenvolvimento comunitário e nacional;'
              'A cooperação e o intercâmbio culturais, científicos e técnicos, com instituições nacionais, estrangeiras e internacionais que visem objectivos semelhantes;'
              'Actualmente, a UniPiaget de Angola é uma instituição de ensino superior privado que ministra 17 cursos de graduação e 5 de pós graduação.'
          ''),

          // Adicione mais parágrafos conforme necessário
        ],
      ),
    );
  }
}

class Paragraph extends StatelessWidget {
  final String title;
  final String text;

  Paragraph({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: [
            TextSpan(
              text: '$title ',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            TextSpan(
              text: text,
            ),
          ],
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  final String text;

  Subtitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black, // Cor do subtítulo
        ),
      ),
    );
  }
}
