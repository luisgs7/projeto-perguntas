import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta Respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              perguntas.elementAt(0),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text(
                'Resposta 1',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Resposta 2 foi selecionada');
              },
              child: Text(
                'Resposta 2',
              ),
            ),
            ElevatedButton(
              onPressed: () => print('Resposta 3 selecionada'),
              child: Text(
                'Resposta 3',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
