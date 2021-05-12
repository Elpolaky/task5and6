import 'package:dsc_task5and6/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Log_in extends StatefulWidget {
  @override
  _Log_inState createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Enter to a beautiful world',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 90, horizontal: 34),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          cursorColor: Colors.teal,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFe7fffc),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.teal[900],
                            ),
                            hintText: 'E-mail',
                            hintStyle: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(13),
                                ),
                                borderSide: BorderSide.none),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        TextField(
                          obscureText: true,
                          cursorColor: Colors.teal,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFe7fffc),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.teal[900],
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(13),
                                ),
                                borderSide: BorderSide.none),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Forget your password ?',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFFe7fffc)),
                            )
                          ],
                        ),
                        SizedBox(height: 70,),
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: RaisedButton(onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Menu();
                                },
                              ),
                            );
                          },
                            child: Text('Login',style: TextStyle(color: Color(0xFFe7fffc)),),
                            color: Colors.black54,

                          ),
                        )
                      ],
                    ),
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
