import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const ResultadoWidget(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens';
    } else if (pontuacao < 12) {
      return 'Voce é bom';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    print(fraseResultado);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text('Novo Jogo'),
        )
      ],
    );
  }
}
