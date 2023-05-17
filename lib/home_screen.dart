import 'package:flutter/material.dart';
import 'dart:math';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String image1 = 'assets/images/dice1.png';

//String? image;(it means it can be null)
  String image2 = 'assets/images/dice2.png';

  int leftdicenumber = 4;
  int rightdicenumber = 5;
  void changedice(String side)
  {
    Random random = Random();
    int randomNumberLeft = random.nextInt(6)+1;
    int randomNumberRight = random.nextInt(6)+1;
    setState(() {
      if(side == 'left') {
        leftdicenumber=randomNumberLeft;
      }
      else {
        rightdicenumber = randomNumberRight;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar:
      AppBar(backgroundColor: Colors.red[200], title: Text("Dice Roller")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      changedice("left");
                    },
                    child: Image.asset(
                      'assets/dice$leftdicenumber.png',
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      changedice("right");
                    },
                    child: Image.asset(
                      'assets/dice$rightdicenumber.png',
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
