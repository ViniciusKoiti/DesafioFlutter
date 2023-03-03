import 'package:flutter/material.dart';

class CommentField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Text("Sobre mim"),
        ExpansionTile(
          title: Text("Oi princesa"),
        )
      ],
    );
  }


}