import 'package:flutter/material.dart';
class Missao extends StatefulWidget {
  const Missao({super.key});

  @override
  State<Missao> createState() => _MissaoState();
}

class _MissaoState extends State<Missao> {
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Subtitle(

            text: 'Missão, Visão e Valores',

          ),
          Paragraph(
              title: 'Conheça a UniPiaget\n\n',
              text:
              'A UniPiaget tem como missão a aposta na criação e promoção do desenvolvimento do homem, na difusão da cultura, do saber, da ciência e da tecnologia e que, através da articulação do estudo, da docência e da investigação científica, se integre na vida da sociedade angolana, privilegiando a criatividade, a inovação e a responsabilidade.\n\n'
              'Congrega valores edificados na educação, na ciência, na formação técnico-profissional, na harmonia social e nos valores ligados à solidariedade social. A sua visão é contribuir para o desenvolvimento humano e social, através da criação e consolidação de Unidades que implementam projectos de educação, de investigação e de intervenção comunitária, assentes na liberdade científica, pedagógica e criativa, na proximidade, nos valores humanos fundamentais e no trabalho em rede. Assim, a sua visão está focada no homem e para o homem.'),

          Paragraph(
              title: '',

              text:'A missão, os valores e a visão desta casa de saber encontram o seu fundamento nos postulados do seu patrono, Jean Piaget, que defendia os métodos que encorajem o homem a desenvolver as suas habilidades. Para Piaget, o interesse naquilo que se faz é um ingrediente para se atingirem maiores patamares'
                 ),

          buildBoldParagraph('Quando alguém se interessa pelo que faz, é capaz de empreender esforços até ao limite da sua resistência  (Jean Piaget, 1896-1980)'

          ),
          Paragraph(
              title: '',
              text:
              'Para o pedagogo suíço, a tábua rasa não existe; todo o ser humano é capaz de construir um conhecimento e uma habilidade, o que nos leva a considerar as seguintes visões:'),
          Paragraph(
              title: '',
              text:'1. Mais que simples teorias psicanalíticas, o cerne da visão de Jean Piaget centra-se no reconhecimento das capacidades que cada ser humano possui para transformar a humanidade num lugar bom para viver;'),

          Paragraph(
              title: '',
              text:'2. Quem não é capaz de trabalhar em equipa, não é capaz de produzir bons frutos para o bem da colectividade; aquele que não produz - o preguiçoso, cria dois suicídios: a si mesmo e à instituição em que estiver vinculado.' ),
          Paragraph(
              title: '',
              text:'Portanto, a comunidade académica piagetiana é convidada a produzir e a criar valores que edifiquem e perpetuem o legado daquele que deu o nome à instituição.'),
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

Widget buildParagraph(String text) {

  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Text(text),
    

  );
}

Widget buildBoldParagraph(String text) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: RichText(

      text: TextSpan(
        text: text,
        style: const TextStyle(fontWeight: FontWeight.w900),

      ),
    ),
  );
}

