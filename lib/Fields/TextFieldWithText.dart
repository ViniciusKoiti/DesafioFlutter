import 'package:flutter/material.dart';

class TextFieldWithText extends StatelessWidget{
  const TextFieldWithText({required this.title});
  
  final String title;
  

  @override
  Widget build(BuildContext context) {
    return 

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
        title,textAlign: TextAlign.left,),
      TextField(
        textAlign: TextAlign.left,
        decoration: 
        InputDecoration(
          labelText: title,
        border:OutlineInputBorder(),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        
        ),
        
      )
    ],
    );
  }

}