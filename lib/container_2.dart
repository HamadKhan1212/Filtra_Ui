import 'package:flutter/material.dart';

class container_image extends StatelessWidget {
  const container_image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height:150,
          width:100,
          color:  Color(0xffF4D2CD),
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
    );
  }
}
