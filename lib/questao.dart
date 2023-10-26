import 'package:flutter/material.dart';

class QuestaoWidget extends StatelessWidget {
  final Object text;

  QuestaoWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.text.toString(),
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}
