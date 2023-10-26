import 'package:flutter/material.dart';

class RespostaWidget extends StatelessWidget {
  final Object text;
  final void Function() onClick;

  RespostaWidget(this.text, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onClick,
        child: Text(text.toString()),
      ),
      width: double.infinity,
    );
  }
}
