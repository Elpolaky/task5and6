import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Menu',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.teal[900],
                Colors.teal[700],
                Colors.teal[300],
                Colors.teal[200],
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45.0),
                ),
                margin: EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/1.jpg',width: 230,height: 240,),
                        ],
                      ),
                      DropdownButton(items: [DropdownMenuItem(
                        child:Text('1'),
                      onTap: (){
                          setState(() {

                          });
                      },
                      ),
                      ],)
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
