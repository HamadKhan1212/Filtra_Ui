import 'package:flutter/material.dart';

import 'next_Page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF4D2CD),
        body: Column(
          children: [
            Image(
              image: AssetImage('images/Filtra_front_image.jpg'),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Filtra',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w400, fontSize: 30),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Welcome to filtra, a place to find the \nlove of live ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                  letterSpacing: 0.5),
            ),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap:(){
                setState(() {
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return NextPage();
                  }));
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
                  'Set up Profile',
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
