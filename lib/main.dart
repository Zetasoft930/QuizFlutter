import 'package:flutter/material.dart';
import 'package:projecto_perguntas/questionario.dart';
import 'package:projecto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  int _pontuacaoTotal = 0;

  final List<Map<String, Object>> perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1}
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 7},
        {'texto': 'Cão', 'pontuacao': 8},
        {'texto': 'Elefante', 'pontuacao': 2},
      ]
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'pontuacao': 5},
        {'texto': 'João', 'pontuacao': 2},
        {'texto': 'DEVDOJO', 'pontuacao': 5},
      ]
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Perguntas')),
        ),
        body: temPerguntaSelecionada
            ? QuestionarioWidget(perguntas, _perguntaSelecionada, _responder)
            : ResultadoWidget(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada)
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
