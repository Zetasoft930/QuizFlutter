import 'package:flutter/material.dart';
import 'package:projecto_perguntas/resposta.dart';

class RespostaListWidget extends StatelessWidget {
  List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final String keyValue;
  final void Function(int) quandoResponder;

  RespostaListWidget(
    @required this.perguntas,
    @required this.keyValue,
    @required this.perguntaSelecionada,
    @required this.quandoResponder,
  );

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        perguntas[perguntaSelecionada].cast()[keyValue];

    List<RespostaWidget> widgets = respostas
        .map((resp) => RespostaWidget(resp['texto']!,
            () => quandoResponder(int.parse(resp['pontuacao'].toString()))))
        .toList();

    return Container(
      child: Center(
        child: Column(children: widgets),
      ),
    );
  }
}
