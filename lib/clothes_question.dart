import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  String _questionContent;
  ClothesQuestion(this._questionContent, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(18),
      child: Text(
        _questionContent,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 26,
          color: Colors.blue,
        ),
      ),
    );
  }
}
