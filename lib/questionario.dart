import 'package:flutter/material.dart';
import 'package:projecto_perguntas/questao.dart';
import 'package:projecto_perguntas/respostaList.dart';

class QuestionarioWidget extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  QuestionarioWidget(
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quandoResponder,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestaoWidget(perguntas[perguntaSelecionada]['texto']!),
        RespostaListWidget(
            perguntas, 'respostas', perguntaSelecionada, quandoResponder)
      ],
    );
  }
}
