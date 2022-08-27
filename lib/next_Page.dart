import 'package:flitraa/container.dart';
import 'package:flutter/material.dart';

import 'Selection_Image.dart';
 class NextPage extends StatefulWidget {
   const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         body: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                 height: 70,
               ),
               TextField_Container(Hint: 'Name',Width: 170,),
               TextField_Container(Hint: 'Date of Birth',Width: 210,),
               TextField_Container(Hint: 'City',Width: 210,),
               TextField_Container(Hint: 'Gender',Width: 220,),
               TextField_Container(Hint: 'Occupation',Width: 170,),
               SizedBox(
                 height: 260,
               ),
               InkWell(
                 onTap:(){
                   setState(() {
                     Navigator.push(context,MaterialPageRoute(builder:(context){
                       return Image_Selection();
                     }));
                   });
                 },
                 child: Center(
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
                 ),
               )

             ],
           ),
         )

       ),
     );
   }
}
 