import 'package:flutter/material.dart';


class PublicarNotasScreen extends StatefulWidget {
  const PublicarNotasScreen({super.key});

  @override
  _PublicarNotasScreenState createState() => _PublicarNotasScreenState();
}

class _PublicarNotasScreenState extends State<PublicarNotasScreen> {
  TextEditingController nota1Controller = TextEditingController();
  TextEditingController nota2Controller = TextEditingController();
  TextEditingController nota3Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Publicar Notas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: nota1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nota 1'),
            ),
            TextField(
              controller: nota2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nota 2'),
            ),
            TextField(
              controller: nota3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nota 3'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _publicarNotas();
              },
              child: Text('Publicar Notas'),
            ),
          ],
        ),
      ),
    );
  }

  void _publicarNotas() {
    double nota1 = double.tryParse(nota1Controller.text) ?? 0;
    double nota2 = double.tryParse(nota2Controller.text) ?? 0;
    double nota3 = double.tryParse(nota3Controller.text) ?? 0;

    double media = (nota1 + nota2 + nota3) / 3;

    // Aqui você deve salvar as notas e a média no banco de dados ou em algum local apropriado.
    // Pode ser necessário um sistema de autenticação e gestão de usuários.

    // Por enquanto, apenas exibiremos um snackbar com a média calculada.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Notas publicadas. Média: ${media.toStringAsFixed(2)}'),
      ),
    );
  }
}
