import 'package:flitraa/container_2.dart';
import 'package:flutter/material.dart';

class Image_Selection extends StatefulWidget {
  const Image_Selection({Key? key}) : super(key: key);

  @override
  State<Image_Selection> createState() => _Image_SelectionState();
}

class _Image_SelectionState extends State<Image_Selection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            SizedBox(height: 40,),
            Text('Add some picture',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 20,),
            Text('Add at least 6 picture of you.',style: TextStyle(fontSize:18,fontWeight: FontWeight.w500),),
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                container_image(),
                container_image(),
                container_image(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                container_image(),
                container_image(),
                container_image(),
              ],
            ),
            SizedBox(
              height:150,
            ),
            InkWell(
              onTap:(){
                setState(() {
                  // Navigator.push(context,MaterialPageRoute(builder:(context){
                  //   return NextPage();
                  // }));
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        colors: [Color(0xffFF8AC2), Color(0xffDB60DC)])),
                height: 55,
                width: 150,
                child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    )),
              ),
            )

          ],
        ),
      ),
    );
  }
}
