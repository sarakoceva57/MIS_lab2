import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  String answerText;
  final VoidCallback tapped;
  ClothesAnswer(this.tapped, this.answerText, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        answerText,
      ),
      onPressed: tapped,
      style: ElevatedButton.styleFrom(
          onPrimary: Colors.red,
          primary: Colors.green,
          textStyle: TextStyle(
            fontSize: 22,
          )),
    );
  }
}
