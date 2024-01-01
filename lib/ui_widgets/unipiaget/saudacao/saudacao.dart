import 'package:flutter/material.dart';
class Saudacoes extends StatelessWidget {
  const Saudacoes({super.key });

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
            text: 'Saudação do Magnífico Reitor',
          ),
                    Paragraph(
              title: 'Por Samuel Carlos Victorino\n\n',
              text:
              'É com bastante alegria e sentido de elevada responsabilidade que me dirijo à comunidade académica da UniPiaget, cumprimentando todos e todas calorosamente.'
          ),

          Paragraph(
              title: '',
              text:
              'Tomei posse como Reitor da UniPiaget no dia 07 de Março do corrente ano, 2019, e propus-me trabalhar, arduamente, para realizar os grandes objectivos da Instituição. Para esta árdua, mas nobre, tarefa conto com o apoio de toda a comunidade académica (Docentes, Estudantes, trabalhadores administrativos) dos colegas do colégio Reitoral (os vice Reitores) bem como dos Decanos, Vice-decanos, Coordenadores de curso e do apoio e suporte da AIPA, entidade promotora.'
          ),

          Paragraph(
              title: '',
              text:
              'O grande objectivo de desenvolvimento da UniPiaget resume-se em garantir uma formação de elevada qualidade para os nossos estudantes por via da articulação das três dimensões basilares da missão de uma Instituição de Ensino Superior, isto é, o Ensino, a Investigação Científica e a Extensão Universitária.' ),
          Paragraph(
            title: '',
            text:
            'Já que todos somos capazes de participar na construção de uma sociedade educada e informada, surge, aqui, mais uma oportunidade para demonstrarmos que o conhecimento de cada indivíduo vale para alguma coisa. Assim, o Site conta com o empenho de vários profissionais, filhos da UniPiaget e colaboradores, com a finalidade de dignificar e honrar a missão pela qual a instituição foi criada.'
          ),
          Paragraph(
            title: '',
            text:
            'Bem-haja, a todos.\n\n',
          ),
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
              style: TextStyle(fontWeight: FontWeight.bold),
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
