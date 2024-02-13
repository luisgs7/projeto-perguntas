import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
            Questao(
              perguntas[_perguntaSelecionada],
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text(
                'Resposta 1',
              ),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text(
                'Resposta 2',
              ),
            ),
            ElevatedButton(
              onPressed: _responder,
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
