import 'package:flutter/material.dart';

class TextField_Container extends StatelessWidget {
  String Hint;
  double Width;

  TextField_Container({Key? key,required this.Hint,required this.Width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0,left: 50),
      child: Container(
        height: 45,
        width:Width,
        decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: TextField(
            decoration: InputDecoration(hintText:Hint,border:InputBorder.none),
          ),
        ),

      ),
    );
  }
}
