import 'package:flutter/material.dart';

class ButtonConfirm extends StatelessWidget{
 

  @override
  Widget build(BuildContext context) {
    
    return FilledButton(onPressed: onPressed, child: 
      Text("Confirme")
    );
  }


  void onPressed() {
  }
}